program p6;

const MaxN = 10;
type
  Tarr = array [0..maxN] of integer;
  
procedure Process(var A :Tarr);
var
  i,j,k,x : integer;
begin
  k := 1;
  for i := 1 to A[0] do begin
    if (A[i] < 0) then begin
      x := A[i];
      for j := i-1 downto k do
        A[j+1] := A[j];
      A[k] := x;
      inc(k);
    end;
  end;
end;

procedure Dump(var A : Tarr);
var
  i : integer;
begin
  for i := 1 to A[0] do
    write(A[i], ' ');
  writeln;
end;

var
  i,N : integer;
  A :Tarr;
begin
  write('Введите число элементов: ');
  readln(n);
  
  A[0] := n;
  
  for i := 1 to n do
    A[i] := random(-20, 20);
  
  Dump(a);
  
  Process(a);
  
  Dump(A);
end.