import 'package:hive_flutter/adapters.dart';

class toDoDataBase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  //first time data creation
  void createInitialData() {
    toDoList = [
      ['Task 1', false],
      ['Task 2', false],
      ['Task 3', false],
    ];
  }

  //function to get data from hive box
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
