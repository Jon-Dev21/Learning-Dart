void main() {
  var password = "password1";
  //var tries = 3;

  bool validatePassword(var pw){
      return pw == password;  
  }

  print("Is the password correct?");
  print(validatePassword("password1"));
}