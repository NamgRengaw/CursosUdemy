import 'dart:ffi';

main() {
  var a = 2;
  var b = 4.56;
  var text = "O valor da soma é: ";

  print(text + (a + b).toString());
  print(a.runtimeType);
  print(b.runtimeType);
  print(text.runtimeType);

  print(a is String);

}