%Solucion sistema de ecuaciones no lineales mediante iteraciones de Newton
%para un sistema de dos ecuaciones.
%e^x-y=0  <-- Primer ecuación :Esta ecuación va a variar según el problema.
%xy-e^x=0 <-- Segunda ecuación :Esta ecuación va a variar según el problema.
function Newton
x=input('ingrese el valor inicial de X: ');
y=input('ingrese el valor inicial de Y: ');
itera=0;
f2=1;
f1=1;
while f1~=0 && f2~=0
    f1=4*x^2-20*x+0.25*y^2+8;     %<-- Primer funcion escrita de manera lineal
    f2=0.5*x*y^2+2*x-5*y+8;   %<-- segunda funcion escrita de manera lineal
                     %Se genera el jacobiano
        a=8*x - 20;    %<---Derivada de la primera funcion respecto a X
        b=0.5*y;        %<---Derivada de la primera funcion respecto a Y
        c=0.5*y^2+2;  %<---Derivada de la segunda funcion respecto a X
        d=x*y-5;         %<---Derivada de la segunda funcion respecto a Y
        j=[a b;c d];
        h=[x y];
        f=[f1 f2];
        resu=j\f';
        dif=(h'-resu);
        x=dif(1);
        y=dif(2);
        itera=itera+1;
end
    disp('El valor de x es ');
    disp(x);
    disp('El valor de y es ');
    disp(y);
    disp('El numero de iteraciones es de: ');
    disp(itera);
end