program listtest;
uses csp;
var
  mylist : list;
  i : integer;
begin
  writeln('Length of List is ', length(mylist));

  append(mylist, 5);
  append(mylist, 10);
  append(mylist, -50);
  append(mylist, 16);
  writeln('Now Length is ', length(mylist));

  printlist(mylist);

  append(mylist, 4);
  append(mylist, 9);

  printlist(mylist);

  readln(i);
end.