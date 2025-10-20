import 'itemLivraria.dart';

class Livro extends Itemlivraria {
  String numeroDePaginas = '';

  Livro(String titulo, String autor, String numeroDePaginas)
    : super(titulo, autor) {
    this.numeroDePaginas = numeroDePaginas;
  }

  @override
  String toString() {
    return 
      '\nLivro: $titulo' + 
      '\nAutor: $autor' + 
      '\nNúmero de páginas: ${numeroDePaginas}';
  }
}
