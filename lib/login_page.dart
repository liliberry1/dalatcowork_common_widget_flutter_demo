import 'package:common_widget_flutter/temp_view.dart';
import 'package:common_widget_flutter/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ),
                    ),
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
                                  borderSide: BorderSide(
                                      color: Colors.grey[100], width: 1)),
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
                                    bottomRight: Radius.circular(90),
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
                        margin: EdgeInsets.only(right: size.width*(1/7)),
                        width: size.width * 1/6,
                        height: size.width * 1/6,
                        decoration: BoxDecoration(shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color(0xff05D2CF),
                          Color(0xff26E8A6),

                        ])),
                        child: Icon(Icons.arrow_forward,color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                        onPressed: () {
                          print("Forgot");
                        },
                        child: Text(
                          "Forgot ?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
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
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(360))),
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 32),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(90),
                              bottomRight: Radius.circular(90),
                            ),
                          ),
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
