abstract class Produto {
  String nomeProduto = '';
  double _preco = 0; //Atributo privado
  int quantidade = 0;  

  Produto(String nomeProduto) {    
    this.nomeProduto = nomeProduto;    
  }

  /* Sobrecarga de construtor do Dart. Usa-se o Construtor Nomeado para diferenciação
  Produto.quantidade(this.quantidade); */

  set setPreco(double preco) {
    this._preco = preco;
  }

  get getPreco {
    return this._preco;
  }

  double calcularPreco();

  String toString();
}