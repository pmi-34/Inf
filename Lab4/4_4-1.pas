Result := 0; {1}
for i := 0 to n do {$(n+1)\times\dots$}
begin
  p := 1; {1}
  for j := 1 to n do {$n\times\dots$}
    p := p*x; {2}
  Result := Result + a[i]*p; {3}
end;
