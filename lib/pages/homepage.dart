import 'package:flutter/material.dart';
import 'package:flutter_3/main.dart';
import 'package:flutter_3/pages/pagone.dart';
class HomePage extends StatefulWidget{
@override
_HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String mainProfilePicture = 'https://picsum.photos/id/1025/4951/3301';
  String otherProfilePicture = 'https://picsum.photos/id/1027/2848/4272';

  void swithcUser(){
    String backupString = mainProfilePicture;
    this.setState(() {
      mainProfilePicture = otherProfilePicture;
      otherProfilePicture = backupString;

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: new AppBar(title: new Text("Nagarro Timisoara"),backgroundColor: Colors.redAccent,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Tudor Tanasciuc"),
              accountEmail: new Text("tudor.tanasciuc@nagarro.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () => print("Current User Profile"),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(mainProfilePicture),
                ),
              ) ,
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => swithcUser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherProfilePicture),
                  ),
                ) ,

              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage('https://picsum.photos/id/1018/3914/2935')
                )
              ),
            ),
            new ListTile(
              title: new Text("Pagina 1"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new FirstPage("First Page"))),
            ),
            new ListTile(
              title: new Text("Pagina 2"),
              trailing: new Icon(Icons.arrow_right),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Inchide"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop() ,
            ),

          ],
        ),

      ),
      body: new Center(
        child:new Text("Welcome Home",style: new TextStyle(fontSize: 35.0),),
      ),


    );
  }
}