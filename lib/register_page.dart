import 'package:common_widget_flutter/temp_view.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                          Colors.deepOrange,
                          Colors.deepOrange[400],
                          Colors.deepOrange[300],
                          Colors.deepOrange[200],
                          Colors.deepOrange[100],
                          Colors.orange,
                          Colors.orange[400],
                          Colors.orange[300],
                        ])),
                  ),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(360))),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Resigter",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 32),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(90),
                            bottomLeft: Radius.circular(90),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: size.width * (1 / 5)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Username",
                            prefixIcon: Icon(Icons.perm_identity),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey[100], width: 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: size.width * (1 / 5)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Password",
                            prefixIcon: Icon(Icons.vpn_key),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey[100], width: 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: size.width * (1 / 5)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Email",
                            prefixIcon: Icon(Icons.mail_outline),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(360),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.grey[100], width: 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print("This is arrow forward");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RecyclerView()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: size.width*(1/8)),
                      width: size.width * 1/6,
                      height: size.width * 1/6,
                      decoration: BoxDecoration(shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [
                            Color(0xff05D2CF),
                            Color(0xff26E8A6),

                          ])),
                      child: Icon(Icons.check,color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              children: <Widget>[
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Colors.deepPurple[400],
                            Colors.deepPurple[300],
                            Colors.deepPurple[200],
                            Colors.blue,
                            Colors.blue[400],
                            Colors.blue[300],
                          ])),
                ),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(360))),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
