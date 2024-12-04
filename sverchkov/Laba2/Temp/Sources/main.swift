// import Swift
import Foundation
import tasks

print("\n-------------- Start ---------------")

print("\n-------------- Task1 ---------------\n")

print("Decimal: \t1928365 \nBinary:  \t\(decToBin(x: 1928365))")

print("\n-------------- Task2 ---------------\n")

var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
print(array)
print("Number of simple numbers - \(fundSimpleNumber(array: array))" )

print("\n-------------- Task3 ---------------\n")

var string = "Hello World! gfdg lkjk  hjklkjH dfgd ls dfh oej skd dfs Sous hhh"
print(string)
print("Number of tautograms - \(getNumberOfTautograms(str: string))" )

print("\n-------------- Finish ---------------\n")
