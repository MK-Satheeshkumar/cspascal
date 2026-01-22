program randlist;
uses csp;
var
  mylist : list;
  i : integer;
begin
  randomize;
  for i := 1 to 20 do
    append(mylist, random(67) + 1);
  printlist(mylist);

  for i := 1 to 20 do
    if mylist[i] = 67 then writeln('67!!!!!!! in #', i);

  readln;

  for i := 1 to 20 do mylist[i] := random(67)+1;
  printlist(mylist);

  for i := 1 to 20 do
    if mylist[i] = 67 then writeln('67!!!!!!! in #', i);

  readln;
end.