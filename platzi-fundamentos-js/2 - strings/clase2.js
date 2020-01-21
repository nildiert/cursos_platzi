var nombre = 'Nildiert', apellido = 'Jimenez';

var nombreEnMayusculas = nombre.toUpperCase();
var apellidoEnMinusculas = apellido.toLowerCase();

// Extrae primera letra
var primeraLetraDelNombre = nombre.charAt(0);

var cantidadDeLetrasDelNombre = nombre.length;


// Concatenar dos strings
var nombreCompleto = nombre + ' ' + apellido;

nombreCompleto = `${nombre} ${apellido.toUpperCase()}`;

// Substrings

var str = nombre.charAt(1) + nombre.charAt(2);
str = nombre.substr(1, 2);


// Last Element of string

lastElement = str.slice(-1);