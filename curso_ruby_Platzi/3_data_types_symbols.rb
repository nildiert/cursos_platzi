#!/usr/bin/env ruby

#Diferencia con strigs
nombre = "Nildiert"
nombre_2 = "Nildiert"

puts nombre.object_id
puts nombre_2.object_id # Los Id's son diferentes

# Los symbols son constantes, evitan que se creen nuevos objetos en memoria ...

color = :rojo
color_2 = :rojo

puts color.object_id
puts color_2.object_id # El id del objeto es el mismo

# Convertir symbol a string
puts :rojo.class
puts :rojo.to_s.class "Lo convertimos temporalmente y miramos a que clase pertenece"
puts :rojo.class

