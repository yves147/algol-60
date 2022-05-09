begin
    procedure istPrimzahl (n);
        value n; integer n;
        begin
            boolean primeB;
            integer it;
            if (n <= 1) then go to ende;
            primeB := true;
            for it := 3 step 1 until sqrt(n) do begin
                if (primeB = true) then begin
                    if (n mod it = 0) then begin
                        primeB := false;
                    end;
                end;
            end;
            if (primeB = true) then begin
                outstring(1, "Primzahl!");
            end else begin
                outstring(1, "Keine Primzahl!");
            end;
            outstring(1, "\n");
            ende:;
        end;
    
    integer nEingabe;
    ininteger(0, nEingabe);

    istPrimzahl(nEingabe);
end;