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
  bool continuarMenu = true;

  while (continuarMenu) {
    print('\n========= CADASTRO DE PRODUTOS =========\n');
    print('1 - Pizza');
    print('2 - Lanche');
    print('3 - Salgadinho');
    print('0 - Voltar para o menu principal');
    stdout.write('\nSelecione um dos produtos acima: ');
    String escolhaProduto = stdin.readLineSync()!;

    switch (escolhaProduto.toLowerCase()) {
      case '1':
        stdout.write('\nInforme o nome do produto: ');
        nomeProduto = stdin.readLineSync()!;
        stdout.write('Insira o nome do molho da pizza: ');
        molho = stdin.readLineSync()!;
        stdout.write('Insira o nome do recheio da pizza: ');
        recheio = stdin.readLineSync()!;
        stdout.write('Insira qual o tipo de borda da pizza: ');
        borda = stdin.readLineSync()!;        

        Pizza pizza = new Pizza(nomeProduto, molho, recheio, borda);      
        // pizza.setPreco = preco; //Acessa o set para mudar o valor do atributo privado
        produto.add(pizza);
        break;

      case '2':
        stdout.write('\nInforme o nome do produto: ');
        nomeProduto = stdin.readLineSync()!;
        stdout.write('Insira o tipo de pão do lanche: ');
        pao = stdin.readLineSync()!;
        stdout.write('Insira o nome do recheio do lanche: ');
        recheio = stdin.readLineSync()!;
        stdout.write('Insira qual o tipo de molho do lanche: ');
        molho = stdin.readLineSync()!;

        Lanche lanche = new Lanche(nomeProduto, pao, recheio, molho);        
        produto.add(lanche);
        break;

      case '3':
        stdout.write('\nInforme o nome do produto: ');
        nomeProduto = stdin.readLineSync()!;
        stdout.write('Insira o tipo de salgadinho: ');
        tipo = stdin.readLineSync()!;
        stdout.write('Insira o nome do massa do salgadinho: ');
        massa = stdin.readLineSync()!;
        stdout.write('Insira qual o tipo de recheio do salgadinho: ');
        recheio = stdin.readLineSync()!;

        Salgadinho salgadinho = new Salgadinho(nomeProduto, tipo, massa, recheio);        
        produto.add(salgadinho);
        break;   

      case '0':
        continuarMenu = false;
        break;

      default:
        print('Opção inválida');
        break;
    }

    stdout.write('\nDeseja cadastrar outro produto? (s/n): ');
    String retornarMenu = stdin.readLineSync()!;

    if (retornarMenu.toLowerCase() == 'n') {
      continuarMenu = false;
      break;
    }
  }
}

void criarPedido(List<Produto> produtos, List<Pedido> pedidos) {
  String nomeCliente;
  String novoPedido;  
  int escolhaProduto;
  int quantidade;

    if (produtos.isEmpty) {
    print('\nNo momento, não é possível criar um pedido. É necessário cadastrar pelo menos um produto para continuar!');
    return;
  }

  print('\n========= CRIAÇÃO DE PEDIDOS =========\n');
  stdout.write('Informe o nome do cliente: ');
  nomeCliente = stdin.readLineSync()!;
  Pedido pedido = new Pedido(nomeCliente);

  while(true) {    
    print('\n========= PRODUTOS DISPONÍVEIS =========\n'); //Lista os produtos cadastrados

    for (int a = 0; a < produtos.length; a++) {
      produtos[a].calcularPreco(); //Chama método porquê é preciso atualizar o valor de getPreco
      print('${a+1} - ${produtos[a].nomeProduto}: R\$ ${produtos[a].getPreco.toStringAsFixed(2)}');
    }

    stdout.write('\nEscolha o número do produto desejado: ');
    escolhaProduto = int.parse(stdin.readLineSync()!);
    escolhaProduto--;

    stdout.write('Informe a quantidade desejada: ');
    quantidade = int.parse(stdin.readLineSync()!);

    Produto produtoEscolhido = produtos[escolhaProduto]; // Define a quantidade no produto selecionado
    produtoEscolhido.quantidade = quantidade;
    
    pedido.adicionarItem(produtoEscolhido); // Adiciona ao pedido

    stdout.write('\nDeseja adicionar outro produto ao pedido? (s/n): ');
    novoPedido = stdin.readLineSync()!;    

    pedidos.add(pedido);
    if (novoPedido[0].toLowerCase() != 's') {
      break;
    }
  }   
}

void imprimirNF(List<Pedido> pedidosFeitos, bool controle) {
  double valorPago;
  String escolha;  

  if (pedidosFeitos.isEmpty) {
    print('\nA lista de pedidos está vázia. Crie um pedido para fazer a impressão da nota fiscal!');
    return;
  }

  stdout.write('\nInforme o valor pago pelo cliente: ');
  valorPago = double.parse(stdin.readLineSync()!); 
  
  // for (var pedido in pedidosFeitos) {    
  //   pedido.exibirNotaFiscal(valorPago);    
  // }  

  pedidosFeitos.last.exibirNotaFiscal(valorPago); //Imprimir somente o último pedido

  stdout.write('\nDeseja retornar para o menu de seleção ou sair do programa? (m - Menu/s - Sair): ');
  escolha = stdin.readLineSync()!;

  if (escolha.toLowerCase() == 'm') {
    controle = true;
  }
  else {
    controle = false;
  }
}

bool sairDoMenu() {
  print('Obrigado por usar nosso sistema!');
  return false;  
}

void main(List<String> args) {
  bool controle = true;  
  String opcaoEscolhida;
  List<Produto> produtosDisponiveis = [];
  List<Pedido> pedidosFeitos = [];

  while (controle) {
    print('\n========= MENU DE SELEÇÃO =========\n');
    print('1 - Cadastrar novo produto');
    print('2 - Criar pedido');
    print('3 - Imprimir nota fiscal');
    print('0 - Sair');

    stdout.write('\nEscolha uma das opções disponíveis: ');
    opcaoEscolhida = stdin.readLineSync()!;

    switch (opcaoEscolhida) {
      case '1':
        cadastrarProduto(produtosDisponiveis);
        break;

      case '2': 
        criarPedido(produtosDisponiveis, pedidosFeitos);
        break;

      case '3':
        imprimirNF(pedidosFeitos, controle);
        break;
      
      case '0':      
        controle = sairDoMenu();
        break;
      
      default:
        print('Opção inválida!');
        break;
    }
  }
}