<?php
//the program responds whether the ID is correct (SR3)

header("Content-Type: text/plain");

$get = $_GET;

if (count($get) !== 0)
{
    foreach ($get as $key => $value)
    {
        if (preg_match("/\b\D+\w*\d*\b/i", $key)) 
        {
            echo "$key is correct identifier \n";
        }
        else
        {
            echo "$key is NOT correct identifier \n";
        }
      
    }
}
else
{
    echo "enter url params";
}