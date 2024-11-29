import lib

print("\n----- Program out -----\n")




var a: vector = vector(3,2,1);
var b = vector(-2,-3,1);
print("a: ", a.toString(), ", b: ", b.toString())

print("plus: ", a.toString(), " + ", b.toString(), " = ", a.plus(b).toString())
print("minus: ", a.toString(), " - ", b.toString(), " = ", a.minus(b).toString())
print("scalar multiplication: ",a.toString(), " . ", b.toString(), " = ",  a.mulS(b))
print("vector multiplication: ", a.toString(), " * ", b.toString(), " = ", a.mulV(b).toString())
print("constant mutiplication: ", a.toString(), " . 2,45 = ", a.mulC(2.45).toString())
print("division: ", a.toString(), " / 2 = ", a.div(2).toString())
print("length a: ", a.length())


print("\n---------------------------\n")