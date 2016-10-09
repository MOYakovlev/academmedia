<?php

include_once "inc/database_application_loader.class.php";
include_once "inc/file_application_loader.class.php";

$load_table = new TestJob\DatabaseApplicationLoader();
$app = null;

if (isset($_GET['app']))
{
    $app = $load_table->load($_GET['app']);
    $app = ["application_name" => $app[0]["app_name"],
            "country" => $app[0]["country"],
	    "city" => $app[0]["city"],
	    "app_id" => $app[0]["app_id"],
	    "events" => $app];
} else {
	$parser = new TestJob\FileApplicationLoader("application.json");	
	$app = $parser->app;
}

if (!isset($app, $app['application_name'], $app['country'], $app['city'], $app['app_id'])) 
{
    echo "Wrong input: can't load application";
    die();
}

$tables = $load_table->getTableNames();

echo '
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>'.$app['application_name'].', '.$app['country'].', '.$app['city'].', '.$app['app_id'].'</title>
        <link rel="stylesheet" href="./css/index.css">
    </head>
    <body>
        <input id="app_name" type="hidden" value="'.$app['application_name'].'">
        <input id="country" type="hidden" value="'.$app['country'].'">
        <input id="city" type="hidden" value="'.$app['city'].'">
        <input id="app_id" type="hidden" value="'.$app['app_id'].'">
        <div class="events-form">
            <select id="load_table" onchange="window.location = \'index.php?app=\'+this.options[this.selectedIndex].value;">
                <option disabled selected>Load table</option>';

foreach ($tables as $tablename) 
{
    echo '      <option value="'.$tablename[0].'">'.$tablename[0].'</option>';
}

echo '
            </select>
            <table id="table_id" class="events-table">
                <caption>'.$app['application_name'].', '.$app['country'].', '.$app['city'].', '.$app['app_id'].'</caption>
                <thead>
                    <tr>
                        <th>event</th>
                        <th>date</th>
                        <th>time_on</th>
                        <th>type</th>
                        <th>shuffle_color</th>
                    </tr>
                </thead>
                <tbody>
';

foreach ($app['events'] as $key => $event) 
{
    $name = strtolower($event['event']);

    $timestamp = $event['timestamp'];
    $date = date_create('@'.$timestamp, timezone_open('Asia/Novosibirsk'));
    $date = date_format($date, 'Y-m-d H:i');
    
    $time_on = $event['time_on'];
	
    $type = $event['type'];

    $style = 'background-color: '.$event['color'].'; ';
    if ($time_on > 0) $style .= "font-style: italic; ";
    if ($type > 0) $style .= "font-weight: bold; ";
    echo "
                    <tr id='tr_$key' style='$style'>
                        <td>$name</td>
                        <td value='$timestamp'>$date</td>
                        <td>$time_on</td>
                        <td>$type</td>
                        <td><input type='button' onclick='change_color(\"tr_$key\")' value='change color'/>
                    </tr>";				
}

echo 
               '</tbody>
            </table>
            <input id="save_button" type="button" value="Save">
        </div>
        <script src="./js/jquery-2.0.3.min.js"></script>
        <script type="text/javascript" src="./js/index.js"></script>
    </body>
</html>
';
?>
