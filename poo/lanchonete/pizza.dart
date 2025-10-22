import 'produto.dart';

class Pizza extends Produto {
  String molho = '';
  String recheio = '';
  String borda = '';

  Pizza(String nomeProduto, double preco,  int quantidade, this.molho, this.recheio, this.borda) : super(nomeProduto, preco, quantidade);

  @override
  double calcularPreco() {
    return quantidade * preco;
  }

  @override
  String toString() {
    return 
      '\nNome do produto: $nomeProduto' +
      '\nMolho: $molho' +
      '\nRecheio: $recheio' +
      '\nBorda: $borda';
  }
}