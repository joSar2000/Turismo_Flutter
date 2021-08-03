
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';


class HomePageViewModel extends ChangeNotifier{

  DocumentReference viewTuristas = FirebaseFirestore.instance.collection("viewTuristas").doc();

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

  Future <void> saveImages (var file1, DocumentReference ref) async {
    String image1URL = await uploadFile(image);
    print(image1URL);
   // ref.update({"images": FieldValue.arrayUnion([image1URL])});
  }

  Future<String> uploadFile(var file1) async {
    firebase_storage.Reference storageReference = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('viewTuristas/${image.path}');
    firebase_storage.UploadTask uploadTask = storageReference.putFile(image);
    print('File1 Uploaded');
    String returnURL = "";

    return returnURL;
  }
  Future<String> uploadFile2(var file2) async {
    firebase_storage.Reference storageReference = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('viewTuristas/${image2.path}');

    firebase_storage.UploadTask uploadTask = storageReference.putFile(image2);
    print('File2 Uploaded');
    String returnURL = "";

    return returnURL;
  }

  void Carga () {
    uploadFile(image);
    uploadFile2(image2);
  }

}