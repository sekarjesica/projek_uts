import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List isi = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List title = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text("Inbox"),
            actions: [
              IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.search),
              )
            ],
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle, size: 50),
                  title: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            "2h",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Text('' + isi[index]),
                      ]),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('' + title[index]),
                      Icon(Icons.star_border),
                    ],
                  ),
                ),
              );
            },
            itemCount: nama.length,
          ),
        ));
  }
}
