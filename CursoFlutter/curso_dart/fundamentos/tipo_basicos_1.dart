/*
  - Numeros (int e double)
  - String (String)
  - Booleano (bool)
*/

main() {
  int n1 = 3;
  double n2 = (-5.67).abs();
  num n4 = 6;

  print(n1 + n2);

  String s1 = "Texto";
  String s2 = " dart";

  print(s1 + s2);

  bool toComSono = true;
  print(bool);

  dynamic x = "Texto";
  print(x);

  x= 123;
  print(x);

  List aprovados = ["Wagner", "Evy"];
  for(String aprovado in aprovados) {
    print(aprovado);
  }

  Map<String, String> telefones = {
    "Wagner": '991798004',
    "Evy": "000000000"
  };

  for(MapEntry registro in telefones.entries) {
    print(registro.key);
    print(registro.value);
  }

  Set<String> conjunto = {
    "Lol", "GTA", "Mine" 
  };
for(String jogo in conjunto) {
  print(jogo);
}



}