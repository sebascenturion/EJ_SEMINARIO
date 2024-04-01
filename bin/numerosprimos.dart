void main() {
  final int limite = 20;

  List<int> primos = cribaEratostenes(limite);

  print('Números primos hasta el límite de $limite:');
  print(primos);
}

List<int> cribaEratostenes(int limite) {
  List<bool> esPrimo = List.generate(limite + 1, (_) => true);

  for (int i = 2; i * i <= limite; i++) {
    if (esPrimo[i]) {
      for (int j = i * i; j <= limite; j += i) {
        esPrimo[j] = false;
      }
    }
  }

  List<int> primos = [];
  for (int i = 2; i <= limite; i++) {
    if (esPrimo[i]) {
      primos.add(i);
    }
  }

  return primos;
}
