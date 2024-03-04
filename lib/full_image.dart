import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Order.dart';

class FullImage extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  FullImage({
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  State<FullImage> createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  int CountNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Details of product",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                child: Image(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      widget.price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepOrangeAccent),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "For men/women/child",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  RatingBar.builder(
                    unratedColor: Color.fromARGB(225, 223, 221, 221),
                    itemSize: 50,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    onRatingUpdate: (rating) {},
                    itemBuilder: (context, _) {
                      return Icon(Icons.star, color: Colors.orange);
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Text(
                  "Discover the hottest ecommerce product ideas that are worth investing in today. Whether you’re a seasoned entrepreneur or just starting out, these ideas will help you make a profitable online business.",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const OderScreen(),));},
                    child: Text(
                      "BUY NOW",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.redAccent,
                          )))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Add to Cart"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                  Text(
                    "Love this product",
                    style: TextStyle(color: Colors.black54),
                  ),
                  RatingBar.builder(
                    unratedColor: Color.fromARGB(225, 223, 221, 221),
                    itemSize: 40,
                    initialRating: 3.5,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 1,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    onRatingUpdate: (rating) {},
                    itemBuilder: (context, _) {
                      return Icon(Icons.favorite, color: Colors.red);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SingleChildScrollView(
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(widget.image),
                        Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.title,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "Color:",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      Text(
                                        " Multiple",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Size:",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      Text("Multiple",
                                          style: TextStyle(fontSize: 13)),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              CountNumber = CountNumber - 1;
                                            });
                                          },
                                          icon: Icon(Icons.remove)),
                                      Text(
                                        "$CountNumber",
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              CountNumber = CountNumber + 1;
                                            });
                                          },
                                          icon: const Icon(Icons.add)),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Text(widget.price)
                                    ],
                                  ),

                                ]))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
