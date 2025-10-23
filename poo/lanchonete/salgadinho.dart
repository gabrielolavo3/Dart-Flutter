import 'produto.dart';

class Salgadinho extends Produto {
  String tipo = '';
  String massa = '';
  String recheio = '';

  Salgadinho(String nomeProduto, this.tipo, this.massa, this.recheio) : super(nomeProduto);

  @override
  double calcularPreco() {
    setPreco = this.tipo.toLowerCase() == 'frito' ? 20 : 18;    
    return quantidade * double.parse(getPreco);    
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