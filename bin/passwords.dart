import 'dart:math';

void main() {
  int longitud = 12; 
  String contrasena = generarContrasena(longitud);
  print('Contraseña generada: $contrasena');
}

String generarContrasena(int longitud) {
  // Caracteres permitidos para la contraseña
  String caracteresPermitidos =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#\$%^&*';

  // Generar una contraseña aleatoria
  String contrasena = '';
  Random random = Random.secure();
  for (int i = 0; i < longitud; i++) {
    int indice = random.nextInt(caracteresPermitidos.length);
    contrasena += caracteresPermitidos[indice];
  }

  return contrasena;
}
