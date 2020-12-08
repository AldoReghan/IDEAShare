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
  GlobalKey<ScaffoldState> _key = GlobalKey();

  buildDrawer() {
    return Drawer();
  }

  Widget setAppBar(GlobalKey<ScaffoldState> globalKey) {
    return Stack(
      children: [
        Container(
          color: Colors.indigo,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 15, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        globalKey.currentState.openDrawer();
                      },
                      child: Icon(
                        Icons.list,
                        size: 35,
                        color: Colors.white,
                      ),
                    )),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.2,
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  buildListKategori() {
    return Container(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: buildDrawer(),
      body: Column(
        children: [
          setAppBar(_key),
          buildListKategori(),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
