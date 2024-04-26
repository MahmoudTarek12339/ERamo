import 'package:eramo/models/teacherModel.dart';
import 'package:eramo/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class TeachersProvider with ChangeNotifier {
  List<Teacher> teachers = [
    Teacher(
        'MR. Mohamed Ali', AssetsManager.teachers[0], 'Math subject', '4500'),
    Teacher(
        'MR. Ahmed Ali', AssetsManager.teachers[1], 'English subject', '4500'),
    Teacher('MR. Mohamed Ali', AssetsManager.teachers[2], 'English subject',
        '4500'),
    Teacher(
        'MR. Mohamed Ali', AssetsManager.teachers[3], 'Math subject', '4500'),
    Teacher('MR. Mohamed Ali', AssetsManager.teachers[4], 'Biology subject',
        '4500'),
    Teacher('MR. Mohamed Ali', AssetsManager.teachers[5], 'English subject',
        '4500'),
  ];

  List<int> selectedTeachers = [];

  int prices = 0;

  changeSelection(int index) {
    if (!teachers[index].isSelected) {
      prices += int.tryParse(teachers[index].price) ?? 0;
      teachers[index].changeSelection();
      selectedTeachers.add(index);
      teachers[index].changeSelectionNumber(selectedTeachers.length);
    } else {
      prices -= int.tryParse(teachers[index].price) ?? 0;
      teachers[index].changeSelection();
      int pos = selectedTeachers.indexWhere((element) => element == index);
      _updateSelectionsPositions(pos);
    }
    notifyListeners();
  }

  _updateSelectionsPositions(int startPosition) {
    selectedTeachers.removeAt(startPosition);
    for (int i = startPosition; i < selectedTeachers.length; i++) {
      teachers[selectedTeachers[i]].changeSelectionNumber(
          teachers[selectedTeachers[i]].selectionNumber! - 1);
    }
  }
}
