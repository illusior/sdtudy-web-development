<?php
//программа выводит отформатированное содержимое анкеты 

header("Content-Type: text/plain");

$user = isset($_GET["email"])?$_GET["email"]:null;

if ($user !== null)
{
    $userFilePath = "..\SurveySaver\data\\".$user.".txt";
    if (file_exists($userFilePath))
    {
        $userFile = fopen($userFilePath, "r");
        $arrayOfStringsFromUserFile = file($userFilePath);
        $arrayOfParametrs = array();
    
        foreach ($arrayOfStringsFromUserFile as $value)
        {
            $index = stripos($value, ":");
            $dataFromValue = substr($value, $index);

            if (strpos($value, "email") !== false)
            {
                $arrayOfParametrs["Email"] = $dataFromValue; 
            }
            if (strpos($value, "first_name") !== false)
            {
                $arrayOfParametrs["First Name"] = $dataFromValue;
            }
            if (strpos($value, "last_name") !== false)
            {
                $arrayOfParametrs["Last Name"] = $dataFromValue;
            }
            if (strpos($value, "age") !== false)
            {
                $arrayOfParametrs["Age"] = $dataFromValue;
            }      
        }
        echo "First Name", $arrayOfParametrs["First Name"];
        echo "Last Name", $arrayOfParametrs["Last Name"];
        echo "Email", $arrayOfParametrs["Email"];
        echo "Age", $arrayOfParametrs["Age"];
    }
    else
    {
        echo "file with name $user doesn't exist";
    }    
}
else
{
    echo "no email";
}

