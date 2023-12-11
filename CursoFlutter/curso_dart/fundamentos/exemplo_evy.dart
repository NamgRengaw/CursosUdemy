import 'dart:io';

main() {
  const PI = 3.1415;
  //print("Qual o valor do Raio: ");
  //double raio = double.parse(stdin.readLineSync()!);

  //double circuferencia = PI * raio * raio;

  //print("O valor da circuferencia é: " + circuferencia.toString());

  List nomes = ["Evy", "Wagner", "Vini", "Brayaw", "Wendell"]; 
  Map<String, String> propriedadesPc = { "Processador": "Ryzen 5" , "Placa de video": "Gtx 1060"};
  Set listaCpf = {"11711734900", "099053229927", "61561165615", "11711734900"};
  
  listaCpf.forEach((element) {print(element);});

  propriedadesPc.forEach((key, value) {
      print("Chave: " + key + " | Valor: " + value);
      });

  // for(String nome in nomes) {
  //   print("Nome  - " + nome);
  // }

}