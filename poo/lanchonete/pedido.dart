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

    return soma + (soma * taxaDeServico);
  }

  double calcularTroco(double valorRecebido) {
    double troco = calcularPrecoTotal();
    troco = valorRecebido - troco;

    troco = troco <= 0 ? 0 : troco;
    return troco;
  }

  void exibirNotaFiscal(double valorRecebido) {
    print('\n========= NOTA FISCAL =========');
    print('\nNome do cliente: $nomeCliente');
    
    print('\n--- Produtos Comprados ---');
    for (var index in itensConsumidos) {
      print(index.toString());
    }

    print('\nPreço final: R\$ ${calcularPrecoTotal().toString()}');
    print('Valor recebido: R\$ ${valorRecebido.toStringAsFixed(2)}');
    print('Troco: R\$ ${calcularTroco(valorRecebido).toStringAsFixed(2)}');
  }
}