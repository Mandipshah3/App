// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'ReaderScreen.dart';

void main() => runApp(MaterialApp(
      title: "PROJECT IMPOSSIBLE",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

var chapterLists = [
  'SEMESTER 1',
  'SEMESTER 2',
  'SEMESTER 3',
  'SEMESTER 4',
  'SEMESTER 5',
  'SEMESTER 6',
  'SEMESTER 7',
  'SEMESTER 8',
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Impossible"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: chapterLists.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (chapterLists[index] == "SEMESTER 1") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(1)),
                    );
                  } else if (chapterLists[index] == "SEMESTER 2") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(2)),
                    );
                  }
                },
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.book,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        chapterLists[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
