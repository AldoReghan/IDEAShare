import 'package:flutter/material.dart';
import 'package:ideashare/pages/detail_idea.dart';
import 'package:ideashare/pages/favorit_idea.dart';
import 'package:ideashare/pages/home.dart';
import 'package:flutter/services.dart';
import 'package:ideashare/pages/lihat_idea.dart';

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
        '/detailIdea':(context)=>DetailIdeaPage(),
        '/favoritIdea':(context)=>FavoritIdeaPage(),
        '/lihatIdea':(context)=>LihatIdea()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
