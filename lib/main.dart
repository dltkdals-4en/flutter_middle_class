import 'package:flutter/material.dart';
import 'package:flutter_middle_class/pratice/my_drawer.dart';
import 'package:flutter_middle_class/pratice/my_form_validation.dart';
import 'package:flutter_middle_class/pratice/my_orientation.dart';
import 'package:flutter_middle_class/pratice/my_snack_bar.dart';
import 'package:flutter_middle_class/pratice/my_tap_controller.dart';
import 'package:flutter_middle_class/pratice/animated_opacity.dart';
import 'pratice/animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Middle Class'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('AnimatedContainer'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAniContainer(),
                  ));
            },
          ),
          ListTile(
            title: Text('AnimatedOpacity'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAnimatedOpacity(),
                  ));
            },
          ),
          ListTile(
            title: Text('MyDrawer'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyDrawer(),
                  ));
            },
          ),
          ListTile(
            title: Text('MyOrientaion'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrientation(),
                  ));
            },
          ),
          ListTile(
            title: Text('MySnackBar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySnackBar(),
                  ));
            },
          ),
          ListTile(
            title: Text('MyTabController'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTapController(),
                  ));
            },
          ),
          ListTile(
            title: Text('FormValidation'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyFormValidation(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
