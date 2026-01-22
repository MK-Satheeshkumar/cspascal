program test;
uses csp;
var
s : string;
n : integer;
begin
Writeln('Enter the String : ');
Readln(s);
Writeln('Enter a Prefix Quantity : ');
readln(n);
Writeln('Prefix(', n, ',', s,') = ', Prefix(s));
Readln(s);
end.