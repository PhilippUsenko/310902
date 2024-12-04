class Snowflake {
    private var side: Int
    private var matrix: [[Character]]
	private var thawSteps: Int = 0
    init(side: Int) {
        if side % 2 != 1 || side < 1 {
            fatalError("Side must be an positive odd number.")
        }
        self.side = side
        self.matrix = Array(repeating: Array(repeating: "-", count: side), count: side)
        self.createSnowflake()
    }


    private func createSnowflake() {
        let center = side / 2
		
        for i in 0..<side {
            matrix[i][center] = "*"
        }
		
        for i in 0..<side {
            matrix[center][i] = "*"
        }
		
        for i in 0..<side {
            for j in 0..<side {
                if i == j {
                    matrix[i][j] = "*"
                }
				
                if i + j == side - 1 {
                    matrix[i][j] = "*"
                }
				
            }
        }
    }

    func thaw() {
        thawSteps += 1
        
		for i in 0..<side {
            for j in 0..<side {
                if i == thawSteps-1 {
                    matrix[i][j] = "-"
                }
				if j == thawSteps-1 {
                    matrix[i][j] = "-"
                }
				if i == side - thawSteps {
                    matrix[i][j] = "-"
                }
				if j == side - thawSteps {
                    matrix[i][j] = "-"
                }
            }
        }
		
        
    }

    func freeze(n: Int) {
        side += 2 * n
		
		var newMatrix: [[Character]] = Array(repeating: Array(repeating: "-", count: side), count: side)
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                newMatrix[i+n][j+n] = matrix[i][j]
            }
        }
		
        matrix = newMatrix
        createSnowflake()
    }

    func thicken() {
		if (thawSteps != 0){
			createSnowflake();
			thawSteps = 0;
			return;
		}
		
		
		var k = 0;
		while k < side && matrix[0][k] != "-" {
			k+=1;
		}
		var n = side-k
		for i in 0..<n {
			matrix[i][k] = "*"
			matrix[side-1-i][k] = "*"
			matrix[k][i] = "*"
			matrix[side-1-k][i] = "*"
			k += 1
		}
		
		let centre = side / 2
		k = side / 2
		while k < side && matrix[k][0] != "-" {
			k+=1;
		}
		
		for i in 0..<side {
			matrix[k][i] = "*"
			matrix[2*centre - k][i] = "*"
			matrix[i][k] = "*"
			matrix[i][2*centre - k] = "*"
		}
		
    }

    func show() {
        for row in matrix {
			var str: String = ""
            for element in row {
				str += String(element)
				str += "   "
			}
			print(str)
        }
    }
}
