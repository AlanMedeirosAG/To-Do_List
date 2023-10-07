import 'dart:io';

void main() {
  List<String> toDoList = [];

  while (true) {
    print("Escolha uma ação:");
    print("1 - Adicionar tarefa");
    print("2 - Listar tarefas");
    print("3 - Remover tarefa");
    print("4 - Sair");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Digite a tarefa a ser adicionada:");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          toDoList.add(task);
          print("Tarefa adicionada com sucesso!");
        } else {
          print("A tarefa não pode ser vazia. Tente novamente.");
        }
        break;

      case '2':
        if (toDoList.isEmpty) {
          print("A lista de tarefas está vazia.");
        } else {
          print("Tarefas:");
          for (int i = 0; i < toDoList.length; i++) {
            print("$i - ${toDoList[i]}");
          }
        }
        break;

      case '3':
        if (toDoList.isEmpty) {
          print("A lista de tarefas está vazia.");
        } else {
          print("Tarefas:");
          for (int i = 0; i < toDoList.length; i++) {
            print("$i - ${toDoList[i]}");
          }
          
          print("Escolha uma tarefa para remover");
          String? escolha = stdin.readLineSync();
          if (escolha != null) {
            int? indice = int.tryParse(escolha);
            if (indice != null && indice >= 0 && indice < toDoList.length) {
              toDoList.removeAt(indice);
              print("Tarefa removida com sucesso!");
            } else {
              print("Índice inválido. Tente novamente.");
            }
          }
        }
        break;

      case '4':
        print("Saindo do programa.");
        return;

      default:
        print("Opção inválida. Tente novamente.");
        break;
    }
  }
}
