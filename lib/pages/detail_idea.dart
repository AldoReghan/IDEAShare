import 'package:flutter/material.dart';
import 'package:ideashare/component/basicAppBar.dart';

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

  buttonBottom() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.indigo, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Icon(Icons.chat, color: Colors.white),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
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
            basicAppBar(context,_key,'Detail Page'),
            Container(
              height: height / 4,
              color: Colors.red,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Data of Aldo Reghan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Skill : Advance'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description About Idea',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: buttonBottom());
  }
}
