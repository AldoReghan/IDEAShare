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
    return Container(
        // color: Colors.red,
        height: ScreenUtil.defaultSize.height/1.17,
        child: ListView(
          padding: EdgeInsets.only(bottom: 4),
          children: [
            Container(
              height: 150,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                        color: Colors.indigo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.category),
                              Text("Mobile Apps with AI")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                        color: Colors.indigo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.category),
                              Text("Mobile Apps with AI")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                        color: Colors.indigo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.category),
                              Text("Mobile Apps with AI")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                        color: Colors.indigo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.category),
                              Text("Mobile Apps with AI")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                        ),
                        boxShadow: [BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1,3),
                        )],
                        color: Colors.indigo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.category),
                              Text("Mobile Apps with AI")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
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
      // bottomNavigationBar: Container(
      //   child: BottomNavigationBar(
      //       fixedColor: Colors.indigo,
      //       items: <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //         BottomNavigationBarItem(
      //             icon: Icon(Icons.account_circle), label: 'Profil'),
      //       ]),
      // ),
    );
  }
}
