import 'dart:io';

void main(List<String> args) {
  // Tipos primitivos e impressão

  int numero = 10;
  int numero2 = 5;
  double flutuante = 1.50;
  num numeroMutavel = 5; // Aceita int e double
  String controle = '8BitDo';
  var variavel = 1.659;
  dynamic variavelMUtavel = 1; // Pode mudar o tipo ao decorrer da execução
  bool booleano = true;

  print('Nº $numero');
  print('Nº ' + numero.toString());
  print('Nº ${numero * 2}');

  int adicao = numero + numero2;
  int subtracao = numero - numero2;
  int multiplicacao = numero * numero2;
  double divisao = numero / numero2;
  int divisaoInteira =
      numero ~/ numero2; // Retorna a parte inteira, sem casa decimal na divisão
  int restoDivisao = numero % numero2;

  print("\nValor da adição $adicao");
  print("Valor da subtracao $subtracao");
  print("Valor da multiplicação " + multiplicacao.toString());
  print("Valor da divisão $divisao");
  print("Valor da divisão inteira $divisaoInteira");
  print("Valor do  resto da divisão $restoDivisao");

  stdout.write(
    '\nInsira a nome: ',
  ); // Comando de impressão sem quebra de linha. Precisa da biblioteca dart:io
  String? nome = stdin.readLineSync(); // Entrada de dados. Aceita somente String. Interrogação permite valor nulo

  print('Informe a idade');
  int idade = int.parse(
    stdin.readLineSync()!,
  ); // Converte uma String para outro tipo. A exclamação é obrigatória, garante que não há valor nulo

  print('Nome $nome');
  print('Idade $idade');
}
