import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

 final String pageText;

 FirstPage(this.pageText);

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text(pageText),),
      body: new Center(
        child: new Text(pageText),
      ),
    );
  }

}