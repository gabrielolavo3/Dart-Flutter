import 'dart:io';
import 'conta.dart';

void main() {
  String nome, numeroConta, opcao;
  double saldoValor, quantia;

  stdout.write('Insira o nome do titular da conta: ');
  nome = stdin.readLineSync()!;
  stdout.write('Insira o número da conta do titular: ');
  numeroConta = stdin.readLineSync()!;
  stdout.write('Insira o valor atual do saldo da conta: ');
  saldoValor = double.parse(stdin.readLineSync()!);

  print('\nEscolha uma das opções disponíveis');
  print('S - Efetuar saque');
  print('D - Realizar depósito');

  stdout.write('\nSelecione o tipo de transação: ');
  opcao = stdin.readLineSync()!;
  stdout.write('\nInforme um valor para o procedimento: ');
  quantia = double.parse(stdin.readLineSync()!);

  Conta contaClasse = Conta(nome, numeroConta, saldoValor, quantia);
  contaClasse.escolhaTransacao(opcao);
  print(contaClasse.toString());
}
