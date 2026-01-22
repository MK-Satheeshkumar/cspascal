PROGRAM CalcAvg;
CONST
  MAXNUM = 20;
TYPE
  List = ARRAY[1..MAXNUM] OF REAL;
VAR
  AssignGrades : LIST;
  AssignNum, i : INTEGER;
  Average, sum : REAL;
BEGIN

  Writeln('No.of Assignment grades in the class : ');

  REPEAT
  Readln(AssignNum);
  IF (AssignNum > 20) OR (AssignNum < 1) THEN Writeln('Please Enter No.of Assignment grade between 1 and 20');
  UNTIL (AssignNum < 21) AND (AssignNum > 0);

  FOR i := 1 TO AssignNum DO
  BEGIN
  Writeln('Enter the Grade of Assignment #', i,' : ');
  REPEAT
  Readln(AssignGrades[i]);
  IF (AssignGrades[i] > 100) OR (AssignGrades[i] < 0) THEN Writeln('Enter Grade between 0 and 100; TRY AGAIN : ');
  UNTIL (AssignGrades[i] > -1) AND (AssignGrades[i] < 101);
  END;

  sum := 0;
  FOR i := 1 TO AssignNum DO sum := sum + assignGrades[i];

  Average := (sum/i);
  Writeln('The Average Grade is ', (Average));


  IF (Average >= 90) THEN Writeln('Letter Grade = A.')
  ELSE IF (Average >= 80) THEN Writeln('Letter Grade = B.')
  ELSE IF (Average >= 71) THEN Writeln('Letter Grade = C.')
  ELSE IF (Average = 70) THEN Writeln('Letter Grade = D.')
  ELSE IF (Average <= 69) THEN Writeln('Letter Grade = F.');

  Readln(i);
END.
