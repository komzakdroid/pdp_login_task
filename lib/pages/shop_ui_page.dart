import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ShopUIPage extends StatefulWidget {
  static const String id = "shop_ui_page";

  @override
  _ShopUIPageState createState() => _ShopUIPageState();
}

final List<String> _listItem = [
  "assets/images/ic_pic1.jpg",
  "assets/images/ic_pic2.jpg",
  "assets/images/ic_pic3.jpeg",
  "assets/images/ic_pic4.jpeg",
  "assets/images/ic_pic5.jpg",
  "assets/images/ic_pic6.jpeg",
  "assets/images/ic_pic3.jpeg",
  "assets/images/ic_pic4.jpeg",
  "assets/images/ic_pic1.jpg",
  "assets/images/ic_pic3.jpeg",
  "assets/images/ic_pic4.jpeg",
  "assets/images/ic_pic5.jpg",
  "assets/images/ic_pic6.jpeg",
  "assets/images/ic_pic3.jpeg",
];

class _ShopUIPageState extends State<ShopUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu_rounded),
        title: Text("Dream Shopping"),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("7"),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // #header
            Container(
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_pic6.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.03),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.grey[900]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // #body
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 6,
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
        child: Container(
          alignment: Alignment.topRight,
          child: LikeButton(
            mainAxisAlignment: MainAxisAlignment.end,
            padding: EdgeInsets.only(right: 10),
            size: 40,
            circleColor:
                CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
            bubblesColor: BubblesColor(
              dotPrimaryColor: Color(0xff33b5e5),
              dotSecondaryColor: Color(0xff0099cc),
            ),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.favorite,
                color: isLiked ? Colors.red : Colors.white,
                size: 40,
              );
            },
            likeCount: 999,
            countBuilder: (int? count, bool isLiked, String text) {
              var color = isLiked ? Colors.red : Colors.white;
              Widget result;
              if (count == 0) {
                result = Text(
                  "love",
                  style: TextStyle(color: color),
                );
              } else {
                result = Text(
                  text,
                  style: TextStyle(color: color),
                );
                return result;
              }
            },
          ),
        ),
      ),
    );
  }
}
