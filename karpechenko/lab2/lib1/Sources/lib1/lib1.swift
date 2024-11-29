public func getNumers(p:Int) -> [Int] {
   var nums: [Int] = [];
   for i in 4...p{
		var x = i;
		var j = 2;
		var k = 0;
		while (j * j <= x){
			if(x % j == 0){
				while(x % j == 0){
					k += 1;
					x /= j;
				}
			}
			j += 1;
		}
		if (x > 1) {k += 1}
		if (k == 2) {nums.append(i);}
   }
   return nums;
}

public func summs(a: Double, b: Double) -> Double{
	return a + b;
}

public func summs(a1: Int, b1: Int, a2: Int, b2: Int) -> [Int] {
	var numr = a1 * b2 + a2 * b1;
	var denr = b1 * b2;
	let gcd = __gcd(x: numr, y: denr);
	numr /= gcd;
	denr /= gcd;
	return [numr, denr];
}

private func __gcd(x: Int, y: Int) -> Int{
	if (y == 0){
		return x;
	}
	else{
		return __gcd(x: y, y: x % y);
	}
}