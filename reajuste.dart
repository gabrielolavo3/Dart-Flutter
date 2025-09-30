import 'dart:io';

void main() {
  double salario;
  double salarioReajustado;
  double aumento;
  int percentual;

  stdout.write('Insira o valor bruto do salário (R\$): ');
  salario = double.parse(stdin.readLineSync()!);

  if (salario <= 280) {
    percentual = 20;
    aumento = salario * (percentual/100);
    salarioReajustado = salario + aumento;
  } 
  else if (salario > 280 && salario <= 700) {
    percentual = 15;
    aumento = salario * (percentual/100);
    salarioReajustado = salario + aumento;
  } 
  else if (salario > 700 && salario <= 1500) {
    percentual = 10;
    aumento = salario * (percentual/100);
    salarioReajustado = salario + aumento;
  } 
  else {
    percentual = 5;
    aumento = salario * (percentual/100);
    salarioReajustado = salario + aumento;
  }

  print('\nSalário: R\$ ${salario.toStringAsFixed(2)}');
  print('Percentual de aumento: $percentual\%');
  print('Valor do aumento: R\$ ${aumento.toStringAsFixed(2)}');
  print('Salário reajustado: R\$ ${salarioReajustado.toStringAsFixed(2)}');
}
