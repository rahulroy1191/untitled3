
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:untitled3/Best_sellings.dart';

import 'Jacket.dart';



class allproduct extends StatelessWidget {
   allproduct({super.key});
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Shop",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Buy"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contact us")
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children:const  [DrawerHeader(child: Text(""))],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration:  const BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/e.jpg"))),
              ),SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(




                  children: [




                  ElevatedButton (onPressed: (){}, child: Text ("All"),style:ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),
                  ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => BestScreen(),));},
                    //best-sellings.dart
                    child:Text("T-Shirts"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),














                    ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Jacket(),));},
                      child:Text("Jacket"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),





                    ElevatedButton(onPressed: (){}, child:Text("Catagories"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),
                  ElevatedButton(onPressed: (){}, child:Text("Wathch"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),
                    ElevatedButton(onPressed: (){}, child:Text("Pants"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),
                    ElevatedButton(onPressed: (){}, child:Text("Foods"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),
                    ElevatedButton(onPressed: (){}, child:Text("Laptop"),style:ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),SizedBox(width: 25,),

                ],),
              ),SizedBox(height: 10,),
              Row(children: [Text("Recommend for you")],),
              SizedBox(height: 20,),
              Column(children: [
                Row(children: [
                  Expanded(child: Card(elevation: 3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2016/11/29/01/34/man-1866572_1280.jpg"),))),

                  Expanded(child: Card(elevation:3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2023/05/25/13/08/woman-8017341_640.jpg"),))),
                ],),






                Row(children: [Expanded(child: Text(" Black Jacket",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)),

                  Expanded(child: Text(" white Jacket",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)))],),



                SizedBox(height: 20,),




                Row(children: [
                  Expanded(child: Card(elevation: 3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2017/12/15/18/50/isolated-3021541_640.png"),))),

                  Expanded(child: Card(elevation:3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2014/03/13/20/05/boy-286811_640.jpg"),))),]),


                Row(children: [Expanded(child: Text(" Formal Suit",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)),
                  Expanded(child: Text(" Formal Suit",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)))],),



                Row(children: [
                  Expanded(child: Card(elevation: 3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2018/02/24/20/39/clock-3179167_640.jpg"),))),

                  Expanded(child: Card(elevation:3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2015/06/25/17/21/smart-watch-821557_640.jpg"),))),
                ],),


                Row(children: [Expanded(child: Text(" Formal Suit",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)),
                  Expanded(child: Text(" Formal Suit",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)))],),




                Row(children: [
                  Expanded(child: Card(elevation: 3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_640.jpg"),))),

                  Expanded(child: Card(elevation:3,child: InkWell(onTap: (){},child: Image.network("https://cdn.pixabay.com/photo/2015/04/08/13/14/pizza-712667_640.jpg"),))),
                ],),
                Row(children: [Expanded(child: Text(" Formal Suit",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)),
                  Expanded(child: Text(" Formal Suit",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)))],),












              ],)
            


            ],
          ),
        ),
      ),
    );
  }
}
