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

  void exibirNotaFiscal(double valorRecebido) {
    print('=========NOTA FISCAL=========');
    print('Nome do cliente: $nomeCliente\n');
    
    print('\n======PRODUTOS COMPRADOS======');
    for (var index in itensConsumidos) {
      print(index.toString());
    }

    print('Valor total: R\$ ${calcularPrecoTotal().toString()}');
    print('Troco: R\$ ${calcularTroco(valorRecebido).toStringAsFixed(2)}');
  }
}