import 'package:flutter/material.dart';
import 'package:jualansepatu/widget_appbar.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int indexSelected = -1;
  bool pilihWarna = false;

  //Buat Radio --
  int pilihanRadio;
  @override
  void initState() { 
    super.initState();
    pilihanRadio = 0;
  }
  //Fungsi radio kalau dipencet
  radioTerpilih(int mana){
    setState(() {
      pilihanRadio = mana;
    });
  }
  //--

  _bikinbody() {
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
        _gambarSepatu(),
        _containerBawah()
      ],
    );
  }

  _containerBawah() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nike Air Max 200",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("(4.5)")
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
              child: Text("Built for natural motion, the nike® Flex Shoes"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Size: "),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ChoiceChip(
                    label: Text("US 6"),
                    selected: indexSelected == 0,
                    onSelected: (value) {
                      setState(() {
                        indexSelected = value ? 0 : -1;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ChoiceChip(
                    label: Text("US 7"),
                    selected: indexSelected == 1,
                    onSelected: (value) {
                      setState(() {
                        indexSelected = value ? 1 : -1;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ChoiceChip(
                    label: Text("US 8"),
                    selected: indexSelected == 2,
                    onSelected: (value) {
                      setState(() {
                        indexSelected = value ? 2 : -1;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ChoiceChip(
                    label: Text("US 9"),
                    selected: indexSelected == 3,
                    onSelected: (value) {
                      setState(() {
                        indexSelected = value ? 3 : -1;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("Available Color: "),
                Radio(
                  value: 1, 
                  groupValue: pilihanRadio, 
                  onChanged: (mana){
                    radioTerpilih(mana);
                  },
                  activeColor: Colors.yellow,
                ),
                Radio(
                  value: 2, 
                  groupValue: pilihanRadio, 
                  onChanged: (mana){
                    radioTerpilih(mana);
                  },
                  activeColor: Colors.red,
                ),
                Radio(
                  value: 3, 
                  groupValue: pilihanRadio, 
                  onChanged: (mana){
                    radioTerpilih(mana);
                  },
                  activeColor: Colors.orange
                ),
                Radio(
                  value: 4, 
                  groupValue: pilihanRadio, 
                  onChanged: (mana){
                    radioTerpilih(mana);
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      );
  }

_gambarSepatu() {
    return SizedBox(
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
    );
  }

  //-----------
  //MAIN DISINI
  //-----------
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
                Container(margin: EdgeInsets.only(top: 4), child: Text("\$")),
                Text(
                  "269.00",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.all(10),
              child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.indigo),
                      Text(
                        "Add To Cart",
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ],
                  ),
                  color: Colors.grey[350],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
