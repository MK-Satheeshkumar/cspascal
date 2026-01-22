unit csp;

interface

{ list data type }
const
  size = 255;

type
  list = array[0..size] of integer;

{ list basic functions/procedures }
function length(alist : list) : integer;
procedure append(var alist : list; value : integer);
procedure insert(var alist : list; i, value : integer);
procedure remove(var alist : list; i : integer);
procedure printlist(alist : list);
procedure randomlist(var alist : list; n : integer);

{ list functions/procedures for csp exam }
function sum(alist : list) : integer;
function average(alist : list) : real;
function smallest(alist : list) : integer;
procedure bubblesort(var alist : list);
function median(alist : list) : real;
function IsIncreasing(alist : list) : boolean;
function linearsearch(alist : list; value : integer) : boolean;
function binarysearch(alist : list; value : integer) : boolean;
procedure swap(var a, b : integer);
procedure selectionsort(var alist : list);

{ string functions }
function len(s : string) : integer;
function concat(s1, s2 : string) : string;
function reverse(s : string) : string;
function prefix(s : string; n : integer) : string;
function substring(s : string; start, n : integer) : string;

implementation

{ list functions/procedures }
function length(alist : list) : integer;
begin
  length := alist[0];
end;

procedure append(var alist : list; value : integer);
begin
  alist[0] := length(alist) + 1;
  alist[length(alist)] := value;
end;

procedure insert(var alist : list; i, value : integer);
var
  index : integer;
begin
  if (i > length(alist)) then append(alist, value)
  else if (i > 0) then
  begin
    alist[0] := length(alist) + 1;
    for index := length(alist) downto (i + 1) do
      alist[index] := alist[index - 1];
    alist[i] := value;
  end;
end;

procedure remove(var alist : list; i : integer);
var
  index : integer;
begin
  if (i > length(alist)) or (i < 1) then
  else
  begin
    for index := i to (length(alist) - 1) do
      alist[index] := alist[index + 1];
    alist[0] := length(alist) - 1;
  end;
end;

procedure printlist(alist : list);
var
  i : integer;
begin
  for i := 1 to length(alist) do writeln('Element #', i, ' = ', alist[i]);
end;

function sum(alist : list) : integer;
var
  i, total : integer;
begin
  total := 0;
  for i := 1 to length(alist) do total := alist[i] + total;
  sum := total;
end;

function average(alist : list) : real;
begin
  average := sum(alist)/length(alist);
end;

procedure randomlist(var alist : list; n : integer);
var
  i : integer;
begin
  randomize;
  for i := 1 to n do
    append(alist, random(100));
end;

function smallest(alist : list) : integer;
var
  min, i : integer;
begin
  min := alist[1];
  for i := 2 to length(alist) do
    if (alist[i] < min) then min := alist[i];
  smallest := min;
end;

procedure bubblesort(var alist : list);
var
  i, j : integer;
begin
  for i := 1 to length(alist) - 1 do
    for j := 1 to length(alist) - i do
      if (alist[j] > alist[j + 1]) then
        swap(alist[j], alist[j + 1]);
end;

function median(alist : list) : real;
var
  low, high : integer;
  temps : real;
begin
  if (length(alist) mod 2 = 0) then
  begin
    low := alist[length(alist) div 2];
    high := alist[(length(alist) div 2) + 1];
    temps := (low + high)/2;
  end
  else if (length(alist) mod 2 = 1) then
    temps := alist[(length(alist) div 2) + 1];
  median := temps;
end;

function IsIncreasing(alist : list) : boolean;
var
  i : integer;
  increase : boolean;
begin
  increase := true;
  for i := 1 to length(alist) - 1 do
    if (alist[i] > alist[i + 1]) then
    begin
      increase := false;
      break;
  end;
  isincreasing := increase;
end;

function linearsearch(alist : list; value : integer) : boolean;
var
  i : integer;
  found : boolean;
begin
  found := false;
    for i := 1 to length(alist) do
      if alist[i] = value then
      begin
        found := true;
        break;
      end;
  linearsearch := found;
end;

function binarysearch(alist : list; value : integer) : boolean;
var
  l, r, mid : integer;
  found : boolean;
begin
  found := false;
  l := 1;
  r := length(alist);
  repeat
    mid := (l + r) div 2;
    if alist[mid] = value then
    begin
      found := true;
      break;
    end
    else if alist[mid] < value then l := mid + 1
    else r := mid - 1;
  until l > r;
  binarysearch := found;
end;

procedure swap(var a, b : integer);
var
  temp : integer;
begin
  temp := a;
  a := b;
  b := temp;
end;

procedure selectionsort(var alist : list);
var
  i, j, min : integer;
begin
  for i := 1 to length(alist) - 1 do
  begin
    min := alist[i];
    for j := i + 1 to length(alist) do
    begin
      if alist[j] < alist[min] then min := j;
    end;
    swap(alist[i], alist[min]);
  end;
end;

procedure insertionsort(var alist : list);
var
  i, j : integer;
begin
  for i := 2 to length(alist) do
    for j := i downto 2 do
      if alist[j] < alist[j - 1] then
        swap(alist[j], alist[j - 1])
      else
        break;
end;

{ string functions }
function len(s : string) : integer;
begin
  len := ord(s[0]);
end;

function concat(s1, s2 : string) : string;
var
  i : integer;
  temps : string;
begin
  temps[0] := chr(len(s1) + len(s2));
  for i := 1 to len(s1) do
    temps[i] := s1[i];
  for i := 1 to len(s2) do
    temps[len(s1) + i] := s2[i];
  concat := temps;
end;

function reverse(s : string) : string;
var
  i : integer;
  temps : string;
begin
  temps[0] := s[0];
  for i := 1 to len(s) do
    temps[i] := s[len(s) - i + 1];
  reverse := temps;
end;

function prefix(s : string; n : integer) : string;
var
  i : integer;
  temps : string;
begin
  if (n > len(s)) then n := len(s);
  temps[0] := chr(n);
  for i := 1 to n do
    temps[i] := s[i];
  prefix := temps;
end;

function substring(s : string; start, n : integer) : string;
var
  i : integer;
  temps : string;
begin
  if n > len(s) - start + 1 then n := len(s) - start + 1;
  temps[0] := chr(n);
  if start > len(s) then substring := ''
  else
  begin
    for i := 1 to n do
      temps[i] := s[start + i - 1];
    substring := temps;
  end;
end;
end.