void main() {
  
  // Parsing in Dart
  String value = "17";

// Using Parse (deprecated)
// The Parse function is dangerous since it does not check if the parameter is a string in valid number format. Example: "100.7".
  var a = int.parse(value); // string-to-int conversion.
  var b = double.parse(value); // string-to-double conversion.
  var c = int.parse("13", radix: 6); // converts from 13 base 6.
  
  String v1 = 100.toString(); // v1 = "100";
  String v2 = 100.123.toString(); // v2 = "100.123";
  String v3 = 100.123.toStringAsFixed(2); // v3 = "100.12";
  
  // When parsing, it is better to use precautionary methods since parsing can fail.
  // There are 2 ways to parse numbers safely:

  // 1. Nullable Parsing (Try-Parse):
  // IT is recommended to always use tryParse() when you want to parse data to ensure that it is done correctly and the value passed is validated first.
  double? val1 = double.tryParse("12@.3x_"); // returns null
  double? val2 = double.tryParse("120.343"); // returns 120.343
  
  // 2. Using the onError callback in the parse() function. (Same as using the tryParse, but you can return whatever you want in case the passed string is not in valid format.)
  var d = int.parse("1_6", onError: (value) => 0); // returns specified value 0
  var e = int.parse("16", onError: (value) => 0); // returns integer 16
  


  /**
   *    Printing Area
   */
  print("_________________________________________________________");
  print("Using Parse() to parse string values to number values.\n_________________________________________________________\n");

  print("var a = int.parse(${value}) = ${a}\nstring-to-int conversion.\n");
  print("var b = double.parse(${value}) = ${b}\nstring-to-double conversion.\n");
  print("var c = int.parse(\"13\", radix: 6) = ${c}\nconverts from 13 base 6.\n");
  print("*******************************************************************************");
  // *******************************************************************************
  

  print("\n_________________________________________________________");
  print("Using ToString() to parse number values to string values.\n_________________________________________________________\n");
  print("string v1 = 100.ToString() = \"${v1}\";\nint-to-string conversion.\n");
  print("string v1 = 100.123.ToString() = \"${v2}\"\ndouble-to-string conversion.\n");
  print("String v3 = 100.123.toStringAsFixed(2) = \"${v3}\"\nRounds number to fixed decimal point. (In this case, 2 decimal points)\n");
  print("*******************************************************************************");
  // *******************************************************************************
  

  print("_________________________________________________________");
  print("Using TryParse() to parse string values to number values safely (recommended to use TryParse() instead of Parse()).\n_________________________________________________________\n");
  print("double? val1 = double.tryParse(\"12@.3x_\") = \"${val1}\";\nstring-to-double conversion.\n");
  print("double? val2 = double.123.ToString() = \"${val2}\"\nstring-to-double conversion.\n");
  print("*******************************************************************************");
  // *******************************************************************************
  
  print("_________________________________________________________");
  print("Using parse() with onError: property to parse string values to number values safely.\nThe onError property is Deprecated.\n_________________________________________________________\n");
  print("var d =  int.parse(\"1_6\", onError: (${value}) => 0) = \"${d}\";\nstring-to-double conversion.\n");
  print("var e = int.parse(\"16\", onError: (${value}) => 0) = \"${e}\"\nstring-to-double conversion.\n");
  print("*******************************************************************************");
  
}