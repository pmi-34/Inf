S := 1; {1}
  for i := 2 to K do begin {$(k-1)\times\dots$}
    T := 1; {1}
      for j := 1 to i do {$ max(2,3,4,\dots,K) = K$}
        T := T * 2; {2}
    s := s + i / T; {3}
  end;
