import 'dart:io';
import 'jornal.dart';
import 'livro.dart';
import 'revista.dart';

void main() {
  String titulo,
  autor,
  numeroPagina,
  edicao,
  dataPublicacao;

  print('Livro');
  stdout.write('Informe o nome do livro: ');
  titulo = stdin.readLineSync()!;
  stdout.write('Informe o autor do livro: ');
  autor = stdin.readLineSync()!;
  stdout.write('Informe o número de páginas: ');
  numeroPagina = stdin.readLineSync()!;

  Livro livro = new Livro(titulo, autor, numeroPagina);

  print('\nRevista');
  stdout.write('Informe o nome da revista: ');
  titulo = stdin.readLineSync()!;
  stdout.write('Informe o autor da revista: ');
  autor = stdin.readLineSync()!;
  stdout.write('Informe a edição da revista: ');
  edicao = stdin.readLineSync()!;

  Revista revista = new Revista(titulo, autor, edicao);

  print('\nJornal');
  stdout.write('Informe o nome do jornal: ');
  titulo = stdin.readLineSync()!;
  stdout.write('Informe o autor da jornal: ');
  autor = stdin.readLineSync()!;
  stdout.write('Informe a data de publicação do jornal: ');
  dataPublicacao = stdin.readLineSync()!;

  Jornal jornal = new Jornal(titulo, autor, dataPublicacao);

  print(livro.toString());
  print(revista.toString());
  print(jornal.toString());
}