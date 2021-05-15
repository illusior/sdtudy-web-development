<?php
//программа считает надёжность пароля, переданного в параметре password $_GET


if ($_GET["password"] !== '' && isset($_GET["password"]))
{
    $password = $_GET["password"];

    if (preg_match("/[a-zA-Z0-9]+/", $password))
    {
        echo "$password is valid password <br />";

        //за каждый символ
        $len = strlen($password);
        $safety = 0;
        $safety += 4 * $len; 
        echo "за каждый символ ", " 4 * ", $len, " = ", 4 * $len, "<br />";
                                  //4 *    x       =    delta(Safety)

        //за каждую цифру в пароле
        preg_match_all("/\d/", $password, $matchesDigits, PREG_SET_ORDER, 0);
        $safety += 4 * count($matchesDigits); 
        echo "за каждую цифру в пароле ", "4 * ", count($matchesDigits), " = ", 4 * count($matchesDigits), "<br />";
                                         //4 *    x                        =   delta(Safety)

        //за каждую букву в верхнем регистре, почему-то URL всегда в маленьком регистре
        preg_match_all("/[A-Z]/", $password, $matchesUpperSymbols, PREG_SET_ORDER, 0);
        $safety += ($len - count($matchesUpperSymbols)) * 2;
        echo "за каждую букву в верхнем регистре в пароле ",
           $len, " - ", count($matchesUpperSymbols), " * 2 = ", ($len - count($matchesUpperSymbols)) * 2, "<br />";
         //(длина  -    x)                             * 2 =    delta(Safety)

        //за каждую букву в нижнем регистре, почему-то URL всегда в маленьком регистре
        preg_match_all("/[a-z]/", $password, $matchesUpperSymbols, PREG_SET_ORDER, 0);
        $safety += ($len - count($matchesUpperSymbols)) * 2;
        echo "за каждую букву в нижнем регистре в пароле ", 
           $len, " - ", count($matchesUpperSymbols), " * 2 = ", ($len - count($matchesUpperSymbols)) * 2, "<br />";        
        //(длина   -    x)                             * 2 =    delta(Safety)

        //если пароль НЕ содержит цифр или НЕ содержит букв - штраф
        $hasAlph = preg_match_all("/[A-Za-z]+/", $password);
        $hasDigits = preg_match_all("/[0-9]+/", $password);
        if ($hasAlph && !$hasDigits || !$hasAlph && $hasDigits)
        {
            $safety -= strlen($password);
            echo "за пароль, состоящий только из цифр или только из букв - штраф в размере ", strlen($password), "<br />";
        }

        //если в пароле есть повторяющиеся символы - штраф
        $tempPassword = $password;
        $amountOfRepeatedChars = 0;
        foreach(str_split($password) as $value)
        {
            if (substr_count($password, $value) > 1)
            {
                $amountOfRepeatedChars++;
            }
        }
        if ($amountOfRepeatedChars > 0)
        {
            echo "за пароль, содержащий одинаковые символы - штраф в размере ", $amountOfRepeatedChars, " - кол-во повторённых символов", "<br />";
        }
        $safety -= $amountOfRepeatedChars;

        echo "$safety - надёжность пароля";
    }
    else
    {
        echo "$password is not valid password";
    }
}
else
{
    echo "введите в url параметр password и присвойте ему значение";
}