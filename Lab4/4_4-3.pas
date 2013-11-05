{Схема Горнера}
Res := a[n]; {1}
for i := n-1 downto 0 do begin {$n\times\dots$}
  Res := Res*x + a[i]; {3}
end;
