import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color daintree = const Color(0xFF012731);
Color redSalsa = const Color(0xFFFD3A4A);

TextStyle appBarActionsStyle = new TextStyle(color: Colors.white, fontSize: 20);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Product Sans',
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: daintree,
            title: Padding(
              child: const Text("Блог Максима Фроленко"),
              padding: EdgeInsets.only(left: 120),
            ),
            toolbarHeight: 75,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text(
                          "Портфолио",
                          style: appBarActionsStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text("Статьи", style: appBarActionsStyle),
                      ),
                      Text(
                        "Связь",
                        style: appBarActionsStyle,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
