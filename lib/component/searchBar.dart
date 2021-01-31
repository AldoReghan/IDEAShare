import 'package:flutter/material.dart';

Widget searchBar(BuildContext context, String hint) {
  return Container(
    height: 40,
    width: MediaQuery.of(context).size.width / 1.3,
    margin: EdgeInsets.only(bottom: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: TextFormField(
      style: TextStyle(fontSize: 16, color: Colors.black),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.indigo,
        ),
      ),
    ),
  );
}
