const 
  nmax = 100;
type 
  Item = record
    key : integer;
    {среди прочих полей присутствует поле key – ключ сортировки}
  end;
  TArray = array [1..nmax] of Item;
