import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    )
                  ]),
                  child: Row(
                    children: [
                      Padding(
                        child: Text(
                          'Блог Максима Фроленко',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24,
                          ),
                        ),
                        padding: EdgeInsets.only(left: 12),
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
