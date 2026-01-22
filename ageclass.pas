PROGRAM AgeClassifier(Input, Output);
VAR
  age : INTEGER;
  class : CHAR;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
  BEGIN
    IF (age > 19) AND (age <= 120) THEN ClassifyAge := 'a'
    ELSE IF (age < 13) AND (age >= 0) THEN ClassifyAge := 'c'
    ELSE IF (age > 12) AND (age < 20) THEN  ClassifyAge := 't'
  END;

PROCEDURE PrintAgeClass(class : CHAR);
  BEGIN
    IF Class = 'a' THEN Writeln('You are an Adult')
    ELSE IF Class = 't' THEN Writeln('You are a Teenager')
    ELSE IF Class = 'c' THEN Writeln('You are a Child');
  END;

BEGIN
  REPEAT
  Writeln('Enter user age : ');
  Read(age);
  IF (age < 0) OR (age > 120) THEN Writeln('Please enter a number between 0 and 120');
  class := ClassifyAge(age);
  PrintAgeClass(class);
  UNTIL (age >= 0) AND (age <= 120);
  Read(age);
END.