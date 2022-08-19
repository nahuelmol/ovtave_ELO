[w1 j] = sort(w) 
//"sort" nombre de la funcion, 
//"w1" "j"  parametros de salida
//"w" valor de entrada

########################################################################

//se pueden crear funciones respetando la sintaxis anterior
//se utiliza "function"

//para "y = -x^2 + 2*x - 5" decimos:

//esto genera un archivo llamado "exe_7.m", debo guardarlo asi poara que se ejecute desde consola, 
//ademas debo cambiar el directorio de trabajo poraquel donde se encuentra octave y asi me lo encuentre
function y = exe_7(x)
  y = -x^2 + 2*x - 5;
endfunction

##cmd
  x=3 //por ejemplo
  y = exe_7(x)
  
//si x es un vector, agrego el punto a x, asi la funcion se aplicara para cada valor del vector, x= -3:0.1:3
  
##cmd
  x= -3:0.1:3
//modifico el script
  function y = exe_7(x)
    y = -x.^2 + 2*x - 5;
  endfunction
  
##cmd
  y = exe_7(x) //obtengo un nuevo valor
  

########################################################################

//encontrar valores maximos y minimos
    
>>[valor j] = max(y)
>>[val_min k]= min(y)
   
>>x(j) //para encontrar el maximo. aprovecho que tengo la posicion
>>x(k) //para encontrar el minimo
    
    
########################################################################
    
//para graficar la funcion
>>plot(x,y)
>>plot(1,1) //graficando un punto
    
>>hold on //debo usarlo para la grafica siga de fondo y no se sobrescriba

>>plot([-3 3],[0 0],'k')
>>plot([0 0],[val_min 0],'k')
    
########################################################################
//funcion handle
>>f=@(x) -x.^2 + 2*x - 5; 
>>yl=f(x)
  
########################################################################
//labels
>>xlabel('Puntos de x')
>>ylabel('Evaluacion de la funcion')
>>title('Titulo del grafico')
  
########################################################################

//punto 12
//de una funcion cuadratica, las constantes pueden considerarse un vector
//1) a=3;b=1; c=1
  
a=[3 1 2]
b=[1 -4 9]
c=[1 3 -5]

