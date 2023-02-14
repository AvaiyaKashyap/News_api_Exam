import 'package:flutter/material.dart';
import 'package:news_app/global.dart';
import 'package:news_app/main.dart';
class categ extends StatefulWidget {
  const categ({Key? key}) : super(key: key);

  @override
  State<categ> createState() => _categState();
}

class _categState extends State<categ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => random()));
              setState(() {
                global.endpoint = "all";
              });
            }, child: Text("all")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => random()));
              setState(() {
                global.endpoint = "sports";
              });
            }, child: Text("sports")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => random()));
              setState(() {
                global.endpoint = "business";
              });
            }, child: Text("business")),
            ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => random()));
              setState(() {
                global.endpoint = "world";
              });
            }, child: Text("world")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => random()));
              setState(() {
                global.endpoint = "miscellaneous";
              });
            }, child: Text("miscellaneous")),
          ],
        ),
      ),
    );
  }
}
