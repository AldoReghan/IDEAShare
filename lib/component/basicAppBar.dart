import 'package:flutter/material.dart';

Widget basicAppBar(BuildContext context, GlobalKey<ScaffoldState> globalKey, String detail) {
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
                    )),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }