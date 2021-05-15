<?php
//the program responds whether the ID is correct (SR3)

$get = $_GET;

if (count($get) !== 0)
{
    foreach ($get as $key => $value)
    {
        if (preg_match("/\b\D+\w*\d*\b/i", $key)) 
        {
            echo "$key is correct identifier <br />";
        }
        else
        {
            echo "$key is NOT correct identifier <br />";
        }
      
    }
}
else
{
    echo "enter url params";
}