Program Graphics;
uses Graph, Crt;
type
  triangle = array[1..4] of pointtype;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i : Integer;
  MyColor, NumColor : Word;
  MyTri : Triangle;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  x := 0;
  y := 0;
  NumColor := GetMaxColor;
  Randomize;
  Repeat
    for i := 1 to 3 do
    begin
      mytri[i].x := random(640);
      mytri[i].y := random(480);
    end;
    mycolor := random(numcolor);
    setcolor(mycolor);
    mytri[4] := mytri[1];
    setfillstyle(1, random(numcolor));
    fillpoly(4, mytri);
  Until KeyPressed;

  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      case c of
        'w': y := y - 5;
        's': y := y + 5;
        'a': x := x - 5;
        'd': x := x + 5;
      end;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.