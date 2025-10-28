import 'produto.dart';

class Salgadinho extends Produto {
  String tipo = '';
  String massa = '';
  String recheio = '';

  Salgadinho(String nomeProduto, this.tipo, this.massa, this.recheio) : super(nomeProduto);

  @override
  double calcularPreco() {
    setPreco = this.tipo.toLowerCase() == 'frito' ? 20 : 18;      
    double precoProduto = getPreco;
    return quantidade * precoProduto; 
  }

  @override
  String toString() {
    return 
      '\nSalgadinho: $nomeProduto (tipo: $tipo, recheio: $recheio, massa: $massa)';
  }
}