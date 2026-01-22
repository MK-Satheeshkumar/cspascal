program sort;
uses csp;
var
  mylist : list;
begin
  randomlist(mylist, 10);
  writeln('Unsorted');
  printlist(mylist);
  writeln;

  writeln('Sorted');
  bubblesort(mylist);
  printlist(mylist);
  readln;
end.