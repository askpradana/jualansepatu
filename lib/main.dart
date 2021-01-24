import 'package:flutter/material.dart';
import 'package:jualansepatu/detailpage.dart';
import 'package:jualansepatu/produk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailPage(),
    );
  }
}
