import 'produto.dart';

class Pizza extends Produto {
  String molho = '';
  String recheio = '';
  String borda = '';

  Pizza(String nomeProduto, this.molho, this.recheio, this.borda) : super(nomeProduto);

  @override
  double calcularPreco() {
    // Pode-se chamar diretamente o set e get porquê a classe herdar os métodos da superclasse
    setPreco = this.borda.toLowerCase() == 'recheada' ? 20 : 18;    
    return quantidade * double.parse(getPreco);
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