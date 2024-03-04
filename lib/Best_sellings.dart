import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/full_image.dart';

class BestScreen extends StatefulWidget {
  BestScreen({super.key});

  @override
  State<BestScreen> createState() => _BestScreenState();
}

class _BestScreenState extends State<BestScreen> {
  var product = [
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/10/25/18/38/man-1769690_640.jpg",
      "title": "Full t-shirts",
      "price": "\$120"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2019/03/15/10/21/fashion-4056729_640.jpg",
      "title": "Full t-shirts",
      "price": "\$100"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/04/12/10/39/portrait-1324072_640.jpg",
      "title": "Portrait Painting",
      "price": "\$100"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2022/05/22/12/08/baby-7213274_640.jpg",
      "title": "Abstract Artwork",
      "price": "\$75"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/08/10/00/43/girl-882336_640.jpg",
      "title": "Landscape Painting",
      "price": "\$120"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2017/01/13/04/56/t-shirt-1976334_640.png",
      "title": "Still Life Art",
      "price": "\$90"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/12/14/21/59/t-shirt-template-1093333_640.png",
      "title": "Modern Sculpture",
      "price": "\$200"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/03/03/17/34/jeans-1234687_640.jpg",
      "title": "Photography Print",
      "price": "\$50"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/04/12/10/40/portrait-1324074_640.jpg",
      "title": "Watercolor Art",
      "price": "\$80"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/10/22/05/02/photo-session-in-the-body-1759810_640.jpg",
      "title": "Digital Illustration",
      "price": "\$110"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/05/18/21/20/girl-in-a-vest-1401603_640.jpg",
      "title": "Surrealist Painting",
      "price": "\$150"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2017/05/23/10/53/t-shirt-design-2336850_640.jpg",
      "title": "Realistic Drawing",
      "price": "\$95"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2017/05/28/18/38/t-shirt-2351761_640.jpg",
      "title": "Impressionist Art",
      "price": "\$130"
    }
  ];

  // MyAlertDialog(context) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Expanded(
  //             child:);
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        title: Text(
          "My shop",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: product.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  title: Text(
                    "Are you Sure!!",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  content: Text(
                    "Do you want this product is Add to Cart",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FullImage(image: product[index]['img'] ?? "",title: product[index]["title"] ?? "", price: product[index]["price"] ?? "",),
                            ),
                          );
                        },
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "No",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                );
              },
            );
          },
          child: Card(
            elevation: 5.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Image.network(product[index]['img']!)),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(product[index]["title"]!),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text(product[index][ "price"]!),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(Icons.shopping_cart),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Product {
  String? image;
  String? title;
  String? price;

  Product({this.image, this.title, this.price});
}
