import 'dart:convert';

import 'package:api_4/data/repostory.dart';
import 'package:api_4/models/top_level_data/top_layer.dart';
import 'package:api_4/screens/book_info.dart';
import 'package:api_4/screens/grid_view.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Books"),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder<BookModel>(
        future: Repostory.getBookModel(),
        builder: (BuildContext context, AsyncSnapshot<BookModel> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!; // TopLevel
            return GridView.builder(
              itemCount: data.results.books.length,
              itemBuilder: (context, index) => MyGrid(
                imgUrl: data.results.books[index].book_image,
                titel: data.results.books[index].title,
                author: data.results.books[index].author,
                publisher: data.results.books[index].publisher,
                contributor: data.results.books[index].contributor,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookInfo(
                              bookItem: snapshot.data!.results.books[index])));
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                childAspectRatio: 0.55,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error ocurred"));
          } else {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
