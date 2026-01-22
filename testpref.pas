program test;
uses csp;
var
s : string;
n : integer;
begin
Writeln('Enter the String : ');
Readln(s);
Writeln('Enter the Prefix Quantity : ');
readln(n);
Writeln('Prefix(', s, ', ', n,') = ',Prefix(s, n));
Readln(s);
end.