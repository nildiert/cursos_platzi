// Operaciones más comunes

var edad = 27


// Incrementos 

edad = edad + 1;
edad += 1;

var peso = 75;

// Decrementos 
peso = peso - 2;
peso -= 2;


var sandwich = 1;
peso = peso + sandwich;

var jugarAlFutbol = 3
peso = peso - jugarAlFutbol;
peso -= jugarAlFutbol


// Decimales

var precioDeVino = 200.3

var total = precioDeVino * 3; // JS No es preciso cuando trabaja con decimales
var totalPreciso = precioDeVino * 100 * 3 / 100 // Aquí si es preciso,
// cuando multiplicamos y dividimos por un entero

// Puede ser más preciso ... 
totalPreciso = Math.round(precioDeVino * 100 * 3) / 100

// Agregar la cantidad de decimales que van a aparecer

var totalStr = total.toFixed(2) // Esto lo convierte en un String

// Convertir a número
var total2 = parseFloat(totalStr)

var pizza = 8
var personas = 2 
var cantidadDePorcionesPorPersona = pizza / personas