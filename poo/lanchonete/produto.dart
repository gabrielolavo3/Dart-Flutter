abstract class Produto {
  String nomeProduto = '';
  double preco = 0;
  int quantidade = 0;  

  Produto(String nomeProduto, double preco, int quantidade) {    
    this.nomeProduto = nomeProduto;
    this.preco = preco;
    this.quantidade = quantidade;    
  }

  // set setPreco(double preco) {
  //   this._preco = preco;
  // }

  // get getPreco {
  //   return this._preco;
  // }

  double calcularPreco();

  String toString();
}