import 'package:flutter/material.dart';

class CategoryCircle extends StatelessWidget {
  // variable values
  Color color;
  String icon;
  String name;
  double? padding;
  // constructor to recieve that variable values
  CategoryCircle({
    required this.color,
    required this.name,
    required this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(padding == null ? 15 : padding!),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 80, 255, 89),
                  color,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              child: Image(
                image: AssetImage(
                  "assets/icons/category_icons/" + icon,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(name),
        ],
      ),
    );
    // category card ends
  }
}
