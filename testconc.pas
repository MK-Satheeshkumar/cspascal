program test;
uses csp;
var
s : string;
begin
if concat('Mr', 'Murry') = 'MrMurry' then
writeln('Pass')
else
writeln('Fail');
if concat('Hello ', 'world!') = 'Hello world!' then
writeln('Pass')
else
writeln('Fail');
if concat('McIntosh', 'High School') = 'McIntoshHigh School' then
writeln('Pass')
else
writeln('Fail');
readln(s);
end.