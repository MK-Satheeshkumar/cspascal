program sub;
var
  s1, s2 : string;
  i, j : integer;

function substring(s : string; start, len : integer) : string;
  var
    i : integer;
    temps : string;
  begin
  if len > length(s) - start + 1 then temp[0] := chr(length(s)) - start + 1;
  temps[0] := chr(len);
    for i := 1 to len do
    temps[i] := s[i + start - 1];
    substring := temps;
  end;

begin
  s1 := substring('Hellohgfffffffyhjfygy', 4, 10);
  writeln('Hello -> ', s1);
  writeln('enter a string : ');
  readln(s2);
  writeln('where to start : ');
  readln(i);
  writeln('length of the substring : ');
  readln(
  readln(i);
end.