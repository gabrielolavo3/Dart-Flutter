import 'produto.dart';

class Salgadinho extends Produto {
  String tipo = '';
  String massa = '';
  String recheio = '';

  Salgadinho(String nomeProduto, double preco, int quantidade, this.tipo, this.massa, this.recheio) : super(nomeProduto, preco, quantidade);

  @override
  double calcularPreco() {
    return quantidade * preco;
  }

  @override
  String toString() {
    return 
      '\nNome do produto: $nomeProduto' +
      '\nTipo: $tipo' +
      '\nRecheio: $recheio' +
      '\nMassa: $massa';
  }
}