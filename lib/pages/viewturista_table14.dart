
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turismo_flutter/model/viewModel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:turismo_flutter/pages/viewturista_table15.dart';

class TurismTable14 extends StatefulWidget {
  @override
  FormWidgetState14 createState() => FormWidgetState14();
}

class FormWidgetState14 extends State<TurismTable14>  {


  Future<File?> cropImage(var image)async{
    File? croppedFile = await ImageCropper.cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop My Image',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        )
    );
    return croppedFile;
  }

  Future<File?> getImageFromSource(ImageSource source, bool toCrop)async{
    var image = await ImagePicker().getImage(source: source);
    if(image==null)
      return null;
    if(toCrop){
      var croppedImage = await cropImage(File(image.path));
      return croppedImage;
    }
    return File(image.path);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0F2F2"),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: HexColor("#F0F2F2"),
        title: Text('14. ANEXOS',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: HexColor("#A65005"),
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded,
            size: 35.0,
            color: HexColor("#A65005"),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_rounded,
              size: 35.0,
              color: HexColor("#A65005"),),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  TurismTable15(),
              ));
              //_setData(context);
            },
          ),
        ],
      ),
      body: ChangeNotifierProvider<HomePageViewModel>(
        create: (context) => HomePageViewModel(),
        child: Consumer<HomePageViewModel>(
          builder: (context,viewModel,child){
            return Center(
              child: Column(
                children: [
                  if(viewModel.image==null)
                    Icon(Icons.camera,size: 70),
                  if(viewModel.image!=null)
                    Image.file(viewModel.image,height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: FloatingActionButton(
                            heroTag: "firstB",
                            elevation: 20.0,
                            child: Icon(Icons.photo),
                            onPressed: ()async{
                              var image = await getImageFromSource(ImageSource.gallery, viewModel.cropAfterPicked);
                              if(image==null)
                                return;
                              viewModel.setImage(image);
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: FloatingActionButton(
                            heroTag: "secondtB",
                            elevation: 20.0,
                            child: Icon(Icons.camera_alt),
                            onPressed: ()async{
                              var image = await getImageFromSource(ImageSource.camera, viewModel.cropAfterPicked);
                              if(image==null)
                                return;
                              viewModel.setImage(image);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Column(
                    children: <Widget> [
                      if(viewModel.image2==null)
                        Icon(Icons.camera,size: 70),
                      if(viewModel.image2!=null)
                        Image.file(viewModel.image2,height: 200),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: FloatingActionButton(
                                heroTag: "thirdB",
                                elevation: 20.0,
                                child: Icon(Icons.photo),
                                onPressed: ()async{
                                  var image2 = await getImageFromSource(ImageSource.gallery, viewModel.cropAfterPicked);
                                  if(image2==null)
                                    return;
                                  viewModel.setImage2(image2);
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: FloatingActionButton(
                                heroTag: "fourthB",
                                elevation: 20.0,
                                child: Icon(Icons.camera_alt),
                                onPressed: ()async{
                                  var image2 = await getImageFromSource(ImageSource.camera, viewModel.cropAfterPicked);
                                  if(image2==null)
                                    return;
                                  viewModel.setImage2(image2);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
