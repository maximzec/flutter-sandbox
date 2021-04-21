import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color daintree = const Color(0xFF012731);
Color redSalsa = const Color(0xFFFD3A4A);
const Color postGore = Color(0xFF221451);
TextStyle appBarActionsStyle =
    new TextStyle(color: postGore, fontSize: 20, fontWeight: FontWeight.w900);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Product Sans', scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            child: const Text(
              "Блог Максима Фроленко",
              style: TextStyle(color: postGore, fontWeight: FontWeight.w900),
            ),
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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120),
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            child: Container(
                                width: 250,
                                child: Column(
                                  children: [
                                    Text(
                                      "Всем привет, это Максим!\nНа данный момент я активно практикующий Backend-разработчик",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: postGore),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                )),
                            padding: EdgeInsets.only(left: 60),
                          ),
                          Padding(
                            child: Image.asset(
                              "assets/developer.png",
                              width: 600,
                              height: 594,
                            ),
                            padding: EdgeInsets.only(left: 240),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
