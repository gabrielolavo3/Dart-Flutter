import 'produto.dart';

class Pedido {
  String nomeCliente = '';
  double taxaDeServico = 0;
  List<Produto> itensConsumidos = [];

  Pedido(this.nomeCliente, {this.taxaDeServico = 0.1});

  void adicionarItem(Produto produto) {
    itensConsumidos.add(produto);
  }

  double calcularPrecoTotal() {
    double soma = 0;

    for (var index in itensConsumidos) {
      soma += index.calcularPreco();
    }

    return soma * taxaDeServico;
  }

  double calcularTroco(double valorRecebido) {
    double troco = calcularPrecoTotal();
    troco = valorRecebido - troco;
    return troco;
  }

  void exibirNotaFiscal() {    
    print('Nome do cliente: $nomeCliente\n');
    
    for (var index in itensConsumidos) {
      print(index.toString());
    }

    print('Valor total da nota: R\$ ${calcularPrecoTotal().toString()}');
    // print('Troco: R\$ ${calcularTroco(valorRecebido).toStringAsFixed(2)}');
  }
}