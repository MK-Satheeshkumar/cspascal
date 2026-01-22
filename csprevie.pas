program cspreview;
const
  size = 20;
type
  list = array[0..size] of integer;
var
  mylist, mylist2 : list;
  i, j, n : integer;
begin
  randomize;
  for i := 1 to size do
    mylist[i] := random(100);
  mylist[0] := size;

  for  i := 1 to size do
    writeln('mylist[', i, '] = ', mylist[i]);

  readln(j);
  n := 0;
  for i := 1 to size do
    if mylist[i] = j then
      writeln('Yep!');

  readln;
end.