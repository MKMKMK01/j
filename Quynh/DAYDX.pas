uses math;
const fi='DAYDX.INP';
      fo='DAYDX.OUT';

var n,max:longint;
    A:array[1..5000] of longint;

PROCEDURE doc;
var i:longint;
begin
  assign(input,fi);reset(input);
  readln(n);
  for i:=1 to n do read(a[i]);
  close(input);
end;


function kt(x,y:longint):boolean;
var t1,t2:ansistring;
    i:longint;
begin
  for i:=x to y do if a[i]<>a[(y-x+1)-i+1] then exit(false);
  exit(true);
end;

procedure xuat;
var i,j:longint;
begin
  assign(output,fo);rewrite(output);
  max:=0;
  for i:=1 to n do
  begin
    for j:=1 to i-1 do if kt(i,j) then
    if (j-i+1)>max then max:=(j-i+1);
  end;
  write(max);
  close(output);
end;

begin
  doc;xuat;
end.
