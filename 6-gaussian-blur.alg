begin
    real input[25], output[25], kernel[25];
    integer i, j, k, l;
    
    comment any values eligible here;
    input := [1.0, 2.0, 3.0, 4.0, 5.0,
              6.0, 7.0, 8.0, 9.0, 10.0,
              11.0, 12.0, 13.0, 14.0, 15.0,
              16.0, 17.0, 18.0, 19.0, 20.0,
              21.0, 22.0, 23.0, 24.0, 25.0];
    
    comment initialize kernel;
    kernel := [0.002969, 0.013306, 0.021938, 0.013306, 0.002969,
               0.013306, 0.059634, 0.098320, 0.059634, 0.013306,
               0.021938, 0.098320, 0.162103, 0.098320, 0.021938,
               0.013306, 0.059634, 0.098320, 0.059634, 0.013306,
               0.002969, 0.013306, 0.021938, 0.013306, 0.002969];
    
    comment gaussian blur;
    for i := 1 step 1 until 25 do begin
        output[i] := 0.0;
        for k := -2 step 1 until 3 do begin
            for l := -2 step 1 until 3 do begin
                j := (i - 1) div 5 + 1;
                m := (i - 1) mod 5 + 1;
                if j+k >= 1 and j+k <= 5 and m+l >= 1 and m+l <= 5 then begin
                    output[i] := output[i] + input[(j+k-1)*5 + (m+l)] * kernel[(k+3)*5 + (l+3)];
                end;
            end;
        end;
    end;
    
    print(output);
end;