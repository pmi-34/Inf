program p1;

const 
  nmax = 10;

type 
  Item = record
    key : integer;
  end;
  TArray = array [1..nmax] of Item;

procedure Dump(var A : TArray; n : integer);
var
  i : integer;
begin
  for i := 1 to n do
    write('[', A[i].key,'] ');
  writeln;
end;

procedure Merge(l,r : integer; var A : TArray);
var 
  i,j,t,m : Integer;
  B : TArray;
begin
  m := (l+r) div 2;

  i := l;
  j := m+1;

  t := 1;

  while ((i <= m) and (j <= r)) do begin
    if (A[i].key < A[j].key) then begin
      B[t].key := A[i].key;
      inc(i);
    end else begin
      B[t].key := A[j].key;
      inc(j);
    end;
    inc(t);
  end;

  while (i <= m) do begin
    B[t].key := A[i].key;
    inc(i);
    inc(t)
  end;

  while (j <= r) do begin
    B[t].key := A[j].key;
    inc(j);
    inc(t)
  end;

  for i := 1 to t-1 do 
    A[l+i-1].key := B[i].key;
end;

procedure Sort(l,r : integer; var A : TArray);
begin
  if (l < r) then begin
    Sort(l, l+((r-l) Div 2), A);
    Sort(l+((r-l) Div 2)+1, r, A);
    Merge(l, r, A);
    Dump(A, nmax)
  end;
end;

procedure InputA(var A : TArray; N : integer);
var
  i : integer;
begin
  for i := 1 to N do begin
    write('Введите ',i,'-ый элемент массива: ');
    readln(A[i].key);
  end;
end;

procedure RandomA(var A : TArray; N : integer);
var
  i : integer;
begin
  randomize;
  for i := 1 to N do
    A[i].key := random(100);
end;

function ProcessData(var A : TArray) : integer;
var
  N : integer;
  c : char;
begin
  write('Введите N: ');
  readln(N);

  write('Заполнить автоматически? [y/N]: ');
  readln(c);
  
  if (upcase(c) = 'Y') then
    RandomA(A, N)
  else
    InputA(A, N);

  ProcessData := N;
end;

var
  A : TArray;
  N : integer;

begin
  N := ProcessData(A);

  Dump(a, N);

  Sort(1,N,a);

  Dump(a, N);
end.

