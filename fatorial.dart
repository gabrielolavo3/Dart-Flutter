import 'dart:io';

void main() {
  int numero, fatorial = 1;

  stdout.write('Digite um número: ');
  numero = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }

  print('O fatorial de $numero é $fatorial');
}
