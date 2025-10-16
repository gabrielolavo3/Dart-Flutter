import 'calculadora.dart';
import 'dart:io';

void main() {
  double primeiroValor;
  double segundoValor;
  String operacao;

  print('Operações Matemáticas');
  print('1 : Somar');
  print('2 : Subtração');
  print('3 : Multiplicação');
  print('4 : Divisão');

  stdout.write('\nEscolha uma das operações disponíveis: ');
  operacao = stdin.readLineSync()!;
  operacao = operacao[0];

  stdout.write('\nInsira um número para a operação: ');
  primeiroValor = double.parse(stdin.readLineSync()!);
  stdout.write('Insira outro número para a operação: ');
  segundoValor = double.parse(stdin.readLineSync()!);

  Calculadora matematica = new Calculadora(primeiroValor, segundoValor);

  switch (operacao.toLowerCase()) {
    case '1':
      print(matematica.somar());
      break;
    case '2':
      print(matematica.subtrair());
      break;
    case '3':
      print(matematica.multiplicar());
      break;
    case '4':
      print(matematica.dividir());
      break;
    default:
      break;
  }
}
