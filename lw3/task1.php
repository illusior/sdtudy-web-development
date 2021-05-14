<?php
//Remove Extra Blanks in _GET's param
	
header('Content-Type: text/plain');

isset($_GET['text'])?$text=$_GET['text']:$text=null;

if ($text !== null)
{
    $arr = explode(' ', $text);
    $arrLength = count($arr);
    echo 'for input: ', $text, "<- input's end \n", 'output:';
    for ($i = 0; $i <= $arrLength; $i++)
    {
        if ($arr[$i] === '')
        {
            continue;
        }
        else
        {
            echo $arr[$i], ' ';
        }
    }
}
else
{
    echo 'param text is empty or not found';
}