// Learning about arrays in Dart.
// In dart, an array is represented by a List<T>

// Declaring an array of doubles.
//import 'dart:html';

void main() {
  // This code gives an error
  List<double> gradeds = new List.filled(3, 5);


  // Declaring array with specific type
  List<double> grade = [10.2];

  // Declaring array dynamically. Type will be decided on runtime
  List grades = [1,2,3];

  //   final myList = [2.3, 12.2];

    print(grade[0]);
    print(grades[2]);

    for(var i = 0; i < gradeds.length; i++){
      print(gradeds[i]);
    }
}
