<?php
//программа сохраняет анкеты пользователей в файловой системе

header("Content-Type: text/plain");

if ($_GET["email"] !== '' && isset($_GET["email"]))
{
    //получаем нужные параметры, если параметра нет - возвращает в ассоциативный массив null
    $arrayOfParametres = [
        'email' => isset($_GET['email'])?$_GET['email']:null,
        'first_name' => isset($_GET['first_name'])?$_GET['first_name']:null,
        'last_name' =>  isset($_GET['last_name'])?$_GET['last_name']:null,
        'age' => isset($_GET['age'])?$_GET['age']:null,
    ];
    //создаём путь
    $dir = 'data\\'.$arrayOfParametres['email'].'.txt';
    $dir = str_replace(",", "", $dir);         //уберём все контрольные символы
    var_dump($arrayOfParametres['first_name']);

    $file = fopen($dir, "w");
    foreach ($arrayOfParametres as $key => $value)
    {
        $value = str_replace(",", "", $value); //уберём все контрольные символы
        if (strlen($value) !== 0)
        {
            fwrite($file, "$key: $value\n");
        }
        else
        {
            fwrite($file, "$key: ,,,\n");
        }
    }
}
else
{
    echo "no email given";
}