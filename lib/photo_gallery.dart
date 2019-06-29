import 'package:flutter/material.dart';
import 'utils.dart';

class PhotoGallery extends StatefulWidget {
  String soulili = 'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1'
      '.15752-0/p280x280/64738625_2787159644691624_1231772641690386432_n.png?_nc_cat=100&_nc_oc=AQlkGX1orfC3qnsZcOdMtNUgXjIL7XUdSUkcQa9Xu1CphC3XTMZ0Z0ZCLyVPnW6SsLA1Pl-j4rloEMRH6TgnzTsA&_nc_ht=scontent.fsgn2-2.fna&oh=e060c8e32d955e798a85fd0d454298a9&oe=5DB53A6B';
  String soudalat = 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1'
      '.15752-0/p280x280/65319401_624994497988356_5607391692568133632_n'
      '.png?_nc_cat=104&_nc_oc=AQmkLwzI6_xHmVNq9_60q-xQqqY95iW0DFvR0N5wMQb4I82pQEjDkUYmImM6AdNg_Lcit9OfysXP__6VXN45RiQT&_nc_ht=scontent.fsgn2-1.fna&oh=6e0e8fd3fc4943d5fd72d86dddccbad6&oe=5DB742DE';
  String souFlutter =
      'https://cdn.arstechnica.net/wp-content/uploads/2018/12/7.jpg';

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Grallery"),
        backgroundColor: Colors.orange,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(32),
        scrollDirection: Axis.horizontal,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 4,
        children: <String>[
          //region list url
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.souFlutter,
          widget.soulili,
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.soulili,
          widget.souFlutter,
          widget.soulili,
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.soulili,
          widget.souFlutter,
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.souFlutter,
          widget.soulili,
          widget.souFlutter,
          widget.soulili,
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.soulili,
          widget.souFlutter,
          widget.soulili,
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.soulili,
          widget.souFlutter,
          widget.soudalat,
          widget.souFlutter,
          widget.soulili,
          widget.souFlutter,
          widget.soulili,
          widget.soulili
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
                      border: Border.all(color: randomColor(), width: 4),
                    ),
                    child: Image.network(url),
                  ),
                )))
            .values
            .toList(),
      ),
    );
  }
}
