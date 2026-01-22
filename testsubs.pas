program testsubstring;
uses csp;
var
s : string;
start, n : integer;
begin
Writeln('Enter the string : ');
readln(s);
Writeln('Enter the starting position : ');
readln(start);
writeln('Enter the length of the substring : ');
readln(n);
Writeln(substring(s, start, n));
readln(n);
end.