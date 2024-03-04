import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class OderScreen extends StatelessWidget {
  const OderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oder here"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: AnotherCarousel(images: const [
                  NetworkImage(
                      "https://media.istockphoto.com/id/1287493691/photo/young-woman-unpack-the-package-she-ordered-online.jpg?s=612x612&w=0&k=20&c=VuSaIYa1tSwZwpA9Ge7jewx0s90Jqd-ZVEPu_EI7uvY="),
                  NetworkImage("https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_640.jpg"),
                  NetworkImage(
                      "https://media.istockphoto.com/id/1206800961/photo/online-shopping-and-payment-man-using-tablet-with-shopping-cart-icon-digital-marketing.jpg?s=612x612&w=0&k=20&c=qG_9JB9ll4P5to97_HVxzMqhhzF0Gi1nWM_hNeiotbk="),
                  NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665_640.jpg")
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.location_history),
                    hintText: "Enter your Address",
                    label: Text("Address"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent,style: BorderStyle.solid),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent,style: BorderStyle.solid,width: 2),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent,style: BorderStyle.solid,width: 1),),


                ),
              ), const SizedBox(height: 20,),

              const TextField(maxLength: 11,keyboardType: TextInputType.number,
                decoration: InputDecoration(prefixIcon: Icon(Icons.phone),
                  hintText: "Enter your Number",
                  label: Text("Number"),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent,style: BorderStyle.solid),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent,style: BorderStyle.solid,width: 2),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent,style: BorderStyle.solid,width: 1),),


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
