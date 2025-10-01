import 'dart:io';
import 'dart:math'; // Permite usar métodos matemáticos

String volumeEsfera(double raio) {
  double volume = (4 / 3) * 3.14 * pow(raio, 3);
  return 'O volume da esfera é ${volume.toStringAsFixed(2)}';
}

void main() {
  double raio;

  stdout.write('Informe o raio da esfera: ');
  raio = double.parse(stdin.readLineSync()!);
  
  print(volumeEsfera(raio));
}
