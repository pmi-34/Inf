program prog;

{Возводит $a^b$ за время порядка $log_2(b)$}
function pwr(a : real; b: integer): real;
var res: real;
begin
  res := 1;
  while b > 0 do begin
    if (b AND 1) = 1 then begin {b mod 2 = 1}
      b := b-1;
      res := res*a;
    end;
    
    b := b shr 1;
    a := a*a;
  end;
  pwr := res;
end;

var
  S,a : real;
  n,i : integer;
begin
  readln(a);
  readln(n);
  S := 0;

  for i := 1 to n do {$n\times\dots$}
    S := S + pwr(a+i-1, i); {$5 + log_2(i)$}

  writeln(S : 0 :10);
end.
