program p5;

const NMax = 30;
type TPoint = record x,y : real; end;
     TOtrezok = record a,b : TPoint; end;
     TArr = array [1..NMax] of TOtrezok;

var
  N : integer;

function GetLen(var x : TOtrezok) : real;
var
  a, b : real;
begin
  a := Abs(x.a.x - x.b.x);
  b := Abs(x.a.y - x.b.y);
  
  a *= a;
  b *= b;
  GetLen := sqrt(a + b);
end;

procedure MaxLen(var A : TArr; var k : integer);
var
  x,res : real;
  i : integer;
begin
  res := 0; 
  k := 0;
  for i:= 1 to N do begin
    x := GetLen(A[i]);
    if (x > res) then begin
      res := x;
      k := i;
    end;
  end;
end;

var
  i,k : integer;
  A : Tarr;
begin

  write('¬ведите число отрезков: ');
  readln(n);
  
  for i := 1 to n do begin
    write('¬ведите ',i, ' a.x: ');
    readln(A[i].a.x);
    write('¬ведите ',i, ' a.y: ');
    readln(A[i].a.y);
    write('¬ведите ',i, ' b.x: ');
    readln(A[i].b.x);
    write('¬ведите ',i, ' b.y: ');
    readln(A[i].b.y);
  end;
  
  MaxLen(a, k);
  
  writeln('ќтрезок максимальной длины:');
  writeln('[', A[k].a.x, ';', A[k].a.y, '], [', A[k].b.x, ';', A[k].b.y, ']');
  writeln('≈го длина: ', GetLen(A[k]));
end.