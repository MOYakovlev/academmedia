<?php

namespace TestJob;

class FileApplicationLoader
{
    public $app = null;

    public function __construct($filename)
    {
        $file = file_get_contents($filename);
	if ($file && ($this->app = json_decode($file, true)))
	{
	    foreach($this->app['events'] as $key => $event) 
            {
		$data = json_decode($event['data'], true);
		$this->app['events'][$key]['time_on'] = $data['time_on'];
		$this->app['events'][$key]['type'] = $data['type'];
		$this->app['events'][$key]['color'] = '';
	    }
	    $this->sort();
	}
    }

    private function cmpEvents($event_1, $event_2) 
    {
	return $event_1['time_on'] < $event_2['time_on'];
    }

    public function sort()
    {                       
	uasort($this->app['events'], 'self::cmpEvents');
    }

}
