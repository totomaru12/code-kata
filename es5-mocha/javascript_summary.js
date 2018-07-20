// usage: $ node javascript_summary.js
//
// This source is based on the under page
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript

console.log("Hello World");

console.log('\n## Numbers"');

console.log('\nNumbers in JavaScript are "double-precision 64-bit format IEEE 754 values"');
var value = 0.1 + 0.2;
console.log(value); // 0.30000000000000004

console.log('\nThe standard arithmetic operators are supported ex) Math')
var radius = 1;
var circumference = 2 * Math.PI * radius;
console.log(circumference);
 
console.log('\nYou can convert a string to an integer using the built-in parseInt() function')
console.log(parseInt('010'));   // 10
console.log(parseInt('0x10'));  // 16
console.log(parseInt('11', 2));  // 3

console.log('\nTest parseInt("10.2abc") and parseFloat("10.2abt") and +"10.2abt"')
var numMixedString = "10.2abc";
console.log(parseInt(numMixedString));
console.log(parseFloat(numMixedString));
console.log(+ numMixedString);

console.log('\nA special value called NaN (short for "Not a Number") is returned');
console.log(parseInt('hello', 10)); // NaN

console.log('\nNaN mathematical operation will result also be NaN')
console.log(NaN + 5);   // NaN

console.log('\nYou can test for NaN using the built-in isNaN() function');
console.log(isNaN(NaN));    // true

console.log('\nJavaScript also has the special values Infinity and -Infinity')
console.log(1 / 0);     // Infinitiy
console.log(-1 / 0);    // -INfinity

console.log('You can test for Inifinity, -Infinity and NaN values using the build-in isFinite() function')
console.log(isFinite(1 / 0));   // false
console.log(isFinite(-Infinity)); // false
console.log(isFinite(NaN)); // false
console.log(isFinite(1)); // true

console.log('\n== Strings');

console.log('hello'.length);    // 5
console.log('hello'.charAt(0)); // "h"
console.log('hello, world'.replace('world', 'mars')); // "hello, mars"
console.log('hello'.toUpperCase()); // "HELLO"


console.log('\n== Other types');

// null indicates a deliberate non-value
// undefined indicates an uninitialized value

// false, 0, empty strings (""), NaN, null, and undefined all become false.
// All other values become true.

console.log('You can perform this conversion explicitly using the Boolean() function');
console.log(Boolean(''));   // false
console.log(Boolean(234));  // true

// TODO: the next is Variables