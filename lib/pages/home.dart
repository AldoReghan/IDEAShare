import 'package:flutter/material.dart';
import 'package:ideashare/component/appBar.dart';
import 'package:ideashare/component/topBarKategori.dart';
import 'package:ideashare/component/drawer.dart';
import 'package:ideashare/component/cardItem.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDEAShare',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      key: _key,
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(children: [
          appBar(context, _key),
          barKategori(),
          Divider(
            color: Colors.black,
          ),
          gridViewItem(),
        ]),
      ),
    );
  }
}
