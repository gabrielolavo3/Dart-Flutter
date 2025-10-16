class Calculadora {
  double valorA = 0;
  double valorB = 0;

  Calculadora(this.valorA, this.valorB);

  double somar() {
    return valorA + valorB;
  }

  double subtrair() {
    return valorA - valorB;
  }

  double multiplicar() {
    return valorA * valorB;
  }

  double dividir() {
    double resultado;
    if (valorA == 0 || valorB == 0) {
      resultado = 0;
    } else {
      resultado = valorA / valorB;
    }

    return resultado;
  }
}
