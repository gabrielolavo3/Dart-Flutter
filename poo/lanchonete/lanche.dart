import 'produto.dart';

class Lanche extends Produto{
  String pao = '';
  String recheio = '';
  String molho = '';

  Lanche(String nomeProduto, this.pao, this.recheio, this.molho) : super(nomeProduto);

  @override
  double calcularPreco() {
    setPreco = this.pao.toLowerCase() == 'integral' ? 15 : 12;    
    return quantidade * double.parse(getPreco);
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