import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  bool isCompleted = false;
  int index = 0;
  List<String> names = [
    'Reunião Daily',
    'Verificar PullRequest',
    'Verificar Jira ',
    'Reunião 11 da manhã',
    'Reunião 14 da tarde',
    "Reunião Sprint",
    "Anotação diária",
    'Reunião Daily',
    'Verificar PullRequest',
    'Verificar Jira ',
    'Reunião 11 da manhã',
    'Reunião 14 da tarde',
    "Reunião Sprint",
    "Anotação diária",
  ];


  List<bool> check = List.generate(14, (index) => false);

  bool get completed => isCompleted;

  MyProvider({this.isCompleted = false});

  setCheck() {
    for (int i = 0; i < check.length; i++) {
      if (check[i]) {
        Icon(Icons.check);
      } else {
        Icon(Icons.close);
      }
      check[index] = true;
      isCompleted = check[index];
    }
  }
}