// Learning about arrays in Dart.
// In dart, an array is represented by a List<T>

// Declaring an array of doubles.
void main() {
  // This code gives an error
  //List<double> grades = new List<double>();

  // Declaring array with specific type
  List<double> grade = [10.2];

  // Declaring array dynamically. Type will be decided on runtime
  List grades = [1,2,3];

  //   final myList = [2.3, 12.2];

    print(grade[0]);
    print(grades[2]);
}
