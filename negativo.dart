import 'dart:io';

void main() {
  List<int> valor = [];

  for (int a = 0; a < 6; a++) 
  {
    stdout.write('Insira o numero $a: ');
    valor.add(int.parse(stdin.readLineSync()!));

    if (valor[a] < 0) {
      valor[a] = 0;
    }
  }

  print(valor);
}