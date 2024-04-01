import 'dart:io';

void main() {
  print('Calculadora de IMC (Índice de Masa Corporal)');
  print('--------------------------------------------');

  // Pedir al usuario que ingrese su peso en kilogramos
  stdout.write('Ingresa tu peso en kilogramos: ');
  double peso = double.parse(stdin.readLineSync()!);

  // Pedir al usuario que ingrese su altura en metros
  stdout.write('Ingresa tu altura en metros: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Calcular el IMC
  double imc = calcularIMC(peso, altura);

  // Mostrar el resultado
  print('\nTu IMC es: $imc');
  print('Interpretación del IMC:');
  print('Bajo peso: Menos de 18.5');
  print('Normal: 18.5 - 24.9');
  print('Sobrepeso: 25 - 29.9');
  print('Obesidad: 30 o más');
}

// Función para calcular el IMC
double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}
