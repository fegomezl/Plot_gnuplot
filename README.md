La idea del repositorio es automatizar las graficas que usualmente se tienen que
hacer para experimentos (normal, semilog, loglog y algun tipo de fiteo).

-En el archivo settings.txt se pone el titulo de las graficas, el titulo del eje
x y el titulo del eje y, en este orden.
-El archivo de datos se pone como nombre "data.tsv"
-Para generar las graficas se usa el comando make
-El fiteo hay que configurarlo manualmente y para generar su grafica se usa make
fit
-Para limpiar pdfs y datos se usa make clean
