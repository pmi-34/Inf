Result := a[0]; {1}
p := 1; {1}
for i := 1 to n do {$n\times\dots$}
begin
  p := p*x; {2}
  Result := Result + a[i]*p; {3}
end;
