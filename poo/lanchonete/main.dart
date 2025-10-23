import 'dart:io';
import 'produto.dart';
import 'pedido.dart';
import 'lanche.dart';
import 'pizza.dart';
import 'salgadinho.dart';

void cadastrarProduto(List<Produto> produto) {
  String nomeProduto;
  String molho;
  String recheio;
  String borda;
  String tipo;
  String massa;
  String pao;  

  print('Lista de produtos para cadastro');
  print('1 - Pizza');
  print('2 - Lanche');
  print('3 - Salgadinho');
  stdout.write('\nSelecione um dos produtos acima: ');
  String escolhaProduto = stdin.readLineSync()!;

  stdout.write('\nInforme o nome do produto: ');
  nomeProduto = stdin.readLineSync()!;

  switch (escolhaProduto.toLowerCase()) {
    case '1':
      stdout.write('Insira o nome do molho da pizza: ');
      molho = stdin.readLineSync()!;
      stdout.write('Insira o nome do recheio da pizza: ');
      recheio = stdin.readLineSync()!;
      stdout.write('Insira qual o tipo de borda da pizza: ');
      borda = stdin.readLineSync()!;

      Pizza pizza = new Pizza(nomeProduto, molho, recheio, borda);      
      produto.add(pizza);
      break;

    case '2':
      stdout.write('Insira o tipo de pão do lanche: ');
      pao = stdin.readLineSync()!;
      stdout.write('Insira o nome do recheio do lanche: ');
      recheio = stdin.readLineSync()!;
      stdout.write('Insira qual o tipo de molho da pizza: ');
      molho = stdin.readLineSync()!;

      Lanche lanche = new Lanche(nomeProduto, pao, recheio, molho);
      produto.add(lanche);
      break;

    case '3':
      stdout.write('Insira o tipo de salgadinho: ');
      tipo = stdin.readLineSync()!;
      stdout.write('Insira o nome do massa do salgadinho: ');
      massa = stdin.readLineSync()!;
      stdout.write('Insira qual o tipo de recheio do salgadinho: ');
      recheio = stdin.readLineSync()!;

      Salgadinho salgadinho = new Salgadinho(nomeProduto, tipo, massa, recheio);
      produto.add(salgadinho);
      break;

    default:
      print('Opção inválida');
      break;
  }
}

void criarPedido(List<Produto> produtos, List<Pedido> pedidos, double valorPago) {
  String nomeCliente;
  String novoPedido;
  int escolhaProduto;
  int quantidade;

  stdout.write('Informe o nome do cliente: ');
  nomeCliente = stdin.readLineSync()!;
  Pedido pedido = new Pedido(nomeCliente);

  while(true) {
    //Lista os produtos cadastrados
    print('Produtos disponíveis');
    for (int a = 0; a < produtos.length; a++) {
      print('$a - ${produtos[a]}');
    }

    stdout.write('Escolha o número do produto desejado: ');
    escolhaProduto = int.parse(stdin.readLineSync()!);

    stdout.write('Informe a quantidade desejada: ');
    quantidade = int.parse(stdin.readLineSync()!);

    //Adiciona a quantidade de um produto na lista
    for (int a = 0; a < quantidade; a++) {
      pedido.adicionarItem(produtos[escolhaProduto]);
    }

    stdout.write('Deseja adicionar outro produto ao pedido? (s/n): ');
    novoPedido = stdin.readLineSync()!;
    novoPedido = novoPedido[0];

    if (novoPedido.toLowerCase() == 's') {
      return;
    }
  }  
}

void imprimirNF(double valorPago) {
  
}

void sairDoMenu(bool controle) {
  controle = false;  
}

void main(List<String> args) {
  // String nomeCliente;
  // nomeProduto,
  // molho,
  // recheio,
  // borda,
  // massaSal,
  // tipoSal,
  // pao;
  // double preco, 
  // valorRecebido;
  // int quantidade;

  // stdout.write('Informe o nome do cliente: ');
  // nomeCliente = stdin.readLineSync()!;

  // Pedido pedido = new Pedido(nomeCliente);

  // //Pizza
  // stdout.write('Insira o nome da pizza: ');
  // nomeProduto = stdin.readLineSync()!;
  // stdout.write('Insira o molho da pizza: ');
  // molho = stdin.readLineSync()!;
  // stdout.write('Insira o recheio da pizza: ');
  // recheio = stdin.readLineSync()!;
  // stdout.write('Insira o borda da pizza: ');
  // borda = stdin.readLineSync()!;

  // stdout.write('Insira a quantidade de pizzas: ');
  // quantidade = int.parse(stdin.readLineSync()!);
  // stdout.write('Insira o preço da pizza: ');
  // preco = double.parse(stdin.readLineSync()!);

  // Pizza pizza = new Pizza(nomeProduto, preco, quantidade, molho, recheio, borda);

  // //Lanche
  // stdout.write('Insira o nome do lanche: ');
  // nomeProduto = stdin.readLineSync()!;

  // stdout.write('Insira o molho do lanche: ');
  // molho = stdin.readLineSync()!;
  // stdout.write('Insira o recheio do lanche: ');
  // recheio = stdin.readLineSync()!;
  // stdout.write('Insira o pao do lanche: ');
  // pao = stdin.readLineSync()!;

  // stdout.write('Insira a quantidade do lanche: ');
  // quantidade = int.parse(stdin.readLineSync()!);
  // stdout.write('Insira o preço do lanche: ');
  // preco = double.parse(stdin.readLineSync()!);

  // Lanche lanche = new Lanche(nomeProduto, preco, quantidade, pao, recheio, molho);

  // //Salgadinho
  // stdout.write('Insira o nome do salgadinho: ');
  // nomeProduto = stdin.readLineSync()!;

  // stdout.write('Insira o tipo do salgadinho: ');
  // tipoSal = stdin.readLineSync()!;
  // stdout.write('Insira o recheio do salgadinho: ');
  // recheio = stdin.readLineSync()!;
  // stdout.write('Insira a massa do salgadinho: ');
  // massaSal = stdin.readLineSync()!;

  // stdout.write('Insira a quantidade do salgadinho: ');
  // quantidade = int.parse(stdin.readLineSync()!);
  // stdout.write('Insira o preço do salgadinho: ');
  // preco = double.parse(stdin.readLineSync()!);

  // Salgadinho salgadinho = new Salgadinho(nomeProduto, preco, quantidade, tipoSal, massaSal, recheio);

  // stdout.write('Informe o valor recebido: ');
  // valorRecebido = double.parse(stdin.readLineSync()!);

  // pedido.adicionarItem(pizza);
  // pedido.adicionarItem(lanche);
  // pedido.adicionarItem(salgadinho);

  // pedido.calcularTroco(valorRecebido);

  // pedido.exibirNotaFiscal();

  String opcaoEscolhida;
  bool controle = true;
  double valorPagoCliente;
  List<Produto> produtosDisponiveis = [];
  List<Pedido> pedidosFeitos = [];

  print('Menu de Seleção');
  print('1 - Cadastrar novo produto');
  print('2 - Criar pedido');
  print('3 - Imprimir nota fiscal');
  print('0 - Sair');

  stdout.write('\nEscolha uma das opções disponíevis: ');
  opcaoEscolhida = stdin.readLineSync()!;

  while (controle) {
    switch (opcaoEscolhida.toLowerCase()) {
      case '1': {
        cadastrarProduto(produtosDisponiveis);
      }
      case '2': {
        
      }
      case '3': {
        
      }
      case '0': {
        sairDoMenu(controle);
      }
    }
  }

}