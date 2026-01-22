program stats;
uses csp;
var
  mylist, alist : list;
  n : integer;
begin
  repeat
    writeln('Enter the number of random elements for the sort, median and average check list : ');
    readln(n);
    if not ((n > 0) and (n <= size)) then
      writeln('Invalid! Try Again between 1 and ', size);
  until (n > 0) and (n <= size);
  randomlist(mylist, n);
  writeln;
  Writeln('Unsorted : ');
  printlist(mylist);
  writeln;
  bubblesort(mylist);
  Writeln('Sorted : ');
  printlist(mylist);
  writeln;
  Writeln('The average = ', Average(mylist):3:2);
  Writeln('The median = ', Median(mylist):3:2);
  writeln;

  writeln('Enter the number of random elements for the IsIncreasing Check list : ');
  readln(n);
  randomlist(alist, n);
  writeln;
  writeln('Unsorted : ');
  printlist(alist);
  writeln;
  writeln('IsIncreasing = ', isincreasing(alist));
  writeln;
  bubblesort(alist);
  writeln('Sorted : ');
  printlist(alist);
  writeln;
  writeln('IsIncreasing = ', isincreasing(alist));
  readln;
end.