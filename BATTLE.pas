program battleships;

uses crt;

var players : array [1..2] of string;
position : string;
playerCoords : array [1..10, 1..10] of string;
x,y,current:integer;

function getX : integer;
begin
	if (position[1] = 'A') xor (position[1] = 'a') then
	begin	
		getX := 1;
		x := 10;
	end
	else if (position[1] = 'B') xor (position[1] = 'b') then
	begin	
		getX := 2;
		x := 14;
	end
	else if (position[1] = 'C') xor (position[1] = 'c') then
	begin	
		getX := 3;
		x := 18;
	end
	else if (position[1] = 'D') xor (position[1] = 'd') then
	begin	
		getX := 4;
		x := 22;
	end
	else if (position[1] = 'E') xor (position[1] = 'e') then
	begin	
		getX := 5;
		x := 26;
	end
	else if (position[1] = 'F') xor (position[1] = 'f') then
	begin	
		getX := 6;
		x := 30;
	end
	else if (position[1] = 'G') xor (position[1] = 'g') then
	begin	
		getX := 7;
		x := 34;
	end
	else if (position[1] = 'H') xor (position[1] = 'h') then
	begin	
		getX := 8;
		x := 38;
	end
	else if (position[1] = 'I') xor (position[1] = 'i') then
	begin	
		getX := 9;
		x := 42;
	end
	else if (position[1] = 'J') xor (position[1] = 'j') then
	begin	
		getX := 10;
		x := 46;
	end
	else getX := 0;
end;

function getY : integer;
begin
	if (position[2] = '1') and (position[3] <> '0') then
	begin	
		getY := 1;
		y := 4;
	end
	else if position[2] = '2' then
	begin
		getY := 2;
		y := 6;
	end
	else if position[2] = '3' then
	begin
		getY := 3;
		y := 8;
	end
	else if position[2] = '4' then
	begin
		getY := 4;
		y := 10;
	end
	else if position[2] = '5' then
	begin
		getY := 5;
		y := 12;
	end
	else if position[2] = '6' then
	begin
		getY := 6;
		y := 14;
	end
	else if position[2] = '7' then
	begin
		getY := 7;
		y := 16;
	end
	else if position[2] = '8' then
	begin
		getY := 8;
		y := 18;
	end
	else if position[2] = '9' then
	begin
		getY := 9;
		y := 20;
	end
	else if (position[2] = '1') and (position[3] = '0') then
	begin
		getY := 10;
		y := 22;
	end
	else getY := 0;
end;

function getPos : integer;
begin
	GoToXY(70, 10);
	write('N/A');
	for current := 6 downto 1 do
	begin
		GoToXY(70,8);
		write(current);
		GotoXY(70,14);
		readln(position);
		playerCoords[getX,getY] := 'X';
		GoToXY(x,y);
		write(chr(254));
		GoToXY(70,14);
		ClrEol;
		GoToXY(74,14);
		write(chr(186));
		GoToXY(70,14);
	end;
end;
begin
	clrscr;
	TextColor(White);

	writeln('Welcome to Battleships recruit!');
    writeln;
	writeln('Your objective is to destroy all of your opponents ships.');
	writeln('You are playing against the computer.');
	writeln('Sink ships by entering coordinates on the board below.');
    writeln;
	writeln('"X" means you hit the opponents ship.');
	writeln('"O" means you missed the opponents ship.');
        writeln;
        writeln('Press ENTER to start the game...');
        readln;
        clrscr;
        writeln;
        writeln('         A   B   C   D   E   F   G   H   I   J');
        writeln('       ÉÍÍÍËÍÍÍËÍÍÍËÍÍÍËÍÍÍËÍÍÍËÍÍÍËÍÍÍËÍÍÍËÍÍÍ»');
        writeln('     1 º   º   º   º   º   º   º   º   º   º   º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹');
        writeln('     2 º   º   º   º   º   º   º   º   º   º   º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
        writeln('     3 º   º   º   º   º   º   º   º   º   º   º       º Ships Left:     º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹       º                 º');
        writeln('     4 º   º   º   º   º   º   º   º   º   º   º       º Moves Made:     º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
        writeln('     5 º   º   º   º   º   º   º   º   º   º   º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
        writeln('     6 º   º   º   º   º   º   º   º   º   º   º       º Coordinate:     º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹       º                 º');
        writeln('     7 º   º   º   º   º   º   º   º   º   º   º       º Result:         º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
        writeln('     8 º   º   º   º   º   º   º   º   º   º   º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹');
        writeln('     9 º   º   º   º   º   º   º   º   º   º   º');
        writeln('       ÌÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍÎÍÍÍ¹');
        writeln('    10 º   º   º   º   º   º   º   º   º   º   º');
        writeln('       ÈÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍÊÍÍÍ¼');
	getPos;
	readln;
	
end.
