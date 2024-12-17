public class ChessBoard{
public var size = 8
public var board :[[String]]

 public init(){
 board = Array(repeating: Array(repeating: ".", count: size), count: size)
 }


 public func placeQueen(column: Character, row: Int) {
       
         let columnIndex = column.asciiValue!
        let col = Int(columnIndex) - Int(Character("a").asciiValue!)
        let row = 8 - row 
        

        
        for i in 0..<size {
           
            board[row][i] = "*"
            board[i][col] = "*"
            
           
            if row + i < size && col + i < size { board[row + i][col + i] = "*" }
            if row - i >= 0 && col - i >= 0 { board[row - i][col - i] = "*" }
            if row + i < size && col - i >= 0 { board[row + i][col - i] = "*" }
            if row - i >= 0 && col + i < size { board[row - i][col + i] = "*" }
        }
        
        
        board[row][col] = "Q"
    }



public func display(){

for i in 0..<size{
 for j in 0..<size{
 print("\(board[i][j])" , terminator: " " )
 }
 print()
}

}

}

public func getUserInput() -> (Character, Int)? {
    if let input = readLine(), input.count == 2 {
        let column = input.first!
        let rowChar = input.last!
        
        if column >= "a" && column <= "h", let row = Int(String(rowChar)), row >= 1 && row <= 8 {
            return (column, row)
        }
    }
    
    return nil
}