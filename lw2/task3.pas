PROGRAM Hello(INPUT, OUTPUT);
{Программа получает значение параметра <name>
 и выводит на экран приветствие в формате
 /hello, <name>/}
USES
  DOS;
VAR
  Query, Name: STRING;
  KeyPos: INTEGER;
BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Query := GetEnv('QUERY_STRING');
  Name := 'Anonymous!';
  WRITE('hello dear, ');
  KeyPos := Pos('name', Query);
  IF KeyPos <> 0
  THEN
    WRITELN(Copy(Query, KeyPos + 5, Length(Query)))
  ELSE
    WRITELN(Name)
END. {Hello}
