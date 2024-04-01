import 'dart:io';

void main() {
  print('Conversor de temperatura');
  print('------------------------');
  print('1. Celsius a Fahrenheit');
  print('2. Fahrenheit a Celsius');
  stdout.write('Elige una opción (1 o 2): ');

  String? opcion = stdin.readLineSync();

  if (opcion == '1') {
    stdout.write('Ingresa la temperatura en Celsius: ');
    double temperaturaCelsius = double.parse(stdin.readLineSync()!);
    double temperaturaFahrenheit = (temperaturaCelsius * 9 / 5) + 32;
    print('$temperaturaCelsius °C es igual a $temperaturaFahrenheit °F');
  } else if (opcion == '2') {
    stdout.write('Ingresa la temperatura en Fahrenheit: ');
    double temperaturaFahrenheit = double.parse(stdin.readLineSync()!);
    double temperaturaCelsius = (temperaturaFahrenheit - 32) * 5 / 9;
    print('$temperaturaFahrenheit °F es igual a $temperaturaCelsius °C');
  } else {
    print('Opción no válida.');
  }
}
