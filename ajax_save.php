<?php

include_once "inc/database_application_loader.class.php";

$request = new TestJob\DatabaseApplicationLoader();
$request->save($_POST);

echo '{ "status" : "'.$request->status.'" }';
