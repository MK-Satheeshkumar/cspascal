program testrandom;
uses csp;
var
  mylist : list;
  n : integer;
begin
  repeat
    writeln('Enter how many random items : ');
    readln(n);
    if (n < 1) or (n > size) then
      writeln('Enter a valid number!');
  until (n > 0) and (n < size);
  randomlist(mylist, n);
  printlist(mylist);
  writeln('The smallest number is ', smallest(mylist));
  readln;
end.