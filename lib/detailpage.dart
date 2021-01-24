import 'package:flutter/material.dart';
import 'package:jualansepatu/widget_appbar.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  _bikinbody(){
  final panjangHorizontal = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.cyanAccent,
            height: 30,
            width: panjangHorizontal * 0.15,
            child: Center(child: Text("30%")),
          ),
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Carousel(
            autoplay: false,
            dotSize: 5,
            dotBgColor: Colors.transparent,
            dotColor: Colors.black,
            dotIncreasedColor: Colors.red,
            images: [
              Image.asset('images/sepatucampur.png'),
              Image.asset('images/sepatulagi.png'),
              Image.asset('images/sepatumerah.png')
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMantapJiwa(
        ikonKiri: Icons.arrow_back,
        ikonKanan: Icons.favorite,
        warnaIkonKanan: Colors.red,
      ),
      body: _bikinbody(),
      bottomNavigationBar: _bikinBottomAppBar(),
    );
  }

  _bikinBottomAppBar() {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text("\$")),
                Text("269.00",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.all(10),
              child: FlatButton(
                onPressed: (){}, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.indigo),
                    Text("Add To Cart",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ],
                ),
                color: Colors.grey[350],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}