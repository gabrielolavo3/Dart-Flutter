import 'dart:io';

void main() {
  int numero, soma = 0;

  stdout.write('Informe um número: ');
  numero = int.parse(stdin.readLineSync()!);

  for (int a = 0; a <= numero; a++) 
  {
    int acumulo = a + numero;
    soma += acumulo;
  }

  print(soma);
}
