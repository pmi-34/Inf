program p4;

var
  i,n : integer;
  S,x : real;
begin
  write('������� n: ');
  readln(n);
  
  x := 1;
  S := 0;
  
  for i := 1 to n do begin
    x *= sin(i);
    S += x;
  end;
  
  writeln('����� ����: ', S);
end.