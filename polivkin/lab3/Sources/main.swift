import lib

let chessBoard = ChessBoard()


var coordinates: (Character, Int)? = nil
    
 while coordinates == nil {
 coordinates = getUserInput()
 }


 let (column, row) = coordinates! 
    chessBoard.placeQueen(column: column, row: row)
    chessBoard.display()

