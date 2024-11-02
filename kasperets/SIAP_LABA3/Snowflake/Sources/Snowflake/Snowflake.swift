import Foundation

public class Snowflake {
    var size: Int
    var matrix: [[Character]]
    public init() {
        print("Введите размер снежинки (нечетное число):")
        let inputSize = Int(readLine() ?? "") ?? 5
        self.size = inputSize % 2 == 0 ? inputSize + 1 : inputSize
        self.matrix = Array(repeating: Array(repeating: "-", count: self.size), count: self.size)
        self.fillSnowflake()
    }
    
    private func fillSnowflake() {
        let center = size / 2
        for i in 0..<size {
            for j in 0..<size {
                if i == center || j == center || i == j || i + j == size - 1 {
                    matrix[i][j] = "*"
                }
            }
        }
    }

    public func show() {
        for row in matrix {
            print(String(row))
        }
        print()
    }

    public func thaw(steps: Int) {
        for _ in 0..<steps {
            if size > 3 {
                size -= 2
                matrix.removeFirst()
                matrix.removeLast()
                for i in 0..<matrix.count {
                    matrix[i].removeFirst()
                    matrix[i].removeLast()
                }
            }
        }
    }

    public func freeze(steps: Int) {
        for _ in 0..<steps {
            size += 2
            matrix = [Array(repeating: "-", count: size)] + matrix.map { ["-"] + $0 + ["-"] } + [Array(repeating: "-", count: size)]
            fillSnowflake()
        }
    }

    public func thicken() {
        for i in 0..<size {
            for j in 0..<size {
                if i == 0 || i == size - 1 || j == 0 || j == size - 1 {
                    matrix[i][j] = "*"
                }
            }
        }
    }
}
