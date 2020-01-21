#!/usr/bin/env ruby

# Declaracion de array
letras = ["q", "w", "e", "r", "t", "y"]

#Verificar la clase
puts letras.class

# Contar la cantidad de elementos en el array
puts letras.size

# Acceder a posiciones especificas de un array
puts letras[2]

# Acceder de atras hacia adelante 
puts letras[-2]

# Si accedo a una posicion que no existe ..
puts letras[100]

# El objeto metodo que retorna el metodo methods, es un array
puts letras.methods.class

# Imprimir la cantidad de metodos disponibles
puts letras.methods.size

# Verificar si se incluye un elemento en el array

puts letras.include? "w" # SI se incluye
puts letras.include? "p" # No se incluye

# Retornar el ultimo elemento
puts letras.last

# Metodos que utilizan lambda
puts letras.count { |x| x == "q"} # Aqui contamos la cantidad de elementos que contengan 'q'

puts [1, 2, 3, 4, 5].count { |x| x.even?} # Aqui contamos la cantidad de elementos pares


# Transformar cada uno de los elementos del arreglo

print [1, 2, 3, 4, 5].map {|x| x**2} # Esto retorna el cuadrado de cada elemento
puts

# Filtrar elementos que cumplan una condicion

print [1, 2, 3, 4, 5].select { |x| x.odd?} # Filtramos los elementos impares
puts


# Retornar el elemento mas pequeño y el mas grande de un array
puts [1, 2, 3, 4, 5].min
puts [1, 2, 3, 4, 5].max


# Sumar todos los elementos de un array
puts [1, 2, 3, 4, 5].sum


# Los arreglos no son de un tipo especifico
array = [4, 4.5, "string", :symbol, []]

print array.map { |x| x.class} # Retorna la clase de cada uno de los elementos
puts

# Dividir un string por espacios u otro caracter
puts "hola mundo".split(" ")

# Contar la cantidad de palabras despues de la division
puts "hola mundo".split(" ").size

# UPCASE para cada uno de los elementos despues del split
puts "hola mundo".split(" ").map { |x| x.upcase }

# Split y join para unir las partes separadas previamente
puts "hola mundo".split(" ").map { |x| x.upcase }.join("_")

# Ordenar un arreglo
letras_ordenadas = letras.sort # ESto genera una copia, pero si queremos cambiar el contenido
# en el array debemos incluir ! ... letras.sort!
print letras_ordenadas
puts
print letras
puts
letras.sort!
print letras
puts