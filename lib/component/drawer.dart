import 'package:flutter/material.dart';

buildDrawer(BuildContext context) {
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
      GestureDetector(
        onTap: () => {
          Navigator.pushNamed(context,'/buatIdea')
        },
        child: ListTile(
          title: Text(
            "Buat Ide",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.lightbulb, color: Colors.indigo),
        ),
      ),
      
      GestureDetector(
        onTap: () => {
          Navigator.pushNamed(context,'/lihatIdea')
        },
        child: ListTile(
          title: Text(
            "Lihat Ide",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.list, color: Colors.indigo),
        ),
      ),
      GestureDetector(
        onTap: () => {
          Navigator.pushNamed(context,'/favoritIdea')
        },
        child: ListTile(
          title: Text(
            "Favorit",
            style: TextStyle(color: Colors.indigo),
          ),
          leading: Icon(Icons.favorite, color: Colors.indigo),
        ),
      ),
      ListTile(
        title: Text(
          "Profil",
          style: TextStyle(color: Colors.indigo),
        ),
        leading: Icon(Icons.account_circle, color: Colors.indigo),
      ),
      Padding(
        padding: const EdgeInsets.only(left:8.0, right: 8.0),
        child: Divider(color: Colors.indigo,),
      ),
      ListTile(
        title: Text(
          "Logout",
          style: TextStyle(color: Colors.indigo),
        ),
        leading: Icon(Icons.logout, color: Colors.indigo),
      ),
    ],
  ));
}
