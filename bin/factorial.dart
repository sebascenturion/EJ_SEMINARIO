int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1; // Caso base: factorial de 0 o 1 es 1
  } else {
    return n * factorial(n - 1); // Llamada recursiva
  }
}

void main() {
  int numero = 5; // Número para calcular su factorial
  int resultado = factorial(numero);
  print('El factorial de $numero es $resultado');
}
