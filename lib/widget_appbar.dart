import 'package:flutter/material.dart';

class AppBarMantapJiwa extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.close, color: Colors.black),
      title: Text(
        "XE",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search, color: Colors.black))
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
