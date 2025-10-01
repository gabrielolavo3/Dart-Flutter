import 'dart:io';

double pesoIdeal(double altura, String sexo) {
  double resultado = 0;

  if (sexo.toLowerCase() == 'feminino') {
    resultado = (62.1 * altura) - 44.7;
  } else if (sexo.toLowerCase() == 'masculino') {
    resultado = (72.7 * altura) - 58;
  }

  return resultado;
}

void main() {
  double altura;
  String sexo;

  stdout.write('Insira o sexo (Masculino / Feminino): ');
  sexo = stdin.readLineSync()!;
  stdout.write('Insira a altura: ');
  altura = double.parse(stdin.readLineSync()!);

  print('O seu peso ideal é ' + pesoIdeal(altura, sexo).toStringAsFixed(2) + 'Kg');
}
