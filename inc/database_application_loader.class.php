<?php

namespace TestJob;

class DatabaseApplicationLoader 
{
    private $DB_HOST = 'localhost';
    private $DB_NAME = 'academmedia';
    private $DB_USERNAME = 'academmedia';
    private $DB_PASSWORD = '1234';

    private $db_connection;
    public $status;

    public function __construct()
    {
        $this->db_connection = new \mysqli($this->DB_HOST, $this->DB_USERNAME, $this->DB_PASSWORD, $this->DB_NAME);
	if (!$this->db_connection) 
        {
	    die('Failed: ' . mysql_error());
	}
    }

    public function save($app)
    {
        $table_name = str_replace(' ', '_', $app['application_name']).'_'.time();
        $sql = 'CREATE TABLE '.$table_name.' (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	                                    event_name VARCHAR(30) NOT NULL, 
					    event_timestamp VARCHAR(20), 
					    time_on INT(10), 
					    event_type INT(10), 
					    color VARCHAR(20), 
					    country VARCHAR(8), 
					    city VARCHAR(32), 
					    app_id VARCHAR(64), 
					    app_name VARCHAR(128))';

        if ($this->db_connection->query($sql) === TRUE) 
        {
	    foreach ($app['events'] as $event) 
            {
	        $sql = 'INSERT INTO '.$table_name.' (event_name, event_timestamp, time_on, event_type, color, country, city, app_id, app_name) VALUES
							 ("'.$event['event'].'", "'
		        				    .$event['date'].'", '
							    .$event['time_on'].', '
							    .$event['type'].', "'
							    .$event['color'].'", "'
							    .$app['country'].'", "'
							    .$app['city'].'", "'
							    .$app['app_id'].'", "'
							    .$app['application_name'].'")';
		if (!$this->db_connection->query($sql)) 
                {
		    $this->status = "database error: can't insert into table";
		    return;
		}
	    }
	} else {
	    $this->status = "database error: can't create table";
	    return;
	}          
	$this->status = "success";      
    }

    public function load($table)
    {
	$sql = 'SELECT event_name as event, 
                        UNIX_TIMESTAMP(event_timestamp) as timestamp, 
                        time_on, 
                        event_type as type, 
                        color, 
                        country, 
                        city, 
                        app_id, 
                        app_name FROM '.$table.' ';
	if ($result = $this->db_connection->query($sql)) 
        {
	    return $result->fetch_all(MYSQLI_ASSOC);
	}
	return null;
    }

    public function getTableNames()
    {
	$sql = 'SHOW TABLES';
	return $this->db_connection->query($sql)->fetch_all();	
    }

    public function __destruct()
    {
	mysqli_close($this->db_connection);
    }
}
