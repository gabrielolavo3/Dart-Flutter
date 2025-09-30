import 'dart:io';

void main() {
  int ladoA, ladoB, ladoC;
  String resultado;

  stdout.write('Informe o lado A do triângulo: ');
  ladoA = int.parse(stdin.readLineSync()!);
  stdout.write('Informe o lado B do triângulo: ');
  ladoB = int.parse(stdin.readLineSync()!);
  stdout.write('Informe o lado C do triângulo: ');
  ladoC = int.parse(stdin.readLineSync()!);

  if (ladoA == ladoB && ladoA == ladoC) {
    resultado = 'Esse é um triângulo equilátero';
  } 
  else if (ladoA != ladoB && ladoA != ladoC) {
    resultado = 'Esse é um triângulo escaleno';
  } 
  else {
    resultado = 'Esse é um triângulo isósceles';
  }

  print(resultado);
}
