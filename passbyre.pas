program passbyreference;
var
m, n : integer;
s1, s2 : string;
c1, c2 : char;
procedure myupcase(var c : char);
begin
if (c >= 'a') and (c <= 'z') then
c := chr(ord(c) - 32);
end;
begin
c1 := 'B';
c2 := upcase(c1);
writeln(c1, ' -> ', c2);
myupcase(c1);
writeln(c1);
s1 := '123';
val('abc', n, m);
writeln(n, ' + 1 = ', n+1);
str(1022, s2);
writeln('Your number was ' + s2);
readln(m);
end.