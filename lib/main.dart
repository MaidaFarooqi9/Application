
import 'dart:ui';
import 'package:loginanimation/seller.dart';
import 'package:loginanimation/signup.dart';
import 'package:loginanimation/cow.dart';
import 'FadedAnimation.dart';
import 'login.dart';

import'package:flutter/material.dart';

//void main() => runApp(MaterialApp(home: MyApp()));

void main() => runApp(MaterialApp(
initialRoute: '/',
routes:{
'/':(context)=>MyApp (),
  '/signup':(context)=>SignUp(),
'/login':(context)=>Login(),
  '/seller':(context)=>Seller(),
  '/cow':(context)=>cow(),
},

)
);


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Sign up'),backgroundColor: Colors.indigo,),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Stack(


                children: <Widget>[

                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/background.png'),
                            fit: BoxFit.fill
                        )
                    ),

                  ),

               Container(

                 margin:EdgeInsets.only(top:90 ,left:120 ) ,

                 child:ClipRRect(
                    borderRadius: BorderRadius.circular(150.0),
                    child: Image.asset(
                      'images/cow.png', height: 110.0, width: 100.0,),),
               ),
                ],),

              Container(
                child: ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(

                      colors: <Color>[Color.fromRGBO(130, 158, 251, 9),
                        Color.fromRGBO(103, 104, 251, .6),
                      ],
                      tileMode: TileMode.mirror,
                    ).createShader(rect);
                  },
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(29.0),
                    child: const Text('Who are you?',
                      style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),),
                  )),
                ),

              ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:<Widget>[

    Padding(
      padding: const EdgeInsets.all(20.0),
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
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(child:Text('A Buyer',style: TextStyle(color:Colors.white),) ,),
          ),
        ),
      ),
    ),


    Padding(
      padding: const EdgeInsets.all(20.0),
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
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
              child:Text('A Seller',style: TextStyle(color:Colors.white),) ,),
          ),
        ),
      ),
    ),

  ],),


            ],),),),);
  }
  }
