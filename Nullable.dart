// Nullable and Non Nullable types.

/**
 * Starting from Dart 2.10, variables are non-nullable by default.
 * All variables need to be initialized before use or it will thow an error.
 * The compiler guiarantees that it can't be null and thus no null checks are required.
 */
void main() {
  
  // Will throw an error since value is not initialized.
  int value;
  print(value);

  // Will not throw an error since value is initialized.
  int value2 = 2;
  print(value2);
}

