import 'dart:io';

void main() {
  double salario,
      maiorSalario = 0,
      mediaSalarioPopulacao,
      mediaFilhos,
      somaSalario = 0,
      percentualSalario,
      salarioAte350 = 0;
  int quantFilhos, somaFilhos = 0, contador = 0;
  String adicionarEntrevistado;

  while (true) {
    stdout.write('Informe o valor do salário do ${contador + 1}º entrevistado: ');
    salario = double.parse(stdin.readLineSync()!);
    stdout.write('Informe a quantidade de filhos do entrevistado: ');
    quantFilhos = int.parse(stdin.readLineSync()!);

    somaSalario += salario;
    somaFilhos += quantFilhos;
    contador++;
    maiorSalario = maiorSalario > salario ? maiorSalario : salario;

    if (salario <= 350) {
      salarioAte350++;
    }

    print('Deseja adicionar outro entrevistado (Y/N)?: ');
    adicionarEntrevistado = stdin.readLineSync()!;

    if (adicionarEntrevistado.toLowerCase() == 'y') {
      continue;
    } else if (adicionarEntrevistado.toLowerCase() == 'n') {
      break;
    }
  }

  mediaSalarioPopulacao = somaSalario / contador;
  mediaFilhos = somaFilhos / contador;
  percentualSalario = (salarioAte350 / contador) * 100;

  print('Média de salário da população: R\$ ${mediaSalarioPopulacao.toStringAsFixed(2)}');
  print('Média de filhos: ${mediaFilhos.toStringAsFixed(0)}');
  print('Maior salário: R\$${maiorSalario.toStringAsFixed(2)}');
  print('Percentual de pessoas com salário até R\$ 350,00: ${percentualSalario.toStringAsFixed(0)}\%');
}
