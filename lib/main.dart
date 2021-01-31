import 'package:flutter/material.dart';
import 'package:ideashare/pages/detail_idea.dart';
import 'package:ideashare/pages/home.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDEAShare',
      home: Home(),
      initialRoute: '/',
      routes: {
        '/detailIdea':(context)=>DetailIdeaPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
