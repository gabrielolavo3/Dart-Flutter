class Conta {
  String nomeTitular = '';
  String numeroConta = '';
  String tipoOperacao = '';
  double saldo = 0;
  double valorOperacao = 0;

  Conta(String nomeTitular, String numeroConta, double saldo, double valorOperacao) {
    this.nomeTitular = nomeTitular;
    this.numeroConta = numeroConta;
    this.saldo = saldo;
    this.valorOperacao = valorOperacao;
  }

  set setSaldo(double saldo) {
    this.saldo = saldo > 0 ? saldo : this.saldo;
  }

  get getSaldo {
    return this.saldo;
  }

  double deposito() {
    if (valorOperacao > 0) {
      this.saldo += valorOperacao;
    } 
    else {
      this.saldo = this.saldo;
    }

    return this.saldo;
  }

  double saque() {
    if (valorOperacao <= this.saldo && valorOperacao > 0) {
      this.saldo -= valorOperacao;

      if (saldo <= 0) {
        this.saldo = 0;
      }
    }

    return this.saldo;
  }

  String escolhaTransacao(String tipo) {
    this.tipoOperacao = tipo[0]; // Atribui o primeiro caractere(char)

    if (tipoOperacao.toLowerCase() == 's' && tipoOperacao.isNotEmpty) {
      saque();
    } 
    else if (tipoOperacao.toLowerCase() == 'd' && tipoOperacao.isNotEmpty) {
      deposito();
    }

    return tipoOperacao;
  }

  String toString() {
    return 
        '\nDados Bancarios'
        '\nNome do titular: $nomeTitular' +
        '\nNúmero da conta: $numeroConta' +
        '\nSaldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}
