import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => finl(),
    },
  ));
}

class finl extends StatefulWidget {
  const finl({Key? key}) : super(key: key);

  @override
  State<finl> createState() => _finlState();
}

class _finlState extends State<finl> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: Container(
        child:Column(
          children: [
            Text("Title: ${data['title']}",style: TextStyle(
              fontSize: 30,
            ),),
            Container(
              width: 200,
              height: 200,
              child: Image.network("${data['imageUrl']}"),
            ),
            Padding(padding: EdgeInsets.all(6),),
            Text("content: ${data['content']}",style: TextStyle(
              fontSize: 20,
            ),),

            Padding(padding: EdgeInsets.all(6),),
            Text("Author: ${data['author']}",style: TextStyle(
              fontSize: 20,
            ),),

            Padding(padding: EdgeInsets.all(6),),
            Text("Date: ${data['date']}",style: TextStyle(
              fontSize: 20,
            ),),

          ],
        )
      ),
    );
  }
}