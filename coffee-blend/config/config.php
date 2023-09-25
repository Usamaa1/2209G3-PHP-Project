<?php

    try
    {

    $connection = new PDO("mysql:host=localhost;dbname=coffee_blend","root","");    

    }
    catch(PDOException $e)
    {
        echo $e->getMessage();
    }


?>