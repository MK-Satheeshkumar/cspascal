PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 8);
  Append(myList, 10);
  Append(myList, 12);
  Append(myList, 7);
  Insert(myList, 1, 100);
  remove(myList, 3);
  PrintList(myList);
  Writeln('Sum of List = ', Sum(myList));
  writeln('Avg of List = ', Average(myList));

  readln;
END.