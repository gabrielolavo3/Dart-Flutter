import 'itemLivraria.dart';

class Revista extends Itemlivraria{
  String edicao = '';

  Revista (String titulo, String autor, this.edicao) : super(titulo, autor);

  @override
  String toString() {
    return 
      '\nLivro: $titulo' + 
      '\nAutor: $autor' + 
      '\nEdição: ${edicao.toString()}';
  }
}