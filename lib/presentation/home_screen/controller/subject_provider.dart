import 'package:eramo/models/subjectModel.dart';
import 'package:eramo/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class SubjectProvider with ChangeNotifier {
  List<Subject> subjects = [
    Subject('Math', AssetsManager.math),
    Subject('English', AssetsManager.english),
    Subject('Biology', AssetsManager.biology),
    Subject('France', AssetsManager.france),
    Subject('Geography', AssetsManager.geography),
    Subject('History', AssetsManager.history),
    Subject('Chemistry', AssetsManager.chemistry),
    Subject('France', AssetsManager.france),
  ];
  int selected=0;

  changeSelection(int index) {
    //if it selected it will be remove so will decrease selected count
    if(subjects[index].isSelected){
      selected--;
    }else{
      selected++;
    }
    subjects[index].changeSelection();
    notifyListeners();
  }
}
