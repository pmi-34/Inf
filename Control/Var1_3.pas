program p3;

var
  x : byte;
  f : file of integer;
  i,n,k : integer;
begin
  assign(f, 'file3.dat');
  rewrite(f);
  
  write('Введите число элементов: ');
  readln(n);
  
  for i := 1 to n do begin
    write('Введите ', i, ' число: ');
    readln(x);
    if (x < 10) OR (x > 99) then // (x < 1000) можно не проверять
      write(f, x);
  end;
  
  reset(f);
  repeat
    write('Введите k: ');
    readln(k);
    if ((k > n) OR (k <= 0)) then
      writeln('Некорректный ввод!');
  until (k <= n) AND (k > 0);
 
  Seek(f, k-1);
  read(f, n);
  writeln('Искомое число ', n);
  close(f);
end.