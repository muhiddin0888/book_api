import 'package:api_4/models/books/books.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key, required this.bookItem});
  final Books bookItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Boks"),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.amber),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                bookItem.book_image,
                width: 300,
                height: 550,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                        Text(
                          bookItem.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Author: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                        Text(
                          bookItem.author,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                        Text(
                          bookItem.price,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Description: ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    Text(
                      bookItem.description,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
