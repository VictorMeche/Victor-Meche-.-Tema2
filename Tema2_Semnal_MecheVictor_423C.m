P=40; 
D=14; 
w0=2*pi/P; 
t_tr=0:0.01:D;
x_tr= sawtooth((pi/12)*t_tr,0.5)/2+0.5; 
t = 0:0.01:P; 
x = zeros(1,length(t)); 
x(t<=D)=x_tr; 
figure(1);
plot(t,x); 
title('semnalul x(t)(linie continua) ; reconstructia folosind N coeficienti (linie intrerupta)');
hold on;


for k=-50:50
    x_t = x_tr;
    x_t = x_t .* exp(-j*k*w0*t_tr); 
    X(k+51)=0; 
    for i = 1: length(t_tr)-1
        X(k+51) = X(k+51) + (t_tr(i+1)-t_tr(i))* (x_t(i)+x_t(i+1))/2; 
    end
end
    


for i = 1: length(t)
    x_finit(i) = 0;
    for k=-50:50
        x_finit(i) = x_finit(i) + (1/P)*X(k+51)*exp(j*k*w0*t(i)); 
    end
end
plot(t,x_finit,'--'); 
figure(2);
w=-50*w0:w0:50*w0; 
stem(w/(2*pi),abs(X)); 

