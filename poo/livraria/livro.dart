import 'itemLivraria.dart';

class Livro extends Itemlivraria {
  int numeroDePaginas = 0;

  Livro(String titulo, String autor, int numeroDePaginas)
    : super(titulo, autor) {
    this.numeroDePaginas = numeroDePaginas;
  }

  @override
  String toString() {
    return 
      '\nLivro: $titulo' + 
      '\nAutor: $autor' + 
      '\nNúmero de páginas: ${numeroDePaginas.toString()}';
  }
}
