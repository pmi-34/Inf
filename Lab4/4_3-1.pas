Rez := x; a := 1; {2}
for k := 1 to V*V do begin {$V^2\times\dots$}
  m := 2; {1}
  for j := 1 to V do {$V\times\dots$}
    a := a*2 - 3; {3}
  while m < V do begin {$1 + log_2(log_2(V))\times(1 + \dots)$}
    Rez := Rez + a*2 {3}
    m := m*m; {2}
  end;
  Rez := Rez - 3*a; {3}
end;
Rez := Rez*Rez; {2}
