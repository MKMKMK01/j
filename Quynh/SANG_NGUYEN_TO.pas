{$mode objfpc}
uses crt;
const fi='sangnguyento.inp';
      fo='sangnguyento.out';

var a,b:longint;
    P:array[1..10000000000] of boolean;

procedure doc;
begin
        assign(input,fi);
        reset(input);
        readln(b);
        close(input);
end;

procedure sang;
var i,j:longint;
begin
        for i:=2 to trunc(sqrt(b)) do
        if p[i] then
        begin
                j:=i*i;
                        while (j<=b) do
                        begin
                                p[j]:=false;
                                inc(j,i);
                        end;
        end;
end;

procedure xuat;
var i:longint;
begin
        assign(output,fo);
        rewrite(output);
        fillchar(p,sizeof(p),true);
        sang;
        writeln(high(longint));
        for i:=1 to b do if p[i] then write(i,' ');
        close(output);
end;

begin
        doc;xuat;
end.
