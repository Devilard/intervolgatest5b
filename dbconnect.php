<?php
	

    function getConnection()
    {
    	$host = 'localhost';
     	$dbname = 'intervolga';
    	$user = 'test1';
    	$password = 'SW34k35!l';


    	$dbconnect = new PDO("mysql:host=$host; dbname=$dbname", $user, $password);

    	return $dbconnect;
    }

    function getCountryList()
    {

    	$db = getConnection();
    	$sql = "SELECT * FROM country";
    	$query =$db->query($sql);
    	$query->setFetchMode(PDO::FETCH_ASSOC);

    	$countryItem = array();

    	$i = 0;
    	while($countrs = $query->fetch())
    	{
       	 	$countryItem[$i]['country_name'] = $countrs['country_name'];
        	$countryItem[$i]['number'] = $i+1;
        	$i++;
    	}

    	return $countryItem;
    }

    function checkCountry($countryName)
    {

    	$db = getConnection();
    	$sql = "SELECT * FROM country WHERE country_name = ?";

		$query = $db->prepare($sql);
		$query->execute(array($countryName));


		$result = $query->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	function addNewCountry($newCountryName)
	{
		$db = getConnection();

		$resultBD = checkCountry($newCountryName);

		if(!$resultBD)
		{
			$sql = "INSERT INTO country (id, country_name) VALUES (NULL, :cname )";
			$query = $db->prepare($sql);
			$query->bindParam(':cname', $newCountryName);
			$result = array();
			if($query->execute())
			{
				$result = 'Страна добавленна';
				return $result;
			}
			else
			{
				$result = 'Что-то пошло не так, обратитесь к администратору';
				return $result;
			}
		}
		else
		{
			$result = 'уже есть такая страна';
			
			return $result;
		}
	}
	
		
		

    	
?>