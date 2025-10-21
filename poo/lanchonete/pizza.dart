import 'prato.dart';

class Pizza extends Prato {
  String molho = '';
  String recheio = '';
  String bordar = '';  

  Pizza(String nome, double preco, int quantidade, this.molho, this.recheio, this.bordar) : super(nome, preco, quantidade) {    
  }

  @override
  double calcularPreco() {
    return quantidade * preco;
  }
}