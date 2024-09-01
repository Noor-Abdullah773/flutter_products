import 'package:flutter/material.dart';
import 'classes/info.dart';
import 'classes/products.dart';

class HomeScreen extends StatelessWidget{ 
  List <Info> allInfo =[Info(name:"noor", major: "it", phone: "888"),
  Info(name:"noor", major: "it", phone: "888"),
  Info(name:"noor", major: "it", phone: "888"),
  Info(name:"noor", major: "it", phone: "888"),
  ];
  List<Color> colors1=[Colors.red,Colors.yellow,Colors.black];
 List <Product> allProducts=[
  Product(title:"Iphone", subTitle: "this phine is the newer", newPrice: 1000, oldPrice: 1500, images: "images/1.jpg",color1:Colors.red ,color2:Colors.green,color3:Colors.black),
  Product(title:"Iphone", subTitle: "this phine is the newer", newPrice: 1000, oldPrice: 1500, images: "images/1.jpg",color1:Colors.purple,color2:Colors.white,color3:Colors.red),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this my first app"),
      ),
      body: ListView(children: 
        allProducts.map((e) => widegListTile(e)).toList()
      )
     
      /*body:Container(
         margin: EdgeInsets.all(10),
         child: Column(
          children:  allInfo.map((e) => concatic(context, e)).toList()),
         ),*/
        );    
    
  }

}

Widget concatic(BuildContext con,Info n){ 
  return Container(//////////////////// 1
             margin: EdgeInsets.symmetric(vertical: 5),
              color: Colors.amber[100],
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                   width: MediaQuery.of(con).size.width*(2/3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(n.name),
                        Text(n.major),
                        Text(n.phone),
                    ],
                  ),
                ),
                 Container(
                   width:( MediaQuery.of(con).size.width*(1/3))-20,
                   color: Colors.red,
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                       Icon(Icons.sms),
                    ],
                  ),
                )
              ]),
            );

}

Widget widegListTile(Product p){ 
  
  return Container(
    color: Colors.pink[200],
    margin: EdgeInsets.all(10 ),
    child: ListTile(
      leading: Container(child:
       Image.asset(p.images),
       height: 300,
       width: 100,),
      title:Text(p.title) ,
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(p.subTitle),
          ),
          SizedBox(height:5,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child:Column(children: [
                  Text("${p.oldPrice.toString()} \$"),
                  Text("${p.newPrice.toString()} \$"),
                ],)
                ),
                Container(
                  child:Column(children: [
                  Text("colors"),
                  Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: p.color1,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        color:p.color2,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        color:p.color3,
                      ),
  
                    ],),
                  ),
                ],)
                ),
              ],
            ),
          ),
        ],
      ),
  
    ),
  );

}