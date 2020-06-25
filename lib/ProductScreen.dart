import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductModel.dart';
import "seller.dart";


class ProductScreen extends StatefulWidget {
  final ValueSetter<ProductModel> _valueSetter;
  final ValueSetter<ProductModel>_valueRemoval;

  ProductScreen(this._valueSetter,this._valueRemoval);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {


  //Seller s=new Seller(myController, myController1, myController2, imageFile);


  List<ProductModel> products = [
    ProductModel("cow1", 300,"",Image.network("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&w=1000&q=80")),
    ProductModel("cow2", 400,"",Image.network("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&w=1000&q=80")),
    ProductModel("cow3",600,"",Image.network("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&w=1000&q=80")),
    ProductModel("cow4", 1000,"",Image.network("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&w=1000&q=80")),
    ProductModel("cow5", 900,"",Image.network("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&w=1000&q=80")),
    ProductModel("cow6",1200,"",Image.network("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&w=1000&q=80")),
    ProductModel(Seller.myController.text,int.parse(Seller.myController2.text),Seller.myController1.text,Image.file(Seller.imageFile),),
    //myController etc are static memebers in sellers because only static members can be use in initializers of productModel
    //Use classname.parameter because you can't acces static members through object of class like s.myController.text would be wrong

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return Container(

            child: ListTile(

              title: Text(products[index].name),
              leading:products[index].i,
              subtitle:Column(
                children:<Widget>[
                  Text("\$${products[index].price}",
                    style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
                  Text(products[index].weight.toString()+" kg",
                    style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[


                      IconButton(
                        icon: Icon(Icons.remove_circle, color: Colors.green,),
                        onPressed: () {
                          widget._valueRemoval(products[index]);
                          SnackBar s = SnackBar(content: Text(
                              products[index].name + " removed from your cart"),
                            duration: Duration(milliseconds: 3),
                            backgroundColor: Colors.pinkAccent,);
                          Scaffold.of(context).showSnackBar(s);
                        },),


                      IconButton(icon: Icon(Icons.add_circle, color: Colors.red,),
                        onPressed: () {
                          widget._valueSetter(products[index]);
                          SnackBar s = SnackBar(content: Text(
                              products[index].name + " added to your cart"),
                            duration: Duration(milliseconds: 3),
                            backgroundColor: Colors.cyanAccent,);
                          Scaffold.of(context).showSnackBar(s);
                        },),


                    ],),

                ], ),

              onTap: (){

              },

            ),);
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}
