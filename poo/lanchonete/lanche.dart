import 'prato.dart';

class Lanche extends Prato {
  String pao = '';
  String recheio = '';
  String molho = '';  

  Lanche(String nome, double preco, int quantidade, this.pao, this.recheio, this.molho) : super(nome, preco, quantidade);

  @override
  double calcularPreco() {
    return quantidade * preco;
  }
}