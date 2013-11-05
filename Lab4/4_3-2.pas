Rez := x; a := 1; {2}
for k := V to 2*V do begin {$V\times\dots$}
  m := 2; {1}
  for j := 1 to V do {$V\times\dots$}
    a := a*2 - 3; {3}
  while m < V*2 do begin {$2 + log_2(V)\times(2 + \dots)$}
    Rez := Rez + a*2; {3}
    m := m*2; {2}
  end;
  Rez := Rez - 3*a; {3}
end;
Rez := Rez*Rez; {2}
