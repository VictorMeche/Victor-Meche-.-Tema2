function ex1()
    a = 0:0.1:2; % de la 0 la 2, cu pasul 0.1
    b = ones(21,1); % trebuie sa aiba 21 de elemente , toate sunt 1
    
   p = a*b;
    a*b; % rezultatul este numar
   p_revers = b*a;
    b*a; % rezultatul este matrice

    for i = 1:1:length(a)
        ans(i) = b(i)*a(i);
    end % inmultire element cu element
        % rezultatul este vectorul a , fiind inmultit cu 1 fiecare element
    