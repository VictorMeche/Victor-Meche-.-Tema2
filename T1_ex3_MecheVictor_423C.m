function complex = ex3()
    
    N = 10; % generez 10 numere complexe
    
    i = sqrt(-1);
    for k = 1:1:N
        rng('shuffle');
        x = randi(50); % un interval aleator din (1,50)
        y = randi(50);
        complex(k) = x*i+y;
    end
      sum = 0;
    for i = 1:1:length(complex)
        sum = sum + real(complex(i));
    end
    
    %media aritmetica
    mean = sum/length(complex)
    
    %elementele la patrat
    square = complex.*complex
    
    %matricea
    matrix = complex'*complex
    
    %complex' -> coloana


end