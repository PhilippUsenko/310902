// The Swift Programming Language
// https://docs.swift.org/swift-book
import lib

guard let n = readInt(), let m = readInt(), let q = readInt(), let p = readInt() else {
  fatalError("Incorrect input.")
}

var n1=n,m1=m,q1=q,p1=p 
if(n>0&&m<0){
    n1=0-n
    m1=abs(m)
}
if(q>0&&p<0){
    q1=0-q
    p1=abs(p)
}

let zn = m1 * p1
let ch = n1 * p1 - q1 * m1


let common = evclid(abs(ch), zn)
let simplifiedch = ch / common
let simplifiedzn = zn / common

if(ch == 0){
print("answer: 0")
}
else{
print("answer: \(simplifiedch)/\(simplifiedzn)")
}


var arr=[4,2,7,8,3,1]
var shiftedarr = Shift(arr: arr)
print("initial: \(arr), with a shift: \(shiftedarr)")

arr=[3,2,7,8,3,8]
shiftedarr = Shift(arr: arr)
print("initial: \(arr), with a shift: \(shiftedarr)")

arr=[10,6,234,6,2,5]
shiftedarr = Shift(arr: arr)
print("initial: \(arr), with a shift: \(shiftedarr)")

arr=[3,26,19,8,3,2]
shiftedarr = Shift(arr: arr)
print("initial: \(arr), with a shift: \(shiftedarr)")





