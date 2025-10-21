import 'prato.dart';

class Pedido {
  String _nomeCliente = '';
  double _taxaDeServico = 0;
  List<Prato> _itensConsumidos = [];

  Pedido(this._nomeCliente, this._taxaDeServico, this._itensConsumidos);

  set setNomeCliente(String nome) {
    this._nomeCliente = nome;
  }

  get getNomeCliente {
    return this._nomeCliente;
  }

  set setTaxaDeServico(double taxa) {
    this._taxaDeServico = taxa;
  }

  get getTaxaDeServico {
    return this._taxaDeServico;
  }

  set setItensConsumidos(List<Prato> itens) {
    this._itensConsumidos = itens;
  }

  get getItensConsumidos {
    return this._itensConsumidos;
  }

  double precoFinal() {
    double soma = 0;

    for (var index in _itensConsumidos) {
      soma += index.getPreco;
    }

    return soma * _taxaDeServico;
  }
}