$('#save_button').click(
    function () 
    {
        var app_name = document.getElementById('app_name').value;
	var country = document.getElementById('country').value;
	var city = document.getElementById('city').value;
	var app_id = document.getElementById('app_id').value;
	var i;
	var data = {
                     'application_name' : app_name,
		     'country' : country,
		     'city' : city,
		     'app_id' : app_id,		
		     'events' : {} 
                    };
	var events = document.getElementById('table_id').rows;
	for (i = 1; i < events.length; i++) {
	    data['events'][i] = { 
	                            'event' : events[i].cells[0].innerHTML,
			            'date' : events[i].cells[1].getAttribute("value"),
			            'time_on' : events[i].cells[2].innerHTML,
			            'type' : events[i].cells[3].innerHTML,
			            'color' : events[i].style.backgroundColor
		                };
	}
	$.post ("ajax_save.php", data, success, "json");
    }
);

$('#load_table').change(
    function() 
    {
	var data = { 'tablename' : this.value };
	$.post("ajax_load.php", data, success, "json");		
    }
);

function success(forecastData)
{
    if (forecastData["status"] == "success") 
    {
        alert("Table saved, reload page to see it in list");
    } else {
	alert(forecastData["status"]);
    }
}

function change_color(id) 
{
    var el = document.getElementById(id);
    el.style.backgroundColor = '#' + Math.floor(Math.random() * 16777215).toString(16);
}



