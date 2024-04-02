import 'dart:io';

void main() {
  List<String> tareas = [];
  
  while (true) {
    mostrarMenu();
    stdout.write('¿Qué deseea realizar?: ');
    String? opcion = stdin.readLineSync();
    
    switch (opcion) {
      case '1':
        agregarTarea(tareas);
        break;
      case '2':
        marcarTareaComoCompletada(tareas);
        break;
      case '3':
        eliminarTarea(tareas);
        break;
      case '4':
        mostrarTareas(tareas);
        break;
      case '5':
        return; // Salir del programa
      default:
        print('Opción no válida. Por favor, intente de nuevo.');
    }
  }
}

void mostrarMenu() {
  print('== To-Do List ==');
  print('1. Agregar tarea');
  print('2. Marcar tarea como completada');
  print('3. Eliminar tarea');
  print('4. Mostrar tareas');
  print('5. Salir');
}

void agregarTarea(List<String> tareas) {
  stdout.write('Ingrese la nueva tarea: ');
  String nuevaTarea = stdin.readLineSync()!;
  tareas.add(nuevaTarea);
  print('Tarea agregada: $nuevaTarea');
}

void marcarTareaComoCompletada(List<String> tareas) {
  stdout.write('Ingrese el número de tarea completada: ');
  int indice = int.parse(stdin.readLineSync()!) - 1;
  if (indice >= 0 && indice < tareas.length) {
    tareas[indice] = '[X] ${tareas[indice]}';
    print('Tarea marcada como completada: ${tareas[indice]}');
  } else {
    print('Número de tarea inválido.');
  }
}

void eliminarTarea(List<String> tareas) {
  stdout.write('Ingrese el número de tarea a eliminar: ');
  int indice = int.parse(stdin.readLineSync()!) - 1;
  if (indice >= 0 && indice < tareas.length) {
    String tareaEliminada = tareas.removeAt(indice);
    print('Tarea eliminada: $tareaEliminada');
  } else {
    print('Número de tarea inválido.');
  }
}

void mostrarTareas(List<String> tareas) {
  print('== Lista de Tareas ==');
  for (int i = 0; i < tareas.length; i++) {
    print('${i + 1}. ${tareas[i]}');
  }
}
