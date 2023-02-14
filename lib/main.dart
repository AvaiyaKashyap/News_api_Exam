import 'dart:js';

import 'package:flutter/material.dart';
import 'package:news_app/des.dart';

import 'api_helper.dart';
import 'category.dart';
import 'modal.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => categ(),
      '1':(context) => finl(),
    },
  ));
}

class random extends StatefulWidget {
  const random({Key? key}) : super(key: key);

  @override
  State<random> createState() => _randomState();
}

class _randomState extends State<random> {
  dynamic? api;

  Future refresh() async {
    setState(() {
      API.api.fetchCurrency();
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {
          setState(() {
          });
        }, icon: Icon(Icons.refresh))],
      ),
      body: FutureBuilder(
          future: API.api.fetchCurrency(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else if (snapshot.hasData) {
              News? data = snapshot.data;

              return (data != null)
                  ? Center(
                child: ListView(
                  children: data.title
                      .map((e) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('1', arguments: e);
                        },
                        child: Card(
                          child: ListTile(
                            title: Text("${e['title']}"),
                          ),
                        ),
                      ),
                    ],
                  ))
                      .toList(),
                )
              )
                  : Center(
                child: Text("No Data"),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
    );
  }
}