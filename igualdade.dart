import 'dart:io';

void main(List<String> args) {
  List<int> numerosVetor = [];
  List<int> pares = [];

  for (int a = 0; a < 7; a++) {
    stdout.write('Insira o numero $a: ');
    numerosVetor.add(int.parse(stdin.readLineSync()!));
  }

  for (int a = 0; a < 7; a++) {
    for (int b = a + 1; b < 7; b++) {
      if (numerosVetor[a] == numerosVetor[b]) {
        pares.add(numerosVetor[a]);
      }
    }
  }

  print(pares.toString());
}