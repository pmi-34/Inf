S:=0; {1}
X:=1; {1}
For i:=2 to n do begin {$(n-1)\times\dots$}
  x := x*(2*i)*(2*i-1);{6}
  s:=s+x; {2}
end;
