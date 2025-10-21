import 'dart:io';
const max = 5;

void main() {
  List<int> valor = [];
  int posicao;

  for(int a = 0; a < max; a++) {
    stdout.write('Digite o número $a: ');
    int n = int.parse(stdin.readLineSync()!);
    valor.add(n);
  }

  stdout.write('Insira uma posição de índice: ');
  posicao = int.parse(stdin.readLineSync()!);

  // elementAt retorna o elemento de um índice do array
  if (valor.elementAt(posicao) != null) {
      print(valor.elementAt(posicao));
  }
}