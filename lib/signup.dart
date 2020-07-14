import 'package:flutter/material.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
    @override
    _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar:AppBar(title:Text('Sign Up'),backgroundColor:Colors.indigo ,),
               body:SingleChildScrollView(
                scrollDirection: Axis.vertical,


                    child:Center(
                       child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0,95.0,15.0,34.0),
                               child: Container(
                              height:380,
                                 width:280,

                         color:Colors.indigo.shade50,

                                child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: <Widget>[
                                        Icon(Icons.account_circle,color: Colors.indigo,size:98,),
                                        Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                        decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.black),
                                        icon:Icon(Icons.email,color:Colors.indigo ,),
                                        ),
                                        ),
                                        ),
                                        Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                        decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.black),
                                        icon:Icon(Icons.lock,color:Colors.indigo ,),
                                        ),
                                        ),
                                        ),

                                Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Phone",
                                            hintStyle: TextStyle(color: Colors.black),
                                            icon:Icon(Icons.phone,color:Colors.indigo ,),
                                        ),
                                    ),
                                ),

                                    Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(color: Colors.indigo,textColor: Colors.black,
                                      shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                                    onPressed:(){
                                        Navigator.pushNamed(context, '/login');
                                    } ,
                                    child: Text("Sign Up"),
                                    ),

                                      ),

                                    ],
                                    ),
                            
                                    ),
                                    ),
                                    ) ,

        
),
        );





































        /* purple bglayout
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
                                        height: 300,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('images/background.png'),
                                                fit: BoxFit.fill
                                            )
                                        ),

                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 150),
                                        child: Center(
                                            child: Text("Create your account", style: TextStyle(color: Colors.white, fontSize: 27,),),
                                        ),

                                    ),
                                ],),
                            // Text("Create your account",style:TextStyle(fontSize:23,color:Colors.indigo,


                            Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                                child: Center(
                                    child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Email",
                                            hintStyle: TextStyle(color: Colors.grey[400]),
                                            icon:Padding(
                                                padding: const EdgeInsets.fromLTRB(16.0,2.0,2.0,2.0),
                                                child: Icon(Icons.email,color:Colors.indigo,),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                            Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey[400]),
                                        icon:Padding(
                                            padding: const EdgeInsets.fromLTRB(16.0,2.0,2.0,2.0),
                                            child: Icon(Icons.lock,color:Colors.indigo,),
                                        ),
                                    ),
                                ),
                            ),
                            Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Phone",
                                        hintStyle: TextStyle(color: Colors.grey[400]),
                                        icon:Padding(
                                            padding: const EdgeInsets.fromLTRB(16.0,2.0,2.0,2.0),
                                            child: Icon(Icons.phone,color:Colors.indigo,),
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
                                            padding: const EdgeInsets.all(10.0),
                                            child: FlatButton(child:Text('Register',style: TextStyle(color:Colors.white),),
                                                onPressed: (){
                                                    Navigator.pushNamed(context, '/login');
                                                },),
                                        ),
                                    ),
                                ),
                            ),

                        ],


                    ),

                ),),

        );
*/    }
}