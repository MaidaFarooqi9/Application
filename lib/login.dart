import 'package:flutter/material.dart';
import 'main.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
body: SingleChildScrollView(
child: Container(
child: Column(
children: <Widget>[
Stack(


children: <Widget>[

Container(
height: 400,
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
child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
),

),
Container(
margin: EdgeInsets.only(top:150,left: 70),
child:Icon(Icons.account_circle,color: Colors.white,size:50.0,),

),



],
),



Container(
padding: EdgeInsets.all(8.0),
decoration: BoxDecoration(
border: Border(bottom: BorderSide(color: Colors.grey[100]))
),
child: TextField(
decoration: InputDecoration(
border: InputBorder.none,
hintText: "Email",
hintStyle: TextStyle(color: Colors.grey[400])
),
),
),
Container(
padding: EdgeInsets.all(8.0),
child: TextField(
decoration: InputDecoration(
border: InputBorder.none,
hintText: "Password",
hintStyle: TextStyle(color: Colors.grey[400])
),
),
),


Container(
height: 50,
width:120,
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
  child:InkWell(
child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
  onTap:(){
  Navigator.pushNamed(context, '/seller');
  }
),),
),//),
InkWell(
child:Padding(
padding: const EdgeInsets.all(20.0),
child: Text("Don't have account?Sign Up here",style:TextStyle(color:Colors.red),),
),

onTap: (){
Navigator.pushNamed(context, '/signup');
},



),
],
),
),),
);
}
}


