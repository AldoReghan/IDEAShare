import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: 215,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: NetworkImage(
                      "https://lh3.googleusercontent.com/ogw/ADGmqu_lFB61JWUrBHjn-piv1VDROO3cbQsBYuv_PVZ_IQ=s83-c-mo")),
              SizedBox(
                height: 5,
              ),
              Text(
                "Aldo Reghan Ramadhan",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                "aldoreghan@gmail.com",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        ListTile(
          title: Text(
            "Buat Ide",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.lightbulb, color: Colors.indigo),
        ),
        ListTile(
          title: Text(
            "Lihat Ide",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.list, color: Colors.indigo),
        ),
        ListTile(
          title: Text(
            "Favorit",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.favorite, color: Colors.indigo),
        ),
        ListTile(
          title: Text(
            "Terealisasi",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.send, color: Colors.indigo),
        ),
        ListTile(
          title: Text(
            "Profil",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.account_circle, color: Colors.indigo),
        ),
      ],
    ));
  }

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
                  width: MediaQuery.of(context).size.width / 1.3,
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

  gridViewItem(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
        // color: Colors.red,
        height: height - kToolbarHeight*2.9,
        child: ListView(
          padding: EdgeInsets.only(bottom: 4),
          children: [
            Container(
              height: 150,
              child: Card(
                elevation: 4,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                      ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MergeSemantics(
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mobile POST apps with AI and voice recoginition',
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Teknologi',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Card(
                                color: Colors.indigo,
                                child: Center(child: Text("Discuss", style: 
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                elevation: 4,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                      ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MergeSemantics(
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mobile POST apps with AI and voice recoginition',
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Teknologi',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Card(
                                color: Colors.indigo,
                                child: Center(child: Text("Discuss", style: 
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                elevation: 4,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                      ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MergeSemantics(
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mobile POST apps with AI and voice recoginition',
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Teknologi',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Card(
                                color: Colors.indigo,
                                child: Center(child: Text("Discuss", style: 
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                elevation: 4,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                      ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MergeSemantics(
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mobile POST apps with AI and voice recoginition',
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Teknologi',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Card(
                                color: Colors.indigo,
                                child: Center(child: Text("Discuss", style: 
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                elevation: 4,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                      ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MergeSemantics(
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mobile POST apps with AI and voice recoginition',
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Teknologi',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Card(
                                color: Colors.indigo,
                                child: Center(child: Text("Discuss", style: 
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: buildDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          setAppBar(_key),
          buildListKategori(),
          Divider(
            color: Colors.black,
          ),
          gridViewItem(context),
        ]),
      ),
    );
  }
}
