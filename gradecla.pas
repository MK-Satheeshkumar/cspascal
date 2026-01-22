PROGRAM GradeClassification;
VAR
  grade : INTEGER;
  lettergrade : CHAR;

FUNCTION ClassifyGrade(grade : INTEGER) : CHAR;
  BEGIN { Grading Scale : FCBOE }
    IF (grade <= 100) AND (grade >= 90) THEN ClassifyGrade := 'A'
    ELSE IF (grade <= 89) AND (grade >= 80) THEN ClassifyGrade := 'B'
    ELSE IF (grade <= 79) AND (grade >= 71) THEN ClassifyGrade := 'C'
    ELSE IF (grade = 70) THEN ClassifyGrade := 'D'
    ELSE IF (grade <= 69) AND (grade >= 0) THEN ClassifyGrade := 'F'
  END;

PROCEDURE PrintLetterGrade(lettergrade : CHAR);
  BEGIN
    IF lettergrade = 'A' THEN Writeln('Your Letter Grade is, A.')
    ELSE IF lettergrade = 'B' THEN Writeln('Your Letter Grade is, B.')
    ELSE IF lettergrade = 'C' THEN Writeln('Your Letter Grade is, C.')
    ELSE IF lettergrade = 'D' THEN Writeln('Your Letter Grade is, D.')
    ELSE IF lettergrade = 'F' THEN Writeln('Your Letter Grade is, F.');
    END;

BEGIN
  REPEAT
  Writeln('Enter Numeric Grade : ');
  Read(grade);
  IF (grade < 0) OR (grade > 100) THEN Writeln('Invalid Input; Please enter a Grade between 0 and 100.');
  UNTIL (grade >= 0) AND (grade <= 100);
  lettergrade := ClassifyGrade(grade);
  PrintLetterGrade(lettergrade);

  Read(grade);
END.