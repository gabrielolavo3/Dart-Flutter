import 'prato.dart';

class Salgadinho extends Prato {
  String massa = '';
  String tipo = '';
  String recheio = '';

  Salgadinho(String nome, double preco, int quantidade, this.massa, this.tipo, this.recheio) : super(nome, preco, quantidade);

  @override
  double calcularPreco() {
    return quantidade * preco;
  }
}