{Построение динамического списка}
program V3;
{$APPTYPE CONSOLE}
uses
  SysUtils;

type  tpo=^tn; tn=record x:real; p1,p2:tpo;  end;
var s,b:tpo; f,k:pointer;
    i,n,x,dd:integer; z:real;
begin
 n:=6; dd:=9;
         {Сосдание списка}
  new(s); randomize; z:=random(100)-50; s^.x:=z; f:=s; s^.p2:=nil;
for i:=1 to n-1 do begin new(b); z:=random(100)-50; b^.x:=z;
                         s^.p1:=b; b^.p2:=s; s:=b; end;
  s^.p1:=nil; k:=s;

Writeln('Прямой вывод: ');
s:=f; while s<>nil do begin  writeln(s^.x:1:1); s:=s^.p1; end;
writeln;
Writeln('Обратный вывод: ');
b:=k; while b<>nil do  begin writeln(b^.x:1:1); b:=b^.p2; end;
writeln;
Writeln('     Результат: ');
s:=f; b:=k;
while s<>nil do
  begin z:=s^.x+ b^.x;  writeln(z:1:1);
        s:=s^.p1; b:=b^.p2;  end;
readln;
end.

