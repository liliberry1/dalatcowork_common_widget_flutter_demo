import 'package:flutter/material.dart';
import 'utils.dart';
import 'photo_gallery.dart';

class RecyclerView extends StatefulWidget {
  String source =
      "https://pmcvariety.files.wordpress.com/2018/03/blackberry-logo-black.jpg?w=640";
  String source1 =
      "https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/64956166_2787159648024957_4480231715335307264_n.png?_nc_cat=108&_nc_eui2=AeEOzK1G7w5UwcBdvi4MnVctJRYkZNUs7xsmU-74phtsphPS0DkwKtUgI0iGCAqqjM0sXxvJy6yNry7o2-2msXKdprSMc6RPUIq1E1HEJ_NtRw&_nc_oc=AQkxhPhO9FGLtCkmJgkhZVexEDTTLAnO9aCuvAed5W0XvPAidrzxcKpnLzOwKqo1kTH2RKqFcBLuhk57HcxeL-It&_nc_ht=scontent.fsgn2-3.fna&oh=82c007d085c3bff9923f654bab5a9f1a&oe=5D7FE5D0";
  List<int> typeNumber = [
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3),
    randomNumber(3)
  ];

  @override
  _RecyclerViewState createState() => _RecyclerViewState();
}

class _RecyclerViewState extends State<RecyclerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recycler View"),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PhotoGallery()));
            },
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: countLength(widget.typeNumber),
            itemBuilder: (context, index) {
              return body(widget.typeNumber[index]);
            }),
      ),
    );
  }

  Widget body(int type) {
    print("type: $type");
    switch (type) {
      case 0:
        {
          return TextBody();
          break;
        }
      case 1:
        {
          return ImageBody();
          break;
        }
      case 2:
        {
          return IconBody();
        }
    }
  }

  Widget TextBody() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 1),
          borderRadius: BorderRadius.circular(40)),
      margin: EdgeInsets.all(18),
      alignment: Alignment.topCenter,
      child: Text(
        "dalat co work",
        style: TextStyle(
          fontSize: 32,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget ImageBody() {
    var assetsImage = new AssetImage('lili_logo.png');
    var image = new Image(
      image: assetsImage,
    );
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.deepOrange, width: 1.0),
        ),
        margin: EdgeInsets.all(18),
        alignment: Alignment.topCenter,
        child: image);
  }

  Widget IconBody() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 1),
          borderRadius: BorderRadius.circular(40)),
      margin: EdgeInsets.all(18),
      alignment: Alignment.topCenter,
      child: Icon(
        Icons.people,
        size: 128,
        color: Colors.green,
      ),
    );
  }
}
