import 'itemLivraria.dart';

class Jornal extends Itemlivraria {
  String dataPublicacao = '';

  Jornal(String titulo, String autor, this.dataPublicacao) : super(titulo, autor);

  @override
  String toString() {
    return 
      '\nLivro: $titulo' + 
      '\nAutor: $autor' + 
      '\nEdição: ${dataPublicacao.toString()}';
  }
}