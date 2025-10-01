import 'dart:io';

bool parOuImpar(int numero) {
  bool valor = numero % 2 == 0 ? true : false;
  return valor;
}

void main() {
  int numero;

  stdout.write('Digite um número: ');
  numero = int.parse(stdin.readLineSync()!);
  print(parOuImpar(numero));
}
