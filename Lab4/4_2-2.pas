S := 0; {1}
For i := 1 to k do begin {$k\times\dots$}
  S := i*(1 shl (k-i+1)); {1 shl (k-i+1) = $2^{k-i+1}$; 5}
end;
S := S / (1 shl (k+1)) + 1/2; {1 shl (k+1) = $2^{k+1}$; 6}
