void main() {

  // You can use single and double quotes to initialize a string.
  var val1 = "Double Quotes";
  var val2 = 'Single Quotes';

  print("You can use \'${val2}\' and \"${val1}\" to initialize a string value in Dart");

  // String Interpolation:
  var age = 243;
  var sayAge = "\nI am ${age} years old.";

  print(sayAge);

  // Expressions need '{' and '}' preceded by $
  var test = "\nAbsolute value of ${age} is ${age.abs()}";

  print(test);

  // This is redundant. Don do it because ${} already calls the toString() Method
  String redundant = "25.toString() = \"${25.toString()}\". \nCalling toString() is redundant when doing string interpolation.\n";

  print(redundant);

  // MULTILINE STRINGS USE THE """ SIGN.
var query = """
      SELECT name, surname, age
      FROM people
      WHERE age >= 18
      ORDER BY name DESC
""";

  print(query);

  // Accessing single characters in Dart:

  final name = "Alberto";

  print(name[0]);
  print(name[2]);

  // You can concatenate using the + sign but it is recommended to use interpolation better.
  
  var val3 = "Hello" + " " + "World";

  print(val3);

  // For multilines you could also use these methods. 
  //The second method is recommended since the + sign can be omitted.
  var value = 'First line' +
  'Second Line';
  print(value); // First lineSecond Line

  var newValue = 'No plus sign'
  'Second Line';
  print(newValue); // No plus signSecond Line

  // A WARNING FOR MULTIPLE CONCATENATIONS.
  // Since strings are inmutable, making too many concatenations with the + sign might be insufficient.
  // For such cases, it's better to use a StringBuffer which efficiently concatenates strings.
  // For example:

  var val = "";

  for(var i = 0; i < 50; i++) {
    val += "$i ";
  }

  // Each time the + operator is called, val is assigned with a NEW instance of a string which merges the old value with the new one.
  // Creating 900,000 strings just to concatenate a value each iteration is highly inefficient.
  // The way to go would be using the StringBuffer();
  //
  // Example: 
  
  var buffer = StringBuffer();

  for(var i = 0; i < 3000; i++)
      buffer.write("$i ");

  var concatVal = buffer.toString();

  print(concatVal);
  // This is MUCH better since a new string isn't created in every iteration.
  // When you have to do long loops to manipulate strings, avoid using the + operator and preffer a buffer.
}