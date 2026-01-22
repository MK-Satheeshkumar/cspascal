PROGRAM loops;
VAR
  i : INTEGER;
  c : CHAR;
BEGIN
Write('Give me a number : ');
Readln(i);
WHILE i <> -1 DO
BEGIN
  Writeln('Give me a number : ');
  Readln(i);
END;

Writeln('Out of Loop');
Readln(i);
END.