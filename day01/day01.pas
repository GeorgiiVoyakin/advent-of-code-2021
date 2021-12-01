Program day01;

const
  FileName = 'input.txt';
var
  counter, number, prev: integer;
  f: text;
begin
  assign(f, FileName);
  reset(f);
  counter := 0;
  prev := maxint;

  while not SeekEof(f) do
  begin
    readln(f, number);
    if number > prev then
    begin
      counter := counter + 1
    end;
    prev := number
  end;
    writeln(counter);
end.
