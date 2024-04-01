void main() {
  String texto = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum eleifend odio, eget varius magna aliquam non. Cras non justo nec nulla fringilla pretium sed in purus. Integer euismod nec lectus vel consequat. Maecenas vehicula, est id maximus ullamcorper, velit risus blandit libero, id condimentum eros urna at nisi. Donec euismod quam nec lorem lacinia, id scelerisque dui efficitur. Vivamus nec augue sit amet leo bibendum dictum et a eros. Phasellus et odio eu tellus rhoncus sollicitudin sit amet vitae felis. Nullam dignissim metus eu purus interdum, a gravida metus posuere. Duis ut elit eget orci faucibus ve";

  String palabraABuscar = "saltar";

  int ocurrencias = contarOcurrencias(texto, palabraABuscar);

  print("La palabra '$palabraABuscar' se repite $ocurrencias veces en el texto.");
}

int contarOcurrencias(String texto, String palabra) {
  // Dividir el texto en palabras usando espacios como delimitadores
  List<String> palabras = texto.split(' ');

  // Inicializar un contador de ocurrencias
  int contador = 0;

  // Iterar sobre cada palabra y contar las ocurrencias de la palabra objetivo
  for (String palabraEnTexto in palabras) {
    // Normalizar las palabras para eliminar signos de puntuación y diferencias de mayúsculas/minúsculas
    palabraEnTexto = palabraEnTexto.toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '');

    if (palabraEnTexto == palabra.toLowerCase()) {
      contador++;
    }
  }

  return contador;
}
