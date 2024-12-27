func rep(n: Int) -> Int {
    var num = n
    var sum = 0
    
    while (num > 0) {
        let rem = num % 10
        num /= 10
        sum += rem*rem
    }
    
    return sum
}


print("Enter N:")
guard var n = Int(readLine()!) else {
    fatalError("Illegal N")
}

print("Enter K:")
guard var k = Int(readLine()!) else {
    fatalError("Illegal K")
}

while (0 < k) {
    n = rep(n: n)
    k -= 1
}

if (0 <= k) { print("Result: \(n)") }
else { print("K must be positive") }

