import 'dart:io';

void main() {
  String opiniao, sexo;
  double porcenHomensNao = 0;
  int quantSim = 0,
      quantNao = 0,
      quantHomens = 0,
      mulheresSim = 0,
      contador = 0;

  while (true) {
    stdout.write('Informe o sexo do ${contador + 1}º entrevistado (F - feminino / M - masculino): ');
    sexo = stdin.readLineSync()!;
    stdout.write('O entrevistado gostou do produto (S - sim / N - não): ');
    opiniao = stdin.readLineSync()!;

    if (opiniao.toUpperCase() == 'S') {
      quantSim++;
    }
    else if (opiniao.toUpperCase() == 'N') {
      quantNao++;
    }

    contador++;

    if (opiniao.toUpperCase() == 'S' && sexo.toUpperCase() == 'F') {
      mulheresSim++;
    }
    else if (opiniao.toUpperCase() == 'N' && sexo.toUpperCase() == 'M'){
      quantHomens++;
    }

    if (contador == 4) break;
  }

  porcenHomensNao = (quantHomens / contador) * 100;

  print('\nNúmero de pessoas que respondeu sim: $quantSim');
  print('Número de pessoas que respondeu não: $quantNao');
  print('Número de mulheres que respondeu sim: $mulheresSim');
  print('Porcentagem de homens que respondeu não: ${porcenHomensNao.toStringAsFixed(2)}');
}
