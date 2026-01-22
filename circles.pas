PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;
CONST
  TIMES = 10;
VAR
  gm, gd, i, x, y, r : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  Randomize;

  FOR i := 1 TO TIMES DO
  BEGIN
  x := Random(640);
  y := Random(480);
  r := Random(100);
  if x + r > 640 OR x - r < 0 THEN x :=  x - ( x - r)
  SetColor( Random(16) );
  Circle( x, y, r);
  END;

  Read(i);
  CloseGraph;
END.
