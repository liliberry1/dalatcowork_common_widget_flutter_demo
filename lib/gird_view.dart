import 'package:flutter/material.dart';
import 'utils.dart';

class PhotoGrid extends StatefulWidget {
  @override
  _PhotoGridState createState() => _PhotoGridState();
}

class _PhotoGridState extends State<PhotoGrid> {
  String sourceGirl = "https://scontent.fsgn2-4.fna.fbcdn.net/v/t1"
      ".15752-9/65502480_748037782277317_7297544744693923840_n.jpg?_nc_cat=111&_nc_oc=AQlMOjN35arQQxvC9qar9kKtyfxGYHPXw0NFxXh8GkXyEP-QS8JYKs5fPhDMPsZKF6oYJT6ixi966B9GAQKDF0TA&_nc_ht=scontent.fsgn2-4.fna&oh=46e35fbff60ef0f6a511cede26b4b937&oe=5DB5D803";
  String sourceLogo = "https://lh3.googleusercontent"
      ".com/a-/AAuE7mC45h2Wo7JcKP8wFG493vQboqclQopoE0kOhnEcNw=s192";
  String sourceDalatCowork = "https://scontent.fsgn2-1.fna.fbcdn.net/v/t1"
      ".15752-0/p280x280/65319401_624994497988356_5607391692568133632_n.png?_nc_cat=104&_nc_oc=AQmkLwzI6_xHmVNq9_60q-xQqqY95iW0DFvR0N5wMQb4I82pQEjDkUYmImM6AdNg_Lcit9OfysXP__6VXN45RiQT&_nc_ht=scontent.fsgn2-1.fna&oh=6e0e8fd3fc4943d5fd72d86dddccbad6&oe=5DB742DE";
  String sourceFlutter = "https://cdn.arstechnica"
      ".net/wp-content/uploads/2018/12/7.jpg";
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('lili_logo.png');
    var image = new Image(
      image: assetsImage,
    );

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
            crossAxisCount: 5,
            padding: EdgeInsets.all(10),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            //region ListURL
            children: <String>[
              sourceDalatCowork,
              sourceFlutter,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              sourceGirl,
              sourceGirl,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceGirl,
              sourceLogo,
              sourceLogo,
              //endregion
            ]
                .asMap()
                .map((index, url) => MapEntry(
                    index,
                    InkResponse(
                      onTap: () {
                        print('on tap index $index');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: randomColor(), width: 2)),
                        child: Image.network(url),
                      ),
                    )))
                .values
                .toList()),
      ),
    );
  }
}
