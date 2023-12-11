import 'dart:io';

main() {
  // Area da circuferencia = PI * raio * raio
  const double PI = 3.1415;
  stdout.write("Informe o raio: ");
  var input = stdin.readLineSync()!;
  final raio = double.parse(input);

  final area = PI * raio * raio;

  print("O valor do Raio é: " + raio.toString());
  print("O valor da circuferência é: " + area.toString());
}