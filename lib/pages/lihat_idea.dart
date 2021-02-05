import 'package:flutter/material.dart';
import 'package:ideashare/component/basicAppBar.dart';
import 'package:ideashare/component/cardItem.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lihat idea',
      home: LihatIdea(),
    );
  }
}

class LihatIdea extends StatefulWidget {
  @override
  _LihatIdeaState createState() => _LihatIdeaState();
}

class _LihatIdeaState extends State<LihatIdea> {

  GlobalKey<ScaffoldState> _key = GlobalKey();

  gridViewItem() {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height - kToolbarHeight * 2.9,
      child: ListView(
        padding: EdgeInsets.only(bottom: 4),
        children: [
          cardItem(
              context,
              1,
              'Mobile POST apps with AI and voice recoginition',
              'Teknologi',
              'c')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        basicAppBar(context,_key,'Lihat Idea'),
        gridViewItem()
      ],),
    );
  }
}