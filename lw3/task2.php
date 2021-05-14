<?php
//the program responds whether the ID is correct (SR3)

$get=$_GET;
if (count($get) !== 0)
{
    $maxStringLength = 0;
    foreach ($get as $key => $value)
    {
        $keyLength = strlen($key);
        if ($keyLength > $maxStringLength)      //найти самый длинный identifier, для отформатированного вывода
        {
            $maxStringLength = $keyLength;
        }
    }
    foreach ($get as $key => $value)
    {
        $outputString = $key;
        if (strlen($key) !== $maxStringLength)
        {
            $outputString = $outputString . str_repeat("&nbsp;", $maxStringLength + 4);
        }
        else
        {
            $outputString = $outputString . "&nbsp;";
        }
        if (preg_match("/\b\D+\w*\d*\b/i", $key)) 
        {
            $outputString = $outputString . "is" . str_repeat("&nbsp;", 7) . "correct identifier <br />";
        }
        else
        {
            $outputString = $outputString . " is not correct identifier <br />";
        }
        echo $outputString;        
    }
}
else
{
    echo "enter url params";
}