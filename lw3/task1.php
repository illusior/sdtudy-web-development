<?php
    //Remove Extra Blanks in _GET's param
	
	header('Content-Type: text/plain');
	
    isset($_GET['text'])?$text=$_GET['text']:$text=null;

    if ($text !== null)
    {
        $index = 0;
        $len = strlen($text);
		$stat = false;

        while ($index < $len)
        {
            $currChar = $text[$index];

            if  ($currChar !== ' ')
	        {
	            echo $currChar;
		        $index++;
	        }
	        else
	        {
			    if ($stat !== false)
				{
					echo $currChar;
				}	
	            while ($currChar === ' ')
	            {
	                $index++;
	                $currChar = $text[$index];
					if ($stat == false)
					{
					    $stat = true;	
					}
	            }
	        }   
        }
    }