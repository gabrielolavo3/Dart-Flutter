import 'produto.dart';

class Lanche extends Produto{
  String pao = '';
  String recheio = '';
  String molho = '';

  Lanche(String nomeProduto, this.pao, this.recheio, this.molho) : super(nomeProduto);

  @override
  double calcularPreco() {
    setPreco = this.pao.toLowerCase() == 'integral' ? 15 : 12;  
    double precoProduto = getPreco;
    return quantidade * precoProduto;    
  }

  @override
  String toString() {
    return 
      '\nLanche: $nomeProduto (pão: $pao, recheio: $recheio, molho: $molho)';
  }
}