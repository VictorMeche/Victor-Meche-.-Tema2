function ex2()
 x = normrnd(0,1,1,20);
 %generare  rand de 20 de elemente aleatoare cu distributie narmala
 %gaussiana ; mu=0 , sigma=1.
 N = []; %un vector unde se cancateneaza elementele negative
 for i = 1:1:length(x)
    if x(i) < 0
        N = [N x(i)];
    end
 end
 N
end