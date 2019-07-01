import 'package:flutter/material.dart';
import 'utils.dart';

class RecyclerView extends StatefulWidget {
  String sourceImage = 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1'
      '.15752-0/p280x280/65319401_624994497988356_5607391692568133632_n.png?_nc_cat=104&_nc_oc=AQmkLwzI6_xHmVNq9_60q-xQqqY95iW0DFvR0N5wMQb4I82pQEjDkUYmImM6AdNg_Lcit9OfysXP__6VXN45RiQT&_nc_ht=scontent.fsgn2-1.fna&oh=6e0e8fd3fc4943d5fd72d86dddccbad6&oe=5DB742DE';

  var listType = [
    //region list type
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    //endregion
  ];

  @override
  _RecyclerViewState createState() => _RecyclerViewState();
}

class _RecyclerViewState extends State<RecyclerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: widget.listType.length,
          itemBuilder: (context, index){
            return body(widget.listType[index]);
          },
        ),
      ),
    );
  }

  //body

  Widget body(int type){
    switch(type){
      case 0:{
        return textItem();
      }
      case 1:{
        return imageItem();
      }
      case 2:{
        return iconItem();
      }
    }
  }

  //type
  // zero => text item,
  // one => image item,
  // two => icon item

  // Item
  //1. Text Item
  Widget textItem() {
    return GestureDetector(
      onTap: (){
        print("on click text item");
      },
      child: Container(
        padding: EdgeInsets.all(42),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: randomColor(), width: 3),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: Center(
          child: Text(
            "Da Lat Co Work",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

//2. Image network Item

  Widget imageItem() {
    return GestureDetector(
      onTap: (){
        print("on click image item");
      },
      child: Container(
        padding: EdgeInsets.all(32),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: randomColor(), width: 3),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: Image.network(widget.sourceImage),
      ),
    );
  }

//3. Icon Item

  Widget iconItem() {
    return GestureDetector(
      onTap: (){
        print("on click icon item");
      },
      child: Container(
        padding: EdgeInsets.all(32),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: randomColor(), width: 3),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: Icon(
          Icons.group_add,
          color: Colors.green,
          size: 58,
        ),
      ),
    );
  }
}
