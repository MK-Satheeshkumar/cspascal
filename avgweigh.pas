PROGRAM AverageWeight;
CONST
  MAXSIZE = 20;
TYPE
  List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  weights : List;
  teamsize : INTEGER;
  average : REAL;
  sum : REAL;
  i : INTEGER;
BEGIN
  Writeln('How Many Players Are There In The Team ? ');
  Readln(teamsize);
  FOR i := 1 TO teamsize DO
  BEGIN
  Writeln('Weight of the player #', i,' : ');
  Readln(weights[i]);
  END;
  sum := 0;
  FOR i := 1 TO teamsize DO
  BEGIN
  Writeln(Round(weights[i]));
  sum := sum + weights[i];
  Writeln(sum/teamsize);
  Readln(i);
  END;
END.