{Обменная сортировка}
program V8;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const N=10;
var
m:array  [1..N] of integer;
i,j,k,b,min:integer;
  Begin
      randomize;
  for i:=1 to N do begin m[i]:=random(15)-20;write('  ',m[i]) end;
     for j:=1 to N do
         begin  min:= m[j]; k:=j;
              for i:=j to N do if m[i]<min then

              begin min:=m[i]; k:=i end;
               b:=m[j]; m[j]:=min; m[k]:=b;
          end;
 writeln;
 for i:=1 to N do begin write('  ',m[i]) end;
 readln;
       end.














