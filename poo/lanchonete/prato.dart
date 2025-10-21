abstract class Prato {
  String nome = '';
  double preco = 0;
  int quantidade = 0;  

  Prato(String nome, double preco, int quantidade) {    
    this.nome = nome;
    this.preco = preco;
    this.quantidade = quantidade;    
  }

  set setPreco(double preco) {
    this.preco = preco;
  }

  get getPreco {
    return this.preco;
  }

  double calcularPreco();
}