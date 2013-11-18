for i := 1 to n-1 do begin
  k := i; 
  x := A[i];
  for j := i+1 to n do
    if A[j].key > x.key then
      $\dots$

  x := A[k];
  A[k] := A[i];
  A[i] := x;
end;
