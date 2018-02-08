program V1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
{Построение отсортированного списка}
Type pt=^rec;
     rec=record
             n:real;
           ptr:pt;
         end;
Const N=10;
Var s,p,d:pt;
    f:pointer;
    fl:boolean; {признак того,что запись уже вставлена}
    k:longint;
    x:real;
Begin
      randomize;
      new(s);  { создаем 1-й элемент списка }
      s^.n:=random(1000);  s^.ptr:=nil;
      new(p);  { создаем 2-й элемент списка }
      p^.n:=random(1000);; p^.ptr:=nil;
      if p^.n>=s^.n then
      begin  p^.ptr:=s; f:=p;  end
      else  begin s^.ptr:=p; f:=s;  end;
      new(d); {для проверки следующей записи}
      k:=2;
while k<N  do
        begin
           inc(k);
           new(p); x:=random(1000);
           p^.n:=x; p^.ptr:=nil;
           fl:=false;
 s:=f;  { s устанавливаем на начало списка }
 d:=s^.ptr;
 repeat
      { вставка в начало списка }
 if (p^.n>=s^.n) and (s=f) then
      begin  p^.ptr:=s; f:=p; fl:=true; end;

       { вставка в середину }
  if (p^.n>=d^.n) and (p^.n<s^.n) and not fl then
  begin s^.ptr:=p; p^.ptr:=d; d:=p; fl:=true  end;

       { вставка в конец списка }
  if (p^.n<d^.n) and not fl and (d^.ptr=nil) then
   begin   d^.ptr:=p; d:=p;  end;
  s:=s^.ptr; d:=d^.ptr;
until d=nil;

end;
  s:=f; { устанавливаем на первую запись }
     while s<>nil do
         begin
         writeln(s^.n:10:5);
           s:=s^.ptr;
         end;
 readln;
end.

