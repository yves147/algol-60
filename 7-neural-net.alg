begin
    comment Dieses neuronale Netzwerk hat einen Input-Layer mit zwei Eingangsknoten und eine Ausgabeschicht mit einem Ausgangsknoten. Es wird mit stochastischem Gradientenabstieg trainiert, um den Fehler zu minimieren und anschliessend auf Eingabewerte getestet;

    real input[2], weights[2], bias, output, target;
    integer i, j, epochs;
    
    comment init and random bias;
    weights[1] := rand(0.0, 1.0);
    weights[2] := rand(0.0, 1.0);
    bias := rand(0.0, 1.0);
    
    target := 1.0;
    
    comment training / stochastic gradient descent;
    for epochs := 1 step 1 until 100 do begin
        input[1] := rand(0.0, 1.0);
        input[2] := rand(0.0, 1.0);
        
        output := input[1] * weights[1] + input[2] * weights[2] + bias;
        
        comment compute error;
        error := target - output;
        
        comment update weights & bias w/ learning rate;
        weights[1] := weights[1] + error * input[1] * 0.1;
        weights[2] := weights[2] + error * input[2] * 0.1;
        bias := bias + error * 0.1;
    end;
    
    comment test;
    input[1] := 0.5;
    input[2] := 0.7;
    
    comment compute;
    output := input[1] * weights[1] + input[2] * weights[2] + bias;
    
    print(output);
end;