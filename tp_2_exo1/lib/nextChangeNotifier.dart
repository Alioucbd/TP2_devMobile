
import 'package:flutter/cupertino.dart';

class NextChangeNotifier with ChangeNotifier{
  // on met les données qui sont succeptible d'etre changées
  int index = 0;
  bool buttonFalse = false, buttonTrue =false;
  var reponse =  Map<int, bool>();

  NextChangeNotifier(this.index, this.buttonTrue, this.buttonFalse, this.reponse);

  int get getIndex => index;

  bool get getButtonFalse => buttonFalse;

  bool get getButtonTrue => buttonTrue;

  Map<int, bool> get getReponse => reponse;

  set setIndex (int index){
    this.index = index;
    notifyListeners();
  }

  set setButtonFalse (bool buttonFalse){
    this.buttonFalse = buttonFalse;
    notifyListeners();
  }

  set setButtonTrue (bool buttonTrue){
    this.buttonTrue = buttonTrue;
    notifyListeners();
  }

  set setReponse (Map<int, bool> reponse){
    this.reponse = reponse;
    notifyListeners();
  }
}