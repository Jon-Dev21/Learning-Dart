// Learning about enums.
// Creating enum "Fruits"
enum Fruits { Apple, Pear, Grapes, Banana, Orange}

void main() {
  print("Learning about enums.");

  print("Created an enum of fruits\n");

  // Printing all Enum Values
  for(var i = 0; i < Fruits.values.length; i++){
    print("${Fruits.values[i]}");
  }

  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;

  print("\nLiked: ${liked.toString()}");
  print("Disliked: ${disliked.toString()}");


  // Accessing enums index.
  var a = Fruits.Apple.index; // 0
  var b = Fruits.Pear.index; // 1
  var c = Fruits.Grapes.index; // 2

  print("\nAccessing enum indexes.\n");

  print("Apple Index: ${a}");
  print("Pear Index: ${b}");
  print("Grapes Index: ${c}");
}

