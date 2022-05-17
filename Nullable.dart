// Nullable and Non Nullable types.

/**
 * Starting from Dart 2.10, variables are non-nullable by default.
 * All variables need to be initialized before use or it will thow an error.
 * The compiler guiarantees that it can't be null and thus no null checks are required.
 */
void main() {
  
  // Will throw an error since value is not initialized.
  int value;
  //print(value);   // This line will throw an error if uncommented.

  // Will not throw an error since value is initialized.
  int value2 = 2;
  print(value2);

  /**
   * In dart, you can also declare nullable types which allow you to use nulls and avoid compiler errors.
   */

  int? nullVal;
  print("$nullVal"); // This prints nulls

  /**
   * Nullable types with the [] index operator need to be called with the ?[] syntax 
   */

  String? name = "Alberto";
  String? first = name?[0]; // first =  A
  
  String? name1;
  String? first1 = name1?[0]; // first =  null
  

  /**
   * When you're sure that the nullable expression isn't null, you can add a ! at the end to convert it to a non-nullable expression.
   */
  int? nullable = 0;
  int notNullable = nullable!; 

  /**
   * The ! operator only works when data types are the same.
   * If data types are not the same, you would use this to convert.
   */
num? val = 5;
int otherVal = val as int; // Other val = 5
print(otherVal);
}

