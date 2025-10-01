import 'dart:io';

bool numeroPrimo(int numero) {
  bool resposta;
  int divisores = 0;

  // Calcula a quantidade de divisores até o determinado número
  for (int a = 1; a <= numero; a++) {
    if (numero % a == 0) {
      divisores++;
    }
  }

  resposta = divisores == 2 ? true : false;
  return resposta;
}

void main() {
  int numero;

  stdout.write('Informe um número para saber se é primo ou não: ');
  numero = int.parse(stdin.readLineSync()!);

  print(numeroPrimo(numero));
}
