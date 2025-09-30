import 'dart:io';

void main() {
  double notaA;
  double notaB;
  double media;

  stdout.write('Insira a primeira nota: ');
  notaA = double.parse(stdin.readLineSync()!);
  stdout.write('Insira a segunda nota: ');
  notaB = double.parse(stdin.readLineSync()!);

  media = (notaA + notaB) / 2;

  if (media == 10) {
    print('Parabéns! Aprovado com louvor. Média $media');
  } 
  else if (media >= 7 && media < 10) {
    print('Você foi aprovado com média ${media.toStringAsFixed(2)}!');
  } 
  else {
    print('Você foi reprovado! Sua média foi $media');
  }
}
