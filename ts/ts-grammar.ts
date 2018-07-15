// This practice source code is based on the under page.
// https://www.typescriptlang.org/docs/handbook/basic-types.html

console.log("hello world");


console.log('\n## Basic Types\n');


console.log('\n### Boolean\n');

let isDone: boolean = false;
console.log(isDone);    // false


console.log('\n### Number\n');
let decimal: number = 6;
console.log(decimal); // 6

let hex: number = 0x0f;
console.log(hex); // 15

let binary: number = 0b10;
console.log(binary); // 2

let octal: number = 0o10;
console.log(octal); // 8

console.log('\n### String\n');

let color: string = "blue";
console.log(color);
color = 'red';
console.log(color); // red

let fullName: string = `Bob Bobbington`;
console.log(fullName); // Bob Bobbington

let age: number = 37;
let sentence: string = `Hello, my name is ${ fullName }.

I'll be ${ age + 1 } years old next month.`;
console.log(sentence);
// Hello, my name is Bob Bobbington.
// 
// I'll be 38 years old next month.

let sentenceSameAbove = "Hello, my name is " + fullName + ".\n\n"
    + "I'll be " + (age + 1) + " years old next month.";
console.log(sentenceSameAbove);
// Hello, my name is Bob Bobbington.

// I'll be 38 years old next month.

