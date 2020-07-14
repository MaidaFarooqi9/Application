import 'dart:io';
import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'dart:io';
import 'package:image_picker/image_picker.dart';
class Seller extends StatefulWidget {
    @override
    _SellerState createState() => _SellerState();
    static  TextEditingController myController=TextEditingController(); //weight
    static TextEditingController myController1=TextEditingController(); //teeth
    static TextEditingController myController2=TextEditingController(); //price
    static File imageFile;

//Seller(this.myController,this.myController1,this.myController2,this.imageFile,);

}

class _SellerState extends State<Seller> {




//  String details;
    //String W,T,P;

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
            Seller.imageFile=image;//bec static obj can't be accessed through initilizer ,you've to writr class name even if using in their own class
        }
        );
        Navigator.of(context).pop;//removes the alert dialog context
    }

    Gallery(BuildContext context)async{
        var image=await ImagePicker.pickImage(source:ImageSource.gallery);
        this.setState((){
            Seller.imageFile=image;
        }
        );
        Navigator.of(context).pop;
    }

    Widget imageSize(){
        if(Seller.imageFile==null){return Text('no file selected');}
        else
        {return Image.file(Seller.imageFile,width:400,height:400,);}
    }

    Widget Details(){
        if(Seller.myController==null&&Seller.myController1==null&&Seller.myController2==null){return Text('no details');}
        else
        {return Text(Seller.myController.text+" "+Seller.myController1.text+"  "+Seller.myController2.text);}
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
                                TextField(controller:Seller.myController,
                                    decoration:InputDecoration(hintText:"weight",)   ),
                                TextField(controller:Seller.myController1,
                                    decoration:InputDecoration(hintText:"no of teeth",)),
                                TextField(controller:Seller.myController2,
                                    decoration:InputDecoration(hintText:"price",)),
                                FlatButton(
                                    child: Text('Done'),
                                    onPressed: () {
                                        SnackBar s=SnackBar(content:Text("response recorded"),duration:Duration(milliseconds: 2),
                                            backgroundColor:Colors.pinkAccent,);
                                        Scaffold.of(context).showSnackBar(s);
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
//add image
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Details(),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
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

//add details
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
                                    child:       FlatButton(
                                        child: Text('add details'),onPressed: (){
                                        _DetailsDialog(context);
                                    }
                                    ),
                                ),
                            ),
                        ),
                    ),
//view image
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
                                    child: FlatButton(onPressed:(){Navigator.pushNamed(context,'/cow');}, child: Text("View image") ,),
                                ),
                            ),
                        ),
                    ),





                ],
            )
        );

    }
}
