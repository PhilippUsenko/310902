
public func decToBin(x: Int = 0) -> String
{

var number = x;
var binary: String = ""

while number > 0 {
  if number % 2 == 0 {
    binary = "0" + binary
  } else {
    binary = "1" + binary
  }
  number = number / 2
}

return binary
}

public func fundSimpleNumber(array: [Int]) -> Int {
	var n = 0
	for value in array[1..<array.count] {
        if isSimple(x: value){
			n += 1;
		}
    }
	return n;
}

func isSimple(x: Int) -> Bool {
	if x <= 3 { return true; }
	for i in 2...(x / 2 + 1) {
		if x % i == 0 {
			return false;
		}
	}	
	return true;
}

public func getNumberOfTautograms(str: String) -> Int{
	var string = str.lowercased()

	
	var first: Character = "^"
	var last: Character = " "
	var n = 0
	for ch in string {
		if ch >= "a" && ch <= "z"{
			if first == "^"{
				first = ch
			}
		} else if first == last {
			n += 1
			first = "^"
		} else {
			first = "^"
		}
		last = ch
	}
	
	if first == last {
		n += 1
	} 
	return n
}