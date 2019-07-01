import 'package:flutter/material.dart';
import 'login_page.dart';
import 'recycler_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: RecyclerView(),
    );
  }
}

