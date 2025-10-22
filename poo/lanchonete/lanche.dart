import 'produto.dart';

class Lanche extends Produto{
  String pao = '';
  String recheio = '';
  String molho = '';

  Lanche(String nomeProduto, double preco,  int quantidade, this.pao, this.recheio, this.molho) : super(nomeProduto, preco, quantidade);

  @override
  double calcularPreco() {
    return quantidade * preco;
  }

  @override
  String toString() {
    return 
      '\nNome do produto: $nomeProduto' +
      '\nPão: $pao' +
      '\nRecheio: $recheio' +
      '\nMolho: $molho';
  }
}