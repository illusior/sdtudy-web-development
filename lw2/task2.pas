PROGRAM SarahRever(INPUT, OUTPUT);
{Реализация .cgi программы SarahRevere}
USES
  DOS;
VAR
  Lanterns: STRING;
BEGIN {SarahRever}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Lanterns := GetEnv('QUERY_STRING');
  IF Lanterns = 'lanterns=1'
  THEN
    WRITELN('by sea')
  ELSE
    IF Lanterns = 'lanterns=2'
    THEN
      WRITELN('by land')
    ELSE
      WRITELN('nothing')
END. {SarahRever}