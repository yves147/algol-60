begin

    procedure bf(N, P, S, M);
    value N; integer N, P, S, M;

    begin

        integer array src[1 : P];
        integer array dst[1 : P];
        integer array wgt[1 : P];

        integer array rtdst[1 : N];

        integer i, j, k, l, q;

        for i := 1 step 1 until P do begin
            outstring(1, "Kante");
            outinteger(1, i);
            ininteger(0, src[i]);
            ininteger(0, dst[i]);
            ininteger(0, wgt[i]);
        end;

        for i := 1 step 1 until N do begin
            rtdst[i] := M;
        end;
        rtdst[S] := 0;

        for j := 2 step 1 until N do begin
            for k := 1 step 1 until P do begin
                integer u, v, w, o;
                u := src[k]; v := dst[k]; w := wgt[k];
                o := rtdst[u] + wgt[k];
                if rtdst[u] ^= M and o < rtdst[v] then begin
                    rtdst[v] := rtdst[u] + wgt[k];
                end;
            end;
        end;

        for l := 1 step 1 until P do begin
            integer u, v, w, o;
            u := src[l]; v := dst[l]; w := wgt[l];
            o := rtdst[u] + wgt[k];
            if (rtdst[u] ^= M and o < dst[v]) then begin
                outstring(1, "negative\n");
            end;
        end;

        for q := 1 step 1 until N do begin
            outinteger(1, q);
            outinteger(1, rtdst[q]);
            outstring(1, "\n");
        end;
    end;

    integer N, P, S, M;
    outstring(1, "N:");
    ininteger(0, N);
    outstring(1, "P:");
    ininteger(0, P);
    outstring(1, "S:");
    ininteger(0, S);
    outstring(1,"M:");
    ininteger(0, M);

    bf(N, P, S, M);

end;