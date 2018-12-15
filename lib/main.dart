import 'package:flutter/material.dart';
import 'message.dart';
import 'link.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'TNTM Poject';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      routes: routes(),
    );
  }
}
  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
     "/message":(BuildContext context) => PushMessagingExample(),
     "/link":(BuildContext context) => MyLinkApp(),
    };
  }
class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('message'),
              onTap: () {
                Navigator.pushNamed(context, "/message");
               // Navigator.pop(context);

              },
            ),
            ListTile(
              title: Text('Link'),
              onTap: () {
                Navigator.pushNamed(context, "/link");
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}