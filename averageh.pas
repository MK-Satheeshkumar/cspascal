PROGRAM AverageHeight;
CONST
   MAXTEAM = 22;
TYPE
   List = ARRAY[1..MAXTEAM] OF INTEGER;
VAR
   heights : List;
   teamNum, sum, i : INTEGER;
   average : REAL;
BEGIN
   Writeln('Enter the No.of Player(s) in the team : ');
   Readln(teamNum);
   FOR i := 1 TO teamNum DO
   BEGIN
   Writeln('Enter the Height of Player #', i,' : ');
   Readln(heights[i]);
   END;
   FOR i := 1 TO teamNum Do
   BEGIN
   Writeln(heights[i]);
   END;
   Readln(teamnum);
END.