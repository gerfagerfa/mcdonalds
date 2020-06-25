import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;

  PopularItem({@required this.title, @required this.imageUrl, @required this.price});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 90,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    child: Image.asset(
                      imageUrl,
                      height: 36,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Text(
              "$price",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w900,
                color: Color(0xFFFFCB3F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
