import 'package:flutter/material.dart';
import 'package:jualansepatu/detailpage.dart';
import 'package:jualansepatu/widget_appbar.dart';

class KartuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: InkWell(
        onTap: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => ProductDetailPage()));
        },
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 35,
                      margin: EdgeInsets.all(5),
                      color: Colors.blue,
                      child: Text("30%"),
                    ),
                    Icon(Icons.favorite)
                  ],
                ),
              ),
              Image.asset("images/sepatucampur.png", height: 100),
              Text("Nike Airmax 20"),
              Text("\$240.00"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  Icon(Icons.star_half, color: Colors.yellow, size: 20),
                  Text("(4.5)")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int selectedValue = 1;
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;

  Widget _bikinBody() {
    return Column(
      children: [
        _menuAtas(),
        _chips(),
        _seharusnyaPakeGridViewTapiKarenaUdahmalemNgeriNggaNuntut()
      ],
    );
  }

  _seharusnyaPakeGridViewTapiKarenaUdahmalemNgeriNggaNuntut() {
    return Column(
        children: [
          Row(
            children: [
              KartuItem(),
              KartuItem()
            ],
          ),
          Row(
            children: [
              KartuItem(),
              KartuItem()
            ],
          ),
          Row(
            children: [
              KartuItem(),
              KartuItem()
            ],
          ),
        ],
      );
  }

  Row _chips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: ChoiceChip(
            label: Text("Sneakers"),
            selected: _selected1,
            onSelected: (bool selected) {
              setState(() {
                _selected1 = !_selected1;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: ChoiceChip(
            label: Text("Watch"),
            selected: _selected2,
            onSelected: (bool selected) {
              setState(() {
                _selected2 = !_selected2;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: ChoiceChip(
            label: Text("Backpack"),
            selected: _selected3,
            onSelected: (bool selected) {
              setState(() {
                _selected3 = !_selected3;
              });
            },
          ),
        ),
      ],
    );
  }

  _menuAtas() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Our Product",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          DropdownButton(
            value: selectedValue,
            items: [
              DropdownMenuItem(
                child: Text(
                  "Sort by",
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text(
                  "Date",
                ),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text(
                  "Price",
                ),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text(
                  "Custom?",
                ),
                value: 4,
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarMantapJiwa(
          ikonKiri: Icons.home,
          ikonKanan: Icons.search,
          warnaIkonKanan: Colors.black,
        ),
        body: _bikinBody(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _tombolKhusus(),
        bottomNavigationBar: _bottomAppBarKhusus());
  }

  _tombolKhusus() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add_shopping_cart),
          elevation: 2.0,
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 5),
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffc32c37),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _bottomAppBarKhusus() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      child: Container(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(Icons.notes),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
