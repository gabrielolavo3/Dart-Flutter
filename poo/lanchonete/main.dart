import 'dart:math';

import '../../peso_ideal.dart';
import 'lanche.dart';
import 'pizza.dart';
import 'produto.dart';
import 'pedido.dart';
import 'dart:io';

import 'salgadinho.dart';

void main(List<String> args) {
  String nomeCliente,
  nomeProduto,
  molho,
  recheio,
  borda,
  massaSal,
  tipoSal,
  pao;
  double preco, 
  valorRecebido;
  int quantidade;

  stdout.write('Informe o nome do cliente: ');
  nomeCliente = stdin.readLineSync()!;

  Pedido pedido = new Pedido(nomeCliente);

  //Pizza
  stdout.write('Insira o nome da pizza: ');
  nomeProduto = stdin.readLineSync()!;
  stdout.write('Insira o molho da pizza: ');
  molho = stdin.readLineSync()!;
  stdout.write('Insira o recheio da pizza: ');
  recheio = stdin.readLineSync()!;
  stdout.write('Insira o borda da pizza: ');
  borda = stdin.readLineSync()!;

  stdout.write('Insira a quantidade de pizzas: ');
  quantidade = int.parse(stdin.readLineSync()!);
  stdout.write('Insira o preço da pizza: ');
  preco = double.parse(stdin.readLineSync()!);

  Pizza pizza = new Pizza(nomeProduto, preco, quantidade, molho, recheio, borda);

  //Lanche
  stdout.write('Insira o nome do lanche: ');
  nomeProduto = stdin.readLineSync()!;

  stdout.write('Insira o molho do lanche: ');
  molho = stdin.readLineSync()!;
  stdout.write('Insira o recheio do lanche: ');
  recheio = stdin.readLineSync()!;
  stdout.write('Insira o pao do lanche: ');
  pao = stdin.readLineSync()!;

  stdout.write('Insira a quantidade do lanche: ');
  quantidade = int.parse(stdin.readLineSync()!);
  stdout.write('Insira o preço do lanche: ');
  preco = double.parse(stdin.readLineSync()!);

  Lanche lanche = new Lanche(nomeProduto, preco, quantidade, pao, recheio, molho);

  //Salgadinho
  stdout.write('Insira o nome do salgadinho: ');
  nomeProduto = stdin.readLineSync()!;

  stdout.write('Insira o tipo do salgadinho: ');
  tipoSal = stdin.readLineSync()!;
  stdout.write('Insira o recheio do salgadinho: ');
  recheio = stdin.readLineSync()!;
  stdout.write('Insira a massa do salgadinho: ');
  massaSal = stdin.readLineSync()!;

  stdout.write('Insira a quantidade do salgadinho: ');
  quantidade = int.parse(stdin.readLineSync()!);
  stdout.write('Insira o preço do salgadinho: ');
  preco = double.parse(stdin.readLineSync()!);

  Salgadinho salgadinho = new Salgadinho(nomeProduto, preco, quantidade, tipoSal, massaSal, recheio);

  stdout.write('Informe o valor recebido: ');
  valorRecebido = double.parse(stdin.readLineSync()!);

  pedido.adicionarItem(pizza);
  pedido.adicionarItem(lanche);
  pedido.adicionarItem(salgadinho);

  pedido.calcularTroco(valorRecebido);

  pedido.exibirNotaFiscal();

}