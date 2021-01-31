import 'package:flutter/material.dart';

Widget buttonCard(BuildContext context,String text,String route) {
  return GestureDetector(
    onTap: () =>{
      Navigator.pushNamed(context,route)
    },
    child: Container(
      height: 40,
      width: MediaQuery.of(context).size.width / 1.5,
      child: Card(
        color: Colors.indigo,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
