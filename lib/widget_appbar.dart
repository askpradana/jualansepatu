import 'package:flutter/material.dart';

class AppBarMantapJiwa extends StatelessWidget implements PreferredSizeWidget {

  AppBarMantapJiwa({this.ikonKiri, this.ikonKanan, this.warnaIkonKanan, this.onPressed});
  final IconData ikonKiri, ikonKanan;
  final Color warnaIkonKanan;
  final Function onPressed;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(ikonKiri),
        color: Colors.black,
        onPressed: onPressed,
      ),
      title: Text(
        "XE",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(ikonKanan, color: warnaIkonKanan))
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
