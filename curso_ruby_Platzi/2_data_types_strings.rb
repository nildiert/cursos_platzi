#!/usr/bin/env ruby

# Declaración de String
saludo = "Hola"

puts saludo

# Otras formas de declarar un string

saludo = 'Hola'
puts saludo
saludo = %q(Hola)
puts saludo
saludo = %Q(Hola)
puts saludo

# Interpolacion de variables

nombre = "Pepe"
saludo = "Hola #{nombre}"

puts saludo

saludo = %Q(Hola #{4 + 5})
puts saludo 

# METODOS DE LA CLASE STRING

puts saludo.class
print saludo.methods
puts

# UpperCase (Todo en mayus)

puts "nildiert jimenez".upcase

# LowerCase (Todo en mayus)
puts "nildiert jimenez".downcase

# Length
puts "nildiert".length

# SwapCase

puts "nIlDiErT".swapcase

# Verificar si una cadena incluye algun caracter
puts "nildiert".include? "z"
puts "nildiert".include? "i"
puts "nildiert".include? "I"

# Quitar espacios al principio y al final
puts "       nildiert        "
puts "       nildiert        ".strip

# Verificar si un string esta vacio

puts "".empty?
puts "nildiert".empty?

# Reemplazar algo dentro de un string
puts "Nildiert Jimenez".gsub("Jimenez", "Jaramillo")

# Concatenar Strings
nombre = "Nildiert"
puts nombre + " Jimenez"

# Multiplicar un string
puts nombre * 2

# Aplicar resultado en el mismo metodo sin generar una copia
puts nombre.gsub("Nildiert", "Pancracio")
puts nombre # Se genero una copia

puts nombre.gsub!("Nildiert", "Pancracio")
puts nombre # Se aplico el cambio sobre la misma variable