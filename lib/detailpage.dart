import 'package:flutter/material.dart';
import 'package:jualansepatu/widget_appbar.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> 

  _bikinbody(){
    return Column(
      children: [
        Center(
          child: Container(
            //TODO: Decoration shape
            margin: EdgeInsets.only(top: 20),
            color: Colors.cyanAccent,
            width: MediaQuery.of(context).size.width * 0.15,
            height: 30,
            child: Center(child: Text("30%")),
          ),
        ),
        Container(
          color: Colors.grey,
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
    );
  }
}