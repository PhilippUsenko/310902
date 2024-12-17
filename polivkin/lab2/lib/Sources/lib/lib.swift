public func evclid(_ a: Int, _ b: Int) -> Int {
  var a = a
  var b = b
  while b != 0 {
    let temp = b
    b = a % b
    a = temp
  }
  return abs(a)
}

public func readInt() -> Int? {
  if let line = readLine(), let value = Int(line) {
    return value
  } else {
    print("Error: Incorrect input. Enter an integer.")
    return nil
  }
}


public func Shift(arr: [Int]) -> [Int] {
  if arr.isEmpty { return [] }

  let firstElement = arr[0]
  let shiftAmount: Int
  var shiftedArr = [Int]()

  if firstElement % 2 == 0 { 
    shiftAmount = firstElement
    let realShiftAmount = shiftAmount % arr.count
    

for i in realShiftAmount..<arr.count {
    shiftedArr.append(arr[i])
}

for i in 0..<realShiftAmount {
    shiftedArr.append(arr[i])
}
  } else { 
    let lastElement = arr[arr.count-1]
    shiftAmount = lastElement
    let realShiftAmount = shiftAmount % arr.count

for i in arr.count-realShiftAmount..<arr.count {
    shiftedArr.append(arr[i])
}

for i in 0..<arr.count-realShiftAmount {
    shiftedArr.append(arr[i])
}
    
  }

  
  return shiftedArr
}
