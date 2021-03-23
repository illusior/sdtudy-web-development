PROGRAM WorkWithQueryString(INPUT, OUTPUT);
{Программа, использующая функцию, которая 
 возвращает значение переданного ей ключа из QUERY_STRING}
USES
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Query, Value: STRING;
  IdentifierPos, KeyEndPos, Len: INTEGER;
BEGIN {GetQueryStringParameter}
  Query := GetEnv('QUERY_STRING');
  IdentifierPos := Pos(Key, Query);
  IF IdentifierPos <> 0  {Есть ли ключ в Query?}
  THEN 
    BEGIN
      Len := Length(Key);
      Delete(Query, 0, IdentifierPos);
      KeyEndPos := Pos('&', Query);
      IF KeyEndPos = 0  {Есть ли ещё параметры после ключа?}
      THEN
        Value := Copy(Query, Len + 2, Length(Query))
      ELSE
        Value := Copy(Query, Len + 2, KeyEndPos - (Len + 2))
    END
  ELSE
    Value := 'empty';      
  GetQueryStringParameter := Value
END; {GetQueryStringParameter}
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))  
END. {WorkWithQueryString}
