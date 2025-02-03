import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  const BookTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 243, 250).withAlpha(150),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 110,
            // margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(100),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black.withAlpha(150)),
                  maxLines: 2,
                  softWrap: true,
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("button is pressed");
                  },
                  child: Container(
                    width: 120,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [Icon(Icons.arrow_forward), Text("Read Book")],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
