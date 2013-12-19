program p2;

function GetNumWords(s : string) : integer;
var
  n, l, maxl,i,len :integer;
begin
  n := 0;
  maxl := 0;
  len := length(s);
  for i := 1 to len do begin
    if (S[i] <> ' ') then
      inc(l);
    if ((S[i] = ' ') OR (i = len)) AND (l <> 0) then begin
      if (l > maxl) then begin
        maxl := l;
        n := 0;
      end;
      
      if l = maxl then 
        inc(n);
        
      l := 0;
    end;
  end;
  GetNumWords := n;
end;

var
  S :string;
begin
  write('Введите строку: ');
  readln(s);
  
  writeln('В строке ', GetNumWords(s), ' слов максимальной длины');
end.