begin
    comment Dieses Programm findet mit einfachen Brute-Force die ersten drei Lösungen;
    comment bis zu einer reellen Zahl n für ein pythagoreisches Zahlentripel;

    integer array A [1 : 9];
    integer itA;
    itA := 1;

    procedure aAdd(a, b, c);
        integer a, b, c;
        begin
            if itA ≤ (9 - 3) then begin
                A[itA] := a;
                itA := itA + 1;
                A[itA] := b;
                itA := itA + 1;
                A[itA] := c;
                itA := itA + 1; 
            end;
        end;

    procedure pytripelPruefung(a, b, c, j);
        integer a, b, c; procedure j;
        begin
            if (a*a + b*b = c*c) then begin
                j(a, b, c);
            end;
        end;

    procedure pytripel(n);
        value n; real n;
        integer fitA, fitB, fitC;
        begin
            for fitA := 1 step 1 until n do begin
                for fitB := 1 step 1 until n do begin
                    for fitC := 1 step 1 until n do begin
                        pytripelPruefung(fitA, fitB, fitC, aAdd)
                    end;
                end;
            end;
        end;
end;