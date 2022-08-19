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
