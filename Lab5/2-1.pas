{Процедура выполняет слияние подмассивов a[beg1..beg1+length1] и
a[beg2..beg2+length2] в массив b[beg1..beg1+length1+length2-1]}
Procedure Work(a:Tarray; beg1,length1,beg2,length2:integer; var b:TArray);
Var i,j,k:Integer; {Индексы первого и второго подмассивов и массива b}
Begin
   {Устанавливаем начальные значения индексов подмассивов}
   i:=beg1;
   j:=beg2;

   {Цикл по всем элементам}
   for k:=beg1 to beg1+length1+length2-1 do
    {Сортируем по убыванию a[i] и a[j]}
    if (j<=beg2+length2-1) and ((i>beg1+length1-1) or (a[i].key>a[j].key)) 
      then {a[i] < a[j] либо первый подмассив кончился}
         begin
           b[k]:=a[j];
           inc(j);
         end
      else {a[i] > a[j] либо второй подмассив кончился}
         begin
           b[k]:=a[i];
           inc(i);
         end
End;

{Процедура выполняет сортировку слиянием массива a длины n}
Procedure Sortirovka(var a:Tarray; n:integer);
{Переменные:
Beg - начало текущей пары подмассивов,
Len - длина подмассивов,
Len1 - длина первого подмассива,
Len2 - длина второго подмассива,
_to - определяет, в какой из массивов (а или b) бутед
  производиться слияние,
i - не используется,
B - вспомогательный массив
}
Var Beg,Len,Len1,Len2,_to,i:integer;
    B:Tarray;
Begin
  {Сначала сливаем из a в b}
  _to:=1;
  {В начале длины подмассивов равны единице}
  Len:=1;
  Repeat
    {Начиная с первого элемента}
    Beg:=1;
    {Пока в хвосте массива помещается пара подмассивов длины Len}
    While n-Beg+1>=2*Len do
      Begin
        {Сливаем эту пару подмассивов}
        if _to=1 then Work(a,Beg,Len,Beg+Len,Len,b);
                 Else Work(b,Beg,Len,Beg+Len,Len,a);
        {Переходим к следующей паре}
        Beg:=Beg+2*Len;
      End;
   {Если в конце массива остались необработанные элементы}
   If Beg<=n then 
    Begin
      {Если элементов хватает на один полноценный подмассив и еще кусочек}
      If n-Beg+1>len then begin Len1:=Len;     Len2:= n – (Beg+Len-1) end
      {В противном случае, нам хватит только на неполный первый подмассив}
                     Else begin Len1:=n-Beg+1; Len2:=0; end;
      {Досольем остатки}
      If _to=1 then Work(a,Beg,Len1,Beg+Len1,Len2,b)
               Else Work(b,Beg,Len1,Beg+Len1,Len2,a);  
    end;
    {Увеличиваем длину подмассивов в два раза}
    Len:=len*2;
    {Меняем местами массивы a и b при слиянии}
    _to:=-_to;
    {Повторяем до тех пор, пока длина одного подмассива не превысит длину
    исходных данных}
  Until len>=n;
  {Если последнее слияние происходило из a в b}
  If _to=-1 then a:=b; 
End;
