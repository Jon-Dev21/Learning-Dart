// Program that checks for chess piece moves.

import 'dart:io'; // Importing dart:io to enter input.

enum ChessPiece { King, Queen, Rook, Bishop, Knight, Pawn }

void main() {
  int errorCnt = 0;
  int maxErrors = 3;

  while (true) {
    print("Enter a Chess piece.");
    print("Valid Input: King, Queen, Rook, Bishop, Knight, Pawn");

    String? chessPiece = stdin.readLineSync();
    if (validateInput(chessPiece.toString())) {
      chessPieceMove(chessPiece.toString().toLowerCase());
      break;
    } else {
      print("Incorrect input\n");
      errorCnt++;
      if(errorCnt == maxErrors){
        print("Too many errors. Closing program");
        break;
      }
        
    }
  }
}

/// Prints the move of the specified chess piece.
void chessPieceMove(String input){
  switch(input.toLowerCase()){
    case "king":
      print("""
      The king piece can move one single square in any direction.
      The king cannot move onto a square that is currently occupied by a piece from its own team.
      The king piece cannot move to any square that puts them into a "check" position.
      The king piece can participate in a move known as "castling", where the piece can move up to three squares while exchanging places with a rook chess piece.\n""");
      break;
    case "queen":
      print("""
      The Queen can move in any direction on a straight or diagonal path.
      The queen cannot "jump" over any piece on the board, so its movements are restricted to any direction of unoccupied squares.
      The queen can be used to capture any of your opponent's pieces on the board.\n""");
      break;
    case "rook":
      print("""
      The Rook piece can move forward, backward, left or right at any time.
      The rook piece can move anywhere from 1 to 7 squares in any direction, so long as it is not obstructed by any other piece.\n""");
      break;
    case "bishop":
      print("""
      The Bishop can move in any direction diagonally, so long as it is not obstructed by another piece.
      The bishop piece cannot move past any piece that is obstructing its path.
      The bishop can take any other piece on the board that is within its bounds of movement.\n""");
      break;
    case "knight":
      print("""
      The Knight piece can move forward, backward, left or right two squares and must then move one square in either perpendicular direction.
      The Knight piece can only move to one of up to eight positions on the board.
      The Knight piece can move to any position not already inhabited by another piece of the same color.
      The Knight piece can skip over any other pieces to reach its destination position.\n""");
      break;
    case "pawn":
      print("""
      Pawn chess pieces can only directly forward one square, with two exceptions. 
      Pawns can move directly forward two squares on their first move only. 
      Pawns can move diagonally forward when capturing an opponent's chess piece. 
      Once a pawn chess piece reaches the other side of the chess board, the player may "trade" 
      the pawn in for any other chess piece if they choose, except another king.\n""");
      break;
    default:
      print("Wrong Input Detected. \nTerminating program...\n");
      break;
  }

}

/// Method to validate if input is correct.
bool validateInput(String? input) {
  /// true if input is correct. Else, false.
  bool isCorrect = false;

  for (var i = 0; i < ChessPiece.values.length; i++) {
    if (ChessPiece.values[i]
        .toString()
        .toLowerCase()
        .contains(input.toString().toLowerCase())) isCorrect = true;
  }
  return isCorrect;
}
