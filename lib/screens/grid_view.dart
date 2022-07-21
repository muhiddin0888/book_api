import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid(
      {super.key,
      required this.imgUrl,
      required this.titel,
      required this.author,
      required this.publisher,
      required this.contributor,
      required this.onTap});
  final String imgUrl;
  final String titel;
  final String author;
  final String publisher;
  final String contributor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              imgUrl,
              height: 250,
            ),
            Text(
              titel,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              author,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              publisher,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Text(
              contributor,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
// }
// new Container(
//         child: new GridView.count(
//           crossAxisCount: 2,
//           childAspectRatio: (itemWidth / itemHeight),
//           controller: new ScrollController(keepScrollOffset: false),
//           shrinkWrap: true,
//           scrollDirection: Axis.vertical,
//           children: widgetList.map((String value) {