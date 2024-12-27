////////////////////////////////////////////
//              Num of odds               //
////////////////////////////////////////////
private func numOfOdds() {
	print("===Num of odds===")
	print("Enter array size:")
	let n = Int(readLine()!) ?? 0
	
	if (n <= 0) {
	    print("Illegal array size")
	    return
	}
	
	print("Enter elements:")
	//var a: [Int] = []
	var odds = 0
	
	for _ in 1...n {
	    if let num = Int(readLine()!) {
	        //a.append(num)
	        if (num & 1 != 0) { odds += 1 }
	    } else {
	        print("Illegal number")
	    }
	}
	
	print("Number of odds: \(odds)")
}
////////////////////////////////////////////
//             Num of spaces              //
////////////////////////////////////////////
private func numOfSpaces() {
	print("===Num of spaces===")
	print("Enter string:")
	let str = readLine()!
	var spaces = 0
	
	for ch in str where ch == " " {
	    spaces += 1
	}
	
	print("Number of spaces: \(spaces)")
}
////////////////////////////////////////////
//                Program                 //
////////////////////////////////////////////
numOfOdds()
print()
print()
numOfSpaces()