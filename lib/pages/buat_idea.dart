import 'package:flutter/material.dart';
import 'package:ideashare/component/basicAppBar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buat Idea',
      home: BuatIdeaPage(),
    );
  }
}

class BuatIdeaPage extends StatefulWidget {
  @override
  _BuatIdeaPageState createState() => _BuatIdeaPageState();
}

class _BuatIdeaPageState extends State<BuatIdeaPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: SingleChildScrollView(
        child: Column(
          children: [
            basicAppBar(context, _key, 'Buat Idea'),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Your idea'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
