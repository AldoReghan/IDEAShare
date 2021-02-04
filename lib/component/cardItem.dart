import 'package:flutter/material.dart';
import 'package:ideashare/component/buttonCard.dart';

cardItem(BuildContext context, int iditem, String judul, String kategori,
    String image) {
  double height = MediaQuery.of(context).size.height;
  return Container(
    height: height - kToolbarHeight * 2.9,
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
                          bottomLeft: Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1, 3),
                        )
                      ],
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
                                    judul,
                                    overflow: TextOverflow.clip,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).primaryColor),
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
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 8),
                              child: Text(
                                kategori,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        buttonCard(context, 'Discuss', '/detailIdea')
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
