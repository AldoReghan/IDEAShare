import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.indigo,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Idea...',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(2),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  color: Colors.indigo,
                  child: Container(
                      width: 100,
                      child: Center(
                          child: Text(
                        "Teknologi",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                Card(
                  color: Colors.indigo,
                  child: Container(
                      width: 100,
                      child: Center(
                          child: Text(
                        "Masakan",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                Card(
                  color: Colors.indigo,
                  child: Container(
                      width: 100,
                      child: Center(
                          child: Text(
                        "Kesehatan",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                Card(
                  color: Colors.indigo,
                  child: Container(
                      width: 100,
                      child: Center(
                          child: Text(
                        "Pertambangan",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ))),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
