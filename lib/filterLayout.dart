import "package:flutter/material.dart";

class filter extends StatefulWidget {
  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {

  var filters=["By Price","By Weight","By Teeth"];
  var currentvalue= "By Price";

  @override

  Widget build(BuildContext context) {
    void dropDownSelected(String newValueSelected){
      setState(() {
        this.currentvalue=newValueSelected;

      });
    }
    return Scaffold(
      appBar:AppBar(title:Text('category'),backgroundColor: Colors.indigo,actions:<Widget>[

        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            width: 150,
            //height:245 ,
            color: Colors.white,
            child:DropdownButton(iconSize:50,
              iconEnabledColor:Colors.indigo,
              items: filters.map((String dropDownStringItem) {
                return DropdownMenuItem<String> (
                  value: dropDownStringItem,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(dropDownStringItem,style:TextStyle(color:Colors.black, ),),
                  ),//converting value into child
                );
              }
              ).toList(),
              onChanged: (String newValueSelected){
                dropDownSelected(newValueSelected);
              },
              value:currentvalue,
            ),
          ),),]),


      body:Container(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(child: Text('hi')),
        ),
      ),
    );
  }
}














