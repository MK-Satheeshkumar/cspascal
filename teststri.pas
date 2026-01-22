program teststring;
uses csp;
var
  s : string;
begin
  if prefix('hello', 10) = 'hello' then writeln('pass bad prefix')
  else writeln('fail');
  if substring('hello', 3, 10) = 'llo' then writeln('pass bad length')
  else writeln('fail');
  if substring('hello', 7, 3) = '' then writeln('pass bad start')
  else writeln('fail');
  readln;
end.