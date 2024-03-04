import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'full_image.dart';

class Jacket extends StatelessWidget {
   Jacket({super.key});

   var Jacketlist =[
     {
       "img": "https://cdn.pixabay.com/photo/2016/03/27/19/57/woman-1284029_640.jpg",
       "title": "Elegant Black Dress",
       "price": "\$49.99"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2020/10/17/17/41/girl-5662873_640.jpg",
       "title": "Casual Summer Top",
       "price": "\$29.95"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2015/06/01/00/20/man-792821_640.jpg",
       "title": "Stylish Sunglasses",
       "price": "\$19.99"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2016/11/19/15/42/woman-1839955_640.jpg",
       "title": "Classic Leather Wallet",
       "price": "\$39.99"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2019/07/30/11/16/coffee-4372724_640.jpg",
       "title": "Business Suit",
       "price": "\$149.95"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2017/08/06/20/46/people-2596166_640.jpg",
       "title": "Sporty Watch",
       "price": "\$79.99"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2017/08/06/15/14/people-2593377_640.jpg",
       "title": "Formal Necktie",
       "price": "\$24.95"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2017/08/01/12/31/people-2564989_640.jpg",
       "title": "Modern Desk Lamp",
       "price": "\$34.99"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2017/08/01/23/09/people-2568524_640.jpg",
       "title": "Laptop Backpack",
       "price": "\$49.95"
     },
     {
       "img": "https://cdn.pixabay.com/photo/2017/08/06/06/42/people-2589566_640.jpg",
       "title": "Cozy Winter Scarf",
       "price": "\$19.99"
     }
   ]
   ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Jackets",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: Jacketlist.length,

        itemBuilder:(context, index) => InkWell(onTap: (){showDialog(context: context, builder: (context) =>
          AlertDialog(backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),title:
            Text("Are you Sure!!",style: TextStyle(color: Colors.deepOrange),)
            ,content: const Text("Do you want this product is Add to Cart", style: TextStyle(fontWeight: FontWeight.bold),),actions: [
              TextButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FullImage(image: Jacketlist[index]['img'] ?? "",title: Jacketlist[index]["title"] ?? "", price: Jacketlist[index]["price"] ?? "",),
                ),
              );}, child: const Text("YES")),
              TextButton(onPressed: (){ Navigator.of(context).pop();}, child: const Text("No"))
            ],


          ),);},









    child: Card(
    elevation: 5.0,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Expanded(child: Image.network(Jacketlist[index]['img']!)),
    Padding(
    padding: const EdgeInsets.all(3.0),
    child: Text(Jacketlist[index]["title"]!),
    ),
    Padding(
    padding: EdgeInsets.all(3.0),
    child: Text(Jacketlist[index][ "price"]!),
    ),
    Padding(
    padding: EdgeInsets.all(3.0),
    child: Icon(Icons.shopping_cart),
    )
    ],
    ),),),)
    );
  }
}
class Product {
  String? image;
  String? title;
  String? price;

  Product({this.image, this.title, this.price});
}
