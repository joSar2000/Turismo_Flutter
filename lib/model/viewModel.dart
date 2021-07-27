import 'package:flutter/material.dart';

class HomePageViewModel extends ChangeNotifier{

  var image;
  var image2;
  bool cropAfterPicked = false;

  Future setCropAfterPicker(bool value)async{
    this.cropAfterPicked = value;
    this.notifyListeners();
  }

  Future setImage(var file)async{
    this.image = file;
    this.notifyListeners();
  }

  Future setImage2(var file)async{
    this.image2 = file;
    this.notifyListeners();
  }

}