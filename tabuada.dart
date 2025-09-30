import 'dart:io';

void main() {
  int numero;

  stdout.write('Informe um número: ');
  numero = int.parse(stdin.readLineSync()!);

  for (int a = 0; a <= 10; a++) {
    print('$numero * $a: ${numero*a}');
  }
}
