#!/usr/bin/env ruby


# Creacion de hash

capitales = {}

# Verificar el tipo de la variable
puts capitales.class

# Verificar methods del hash
 print capitales.methods
 puts

 # Agregando elementos al hash
capitales = {"Colombia"=>"Bogota"}

# Agregar nuevos paises
capitales["Mexico"] = "Ciudad de México"

puts capitales

# Imprimir capital de un pais
puts capitales["Mexico"]

capitales = {
    "Mexico" => "Ciudad de Mexico",
    "Colombia" => "Bogota",
    "Peru" => "Lima",
    "Chile" => "Santiago de Chile",
    "España" => "Madrid",
    "Argentina" => "Buenos Aires",
    "Paises bajos" => "Amsterdam",
    "Estados Unidos" => "Washington"
}

puts capitales["Peru"]

# Verificar si el hash es vacio
puts capitales.empty?

# Verificar si el hash tiene un valor que necesitamos
puts capitales.has_value? "Washington"
puts capitales.has_value? "Estados Unidos" # en este caso nos dice que no tenemos este valor (Porque es una clave)

puts capitales.has_key? "Estados Unidos" # En este caso nos retorna True, porque ahora si buscamos en las llaves


# Convertir valores a llaves
print capitales.invert
puts
print capitales
puts

## Invertir solo un valor
puts capitales.invert["Bogota"]

# Agregar un valor
capitales.merge!({"Marte" => "Musk"})

print capitales
puts


# Transformar valores de un hash
print capitales.transform_values { |x| x.downcase }
puts

# Transformar valores con map
puts capitales.map { |k, v| "La capital de #{k} es #{v}"}

# Crear un hash a partir de parejas de arreglos
puts [["pepito", 13], ["sutanito", 14]].to_h