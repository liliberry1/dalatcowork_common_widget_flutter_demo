import 'package:flutter/material.dart';

class PhotoGrid extends StatefulWidget {
  @override
  _PhotoGridState createState() => _PhotoGridState();
}

class _PhotoGridState extends State<PhotoGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photo gallery",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 4,
          children: List.generate(
            100,
            (index) {
              return Center(
                child: Text("item $index"),
              );
            },
          ),
        ),
      ),
    );
  }
}
