print ("\n----- Program output -----\n");


// Вариант 9

import lib1


// подзадача 1
let p = 100
print(getNumers(p: p), "\n")


// подзадача 2а
let ai = 2.456, bi = 3.2587
var x = summs(a: ai, b: bi);

// подзадача 2б
let num1 = 5, num2 = 7;
let den1 = 12, den2 = 13;
var numr = summs(a1: num1,b1: den1,a2: num2, b2: den2);


// вывод
print(ai, " + ", bi, " = ", x)
print (num1,"/",den1," + ",num2,"/",den2," = ", (numr[0] == numr[1]) ? 1 : String(numr[0])+" / "+String(numr[1]));


print ("\n------------------------------\n");
