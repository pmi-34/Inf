program p3;

var
  x : byte;
  f : file of integer;
  i,n,k : integer;
begin
  assign(f, 'file3.dat');
  rewrite(f);
  
  write('������� ����� ���������: ');
  readln(n);
  
  for i := 1 to n do begin
    write('������� ', i, ' �����: ');
    readln(x);
    if (x < 10) OR (x > 99) then // (x < 1000) ����� �� ���������
      write(f, x);
  end;
  
  reset(f);
  repeat
    write('������� k: ');
    readln(k);
    if ((k > n) OR (k <= 0)) then
      writeln('������������ ����!');
  until (k <= n) AND (k > 0);
 
  Seek(f, k-1);
  read(f, n);
  writeln('������� ����� ', n);
  close(f);
end.