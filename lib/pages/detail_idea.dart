import 'package:flutter/material.dart';

class DetailIdea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class DetailIdeaPage extends StatefulWidget {
  @override
  _DetailIdeaPageState createState() => _DetailIdeaPageState();
}

class _DetailIdeaPageState extends State<DetailIdeaPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  Widget setAppBar(GlobalKey<ScaffoldState> globalKey) {
    return Stack(
      children: [
        Container(
          color: Colors.indigo,
          height: 95,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: SingleChildScrollView(
        child: Column(children: [
          setAppBar(_key),
        ]),
      ),
    );
  }
}
