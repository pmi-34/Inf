program p1;
type
  digit = 0..9;
  digits = set of digit;
function GetDigits(n : longint) : digits;
var
  d :digits;
begin
  n := abs(n);
  
  d := [];
  
  repeat
    d := d + [n mod 10];
    n := n div 10;
  until n = 0;
  
  GetDigits := d;
end;

var
  i,n : longint;
  d : digits;
begin
  write('¬ведите число: ');
  readln(n);
  
  for i := 0 to 9 do
    d := d + [i];
    
  d := d - GetDigits(n);
  for i := 9 downto 0 do
    if(i in d) then
      write(i, ' ');
  writeln;
end.