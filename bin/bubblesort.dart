void main() {
  List<int> numeros = [5, 10, 8, 1, 27, 7, 4, 6];
  print('Lista original: $numeros');
  
  ordenamientoBurbuja(numeros);
  
  print('Lista ordenada: $numeros');
}

void ordenamientoBurbuja(List<int> lista) {
  int n = lista.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (lista[j] > lista[j + 1]) {
        // Intercambiar elementos si están en el orden incorrecto
        int temp = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = temp;
      }
    }
  }
}
