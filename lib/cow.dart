import "package:flutter/material.dart";
import 'ProductScreen.dart';
import 'ProductModel.dart';
import 'CheckoutScreen.dart';
class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}
class _DropDownState extends State<DropDown> {
  var filters=["price","weight","teeth"];
  var currentvalue= "price"; //by default selected
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListTile(
          title: DropdownButton(
            items: filters.map((String dropDownStringItem) {
              return DropdownMenuItem<String> (
                value: dropDownStringItem,
                child: Text(dropDownStringItem),//converting value into child
              );
            }
            ).toList(),
            onChanged: (String newValueSelected){
              DropDownSelected(newValueSelected);
            },
            value: currentvalue,
          ),
        )
    );
  }
  void DropDownSelected(String newValueSelected){
    setState(() {
      this.currentvalue=newValueSelected; //if there are alot of values in a list so we make a function
      //it will help to automatically add the value selected in a current value variable
    });
  }
}
class cow extends StatefulWidget {
  @override
  _cowState createState() => _cowState();
}
List<ProductModel> cart = [];
int sum = 0;
class _cowState extends State<cow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Cow'),backgroundColor: Colors.indigo,actions: <Widget>[
           IconButton(icon:Icon(Icons.shopping_cart,color:Colors.white,size:20.0), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => new  CheckoutScreen(cart,sum)));
          },),
      ],) ,
      body:Column(
        children: <Widget>[

          ProductScreen((selectedProduct){
            setState(() {
              cart.add(selectedProduct); //update
              sum = 0;
              cart.forEach((item){
                sum = sum + item.price;
              });
            });
          },(unSelectedProduct){setState(() {
            cart.remove(unSelectedProduct);
            //update
            sum=sum-unSelectedProduct.price;
          });
          }
          ),
        ],
      ),
    );
  }
}
