{Сортировка массива с исключением}
program V9;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const n=10;
var m:array [1..N] of real;
i,j,k,L,U:integer; b:real;
begin
randomize;
L:=N;
for i:=1 to L do
begin U:=random(11)-20; m[i]:=U;
write(m[i]:1:0,' ') end;
writeln;
k:=1;
repeat
i:=1;
repeat
   if m[i] = m[i+1] then
   begin  for j:=i+1 to L-1 do  m[j]:=m[j+1];  dec(L); dec(i) end
                    else if m[i] > m[i+1] then begin
                     b:=m[i]; m[i]:=m[i+1]; m[i+1]:=b  end;
inc(i);
until i>L-1;
inc(k);
until K>L-1;

for i:=1 to L do
begin  write(m[i]:1:0,' ') end;

readln;
end.