import 'dart:io';
// import 'dart:convert';

void main() {
  // Criando um arrayList no dart
  List<int> numeros = [];
  int posicaoA, 
      posicaoB,
      valorFinal;

  for (int a = 0; a < 5; a++) {
    stdout.write('Insira o ${a+1}º número: ');
    numeros.add (int.parse(stdin.readLineSync()!));
  }

  stdout.write('\nInforme a posição A de busca: ');
  posicaoA = int.parse(stdin.readLineSync()!);
  stdout.write('Informe a posição B de busca: ');
  posicaoB = int.parse(stdin.readLineSync()!);

  valorFinal = numeros[posicaoA] + numeros[posicaoB];
  print(valorFinal);
}