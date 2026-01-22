program probability;
var
  i : integer;
  p : integer;
begin
  randomize;
  for i := 1 to 20 do
  begin
  p := random(10);
  if p >= 8 then writeln('Red')
  else if p >= 3  then writeln('Blue')
  else writeln('Yellow');
  writeln(p);
  end;
  readln;
end.