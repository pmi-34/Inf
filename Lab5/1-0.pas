procedure Sort(var A : TArray; n : integer); {n – размерность массива}
var i,j,k : integer;
    X : Item;
begin
  for i:= 1 to n-1 do begin
    k := i; 
    x := A[i];
    for j := i+1 to n do
      if A[j].key > x.key then begin
        k := j; 
        x := A[j];
      end;

    x := A[k];
    A[k] := A[i];
    A[i] := x;
   end;
end;
