begin
    comment Dieses Programm berechnet die Fakultät einer Zahl I mithilfe einer Prozedur;

    procedure fakultaet(n);
        value n; real n;
        begin

        integer I, S, iterator;
        I := n;
        S := 1;

        for iterator := I step -1 until 1 do begin
            S := S * iterator;
        end;

        outinteger(1, S);
        outstring(1, "\n");

    end;

    fakultaet(10)

end;
