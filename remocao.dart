import 'dart:io';

const int limite = 5;

void main() {
  List<int> valores = [];

  for (int a = 0; a < limite; a++) {
    stdout.write('Informe o número da posição $a: ');
    int n = int.parse(stdin.readLineSync()!);
    valores.add(n);
  }


  // for (int a = 0; a < limite; a++) {
  //   if (valores[a] == 0) {
  //     valores.removeWhere((valores) => valores == 0);
  //     print(valores);
  //   }
  // }

  // removeWhere remove um determinado valor de acordo com uma condição
  valores.removeWhere((valores) => valores == 0);
  print(valores);
}