import 'dart:io';

void main() {
  int idade = 0, 
      soma = 0, 
      contador = 0;
  double media = 0;

  while (true) {    
    stdout.write('Informe a ${contador + 1}ª idade: ');
    idade = int.parse(stdin.readLineSync()!);

    if (idade == 0) {
      break;
    }

    soma += idade;
    contador++;
  }

  media = soma / contador;
  print('\nA média das idades é ${media.toStringAsFixed(2)}');
}
