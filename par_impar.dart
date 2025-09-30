import 'dart:io';

void main() {
  int numero;

  stdout.write('Informe um número: ');
  numero = int.parse(stdin.readLineSync()!);

  print('\nPares');
  for (int a = 0; a <= numero; a++) {
    if (a % 2 == 0) {
      print(a);
    }
  }

  print('\nÍmpares');
  for (int a = 0; a <= numero; a++) {
    if (a % 2 != 0) {
      print(a);
    }
  }
}
