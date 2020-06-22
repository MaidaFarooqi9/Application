import 'dart:io';
import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'dart:io';
import 'package:image_picker/image_picker.dart';
class Seller extends StatefulWidget {
  @override
  _SellerState createState() => _SellerState();
}

class _SellerState extends State<Seller> {


  final myController=TextEditingController();
  final myController1=TextEditingController();
  final myController2=TextEditingController();
  File imageFile;
  String details;
  String W,T,P;
  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('mandi'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                FlatButton(
                  child: Text('Camera'),
                  onPressed: () {
                    Camera(context);
                  },
                ),
                FlatButton(
                  child: Text('Gallery'),
                  onPressed: () {
                    Gallery(context);
                  },
                ),
                IconButton(icon:Icon(Icons.clear),onPressed:(){
                  Navigator.of(context).pop();
                } ,),
              ],
            ),
          ),
        );
      },
    );
  }

  Camera(BuildContext context)async{
    var image=await ImagePicker.pickImage(source:ImageSource.camera);
    this.setState((){
      imageFile=image;
    }
    );
    Navigator.of(context).pop;//removes the alert dialog context
  }

  Gallery(BuildContext context)async{
    var image=await ImagePicker.pickImage(source:ImageSource.gallery);
    this.setState((){
      imageFile=image;
    }
    );
    Navigator.of(context).pop;
  }

  Widget imageSize(){
    if(imageFile==null){return Text('no file selected');}
    else
    {return Image.file(imageFile,width:400,height:400,);}
  }
  Widget Details(){
    if(myController==null&&myController1==null&&myController2==null){return Text('no details');}
    else
    {return Text(myController.text+" "+myController1.text+"  "+myController2.text);}
  }







  Future<void> _DetailsDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Details of your animal'),
          content: SingleChildScrollView(

            child: ListBody(

              children: <Widget>[
                TextField(controller:myController,
              decoration:InputDecoration(hintText:"weight",)   ),
                TextField(controller:myController1,
                    decoration:InputDecoration(hintText:"no of teeth",)),
                TextField(controller:myController2,
                    decoration:InputDecoration(hintText:"price",)),
                FlatButton(
                  child: Text('Done'),
                  onPressed: () {
                    Text('response recorded');
                  },
                ),
                IconButton(icon:Icon(Icons.clear),onPressed:(){
                  Navigator.of(context).pop();
                } ,),
              ],
            ),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
return Scaffold(
  body:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[

      imageSize(),

    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Details(),
    ),
       Padding(
         padding: const EdgeInsets.all(14.0),
         child: Container(
          height: 50,
          width:130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(130, 158, 251, 9),
                    Color.fromRGBO(103, 104, 251, .6),
                  ]
              )
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(onPressed:(){_showMyDialog(context);}, child: Text("add image") ,),
            ),
          ),
      ),
       ),


      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          height: 50,
          width:130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(130, 158, 251, 9),
                    Color.fromRGBO(103, 104, 251, .6),
                  ]
              )
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child:       FlatButton(child: Text('add details'),onPressed: (){
                _DetailsDialog(context);

              }),
            ),
          ),
        ),
      ),






    ],
  )
);

  }
}
