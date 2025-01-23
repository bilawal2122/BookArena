import 'package:flutter/material.dart';

class HightlightCard extends StatelessWidget {
  String imageUrl;
  String secondaryText;
  String primaryText;
  HightlightCard({
    required this.primaryText,
    required this.imageUrl,
    required this.secondaryText,
  });

  @override
  Widget build(BuildContext context) {
    return //! highlight card start
        Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          //? first layer (pic)
          Container(
            width: 300,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //? second layer (overlay)
          Container(
            width: 300,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(100),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          //? third layer (text)
          Container(
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    secondaryText,
                    style: TextStyle(
                        color: Colors.white.withAlpha(200), fontSize: 15),
                  ),
                  Text(
                    primaryText,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Buy Now"),
                  ),
                ],
              )),
        ],
      ),
    );
    //! highlight card end;
  }
}
