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

  String detail = 'Detail idea';

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
                Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    child: Text(
                      detail,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }

  buttonBottom() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.indigo, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Discuss',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        key: _key,
        body: SingleChildScrollView(
          child: Column(children: [
            setAppBar(_key),
            Container(
              height: height/4,
              color: Colors.red,
            ),
            SizedBox(height: 5,)
          ]),
        ),
        bottomNavigationBar: buttonBottom());
  }
}
