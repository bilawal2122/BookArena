import 'package:book_arena/views/components/category_circle.dart';
import 'package:book_arena/views/components/hightlight_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Color primaryColor = Color.fromARGB(255, 189, 180, 243);
  Color bgColor = Color.fromARGB(255, 221, 221, 252);
  String hightlight_image =
      "https://images.pexels.com/photos/23158191/pexels-photo-23158191/free-photo-of-a-coffee-on-a-table.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("BookArena"),
        backgroundColor: primaryColor,
        centerTitle: false,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.chat,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        // color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome to BookArena",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // Spacer(),
                Icon(Icons.double_arrow),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // highlight section
            Container(
              width: double.infinity,
              height: 180,
              // color: Colors.blue,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HightlightCard(
                    primaryText: "Experience Fantasy vibes",
                    secondaryText: "Experience",
                    imageUrl:
                        "https://images.unsplash.com/photo-1737395147941-d33851b5b9d9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  HightlightCard(
                    primaryText: "Do you know the Legend",
                    secondaryText: "News",
                    imageUrl:
                        "https://images.unsplash.com/photo-1737079567862-4ccc9433d443?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  HightlightCard(
                    primaryText: "Tasla Stock down ",
                    secondaryText: "News",
                    imageUrl:
                        "https://images.unsplash.com/photo-1736178643897-4f9cfc7b0fe5?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ],
              ),
            ),

            // category section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // Spacer(),
                Icon(Icons.double_arrow),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              width: double.infinity,
              height: 150,
              // color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCircle(
                    color: Colors.purpleAccent,
                    icon: "1-general.png",
                    name: "General",
                  ),
                  CategoryCircle(
                    color: Colors.orangeAccent,
                    icon: "2-islam.png",
                    name: "Relegion",
                  ),
                  CategoryCircle(
                    color: Color(0xFFffdac6),
                    icon: "3-poetry.png",
                    name: "Poetry",
                  ),
                  CategoryCircle(
                    color: Colors.limeAccent,
                    icon: "4-education.png",
                    name: "Education",
                  ),
                  CategoryCircle(
                    color: Colors.pinkAccent,
                    icon: "5-directory.png",
                    name: "Directory",
                    padding: 25,
                  ),
                  CategoryCircle(
                    color: Color(0xFFa2d6f9),
                    icon: "6-entertainment.png",
                    name: "Entertainment",
                  ),
                  CategoryCircle(
                    color: Colors.lightBlueAccent,
                    icon: "7-history.png",
                    name: "History",
                  ),
                  CategoryCircle(
                    color: Colors.indigoAccent,
                    icon: "8-social.png",
                    name: "Social",
                  ),
                  CategoryCircle(
                    color: Colors.brown,
                    icon: "9-finance.png",
                    name: "Finance",
                  ),

                  // CategoryCircle(),
                  // CategoryCircle(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        backgroundColor: bgColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
