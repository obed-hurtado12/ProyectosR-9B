#EJEMPLO 1
price <- 100
price <- "Hola"
precio = 100

if(price<100){
  print("<100")
}else{
  print(">100")
}
#EJEMPLO 2
quantity <- c(1,1,2,1,2)
quantity
   #if terniario
ifelse(quantity == 1, 'Yes', 'No')


#EJERCICIO 3 con error
price <- c(58, 100, 110)
if(price<100){
  print("<100")
}else if(price ==100){
  print("=100")
}else{
  print(">100")
}


#EJERCICIO 3 con éxito
price <- c(58,100,110)
if(all(price<100)){
  print("Todos <100")
}

if(any(price<100)){
  print("Alguno <100")
}



#FUNCIONES
days <- function(x){
  switch (x,
    Mon = "Monday",
    Tue = "Tuesday",
    Wed = "Wednesday",
    Thu = "Thursday",
    Fri = "Friday",
    "Weekend"
  )
}

days("Mon")
days(3)


#FUNCIONES MATEMÁTICAS
quantity <- c(1,2,3,4,5)
avg_qty <- function(qty, type){
  switch (type,
          arithmetic = mean(quantity),
          geometric = prod(quantity)^(1/length(quantity)))
}

avg_qty(quantity,"arithmetic")
avg_qty(quantity,"geometric")


#FOR EACH
cart <- c("apple", "cookie", "lemon")
for(product in cart){
  print(product)
}


#
price_discounted <- c(1)
price <- c(30, 120, 50, 70, 150, 100, 50, 25, 110)
for(i in 1:length(price)){
  price_discounted[i] <- price[i] -price[i] * 0.1
  #print(price_discounted[i])
}

print(price_discounted)


#CICLO WHILE
index <- 1
while(index < 3){
  print(paste("Index is ", index))
  index <- index + 1
}


#LOOP INFINITO  
x <- 1
repeat{
  print(x)
  x <- x + 1
  if( x == 3 ){
    break
    }
}


#TRABAJAR CON ARCHIVOS
#C:\Users\CC7\Downloads\resources
#C:\\Users\\Hugo\\Downloads

setwd("C:\\Users\\CC7\\Downloads\\resources")
maraton <- read.csv("maraton_ny.csv",
                    header = TRUE,
                    row.name = 1,
                    sep = ",",
                    dec = ".")
class(maraton)
dim(maraton)
names(maraton)
View(maraton)


#TIPOS DE DATOS:
   #LOGICAL
   #CHARACTER
   #NUMERIC
   #FACTOR
   #MATRIX
   #VECTOR
   #LIST
   #DATAFRAME

#CLASS es para ver que tipo de dato es una variable
#DATAFRAME es un conjunto de vectores ordenado por filas

class("Hola")
class(9)
class(9.0)
class(c(1,2,3,4,6))
class(c(13,"1","3",12))


#LAS COSULTAS QUE DEVUELVE UNA CONSULTA DE MYSQL SE LES LLAMAN REGISTROS
#LAS COSULTAS QUE DEVUELVE UNA CONSULTA DE MONGO DB SE LES LLAMAN DOCUMENTOS
#LAS COSULTAS QUE DEVUELVE UNA CONSULTA DE R SE LES LLAMAN OBSERVACIONES

#DIM es para dimensiones
dim(maraton)
#NAME es para devolver los encabezados de la tabla
names(maraton)
#STR Devuelve una descripción de la estructura de la variable
str(maraton)
#NROW Devuelve la cantidad de filas
nrow(maraton)


#INSTALAR COSAS
install.packages("dplyr")
   #Nos indica que va a ocupar el paquete descargado
library("dplyr")
   #Ruta en donde se descargó
   #C:\Users\CC7\AppData\Local\Temp\RtmpgZP4Jc\downloaded_packages

#Devuelve una descripción de la estructura de la variable de forma bonita y ordenada
glimpse(maraton)
#Hce un resumen de las columnas del archivo
summary(maraton)



