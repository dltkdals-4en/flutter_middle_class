import 'package:flutter/material.dart';

class MyTapController extends StatefulWidget {
  const MyTapController({Key key}) : super(key: key);

  @override
  _MyTapControllerState createState() => _MyTapControllerState();
}

class _MyTapControllerState extends State<MyTapController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabController'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.access_alarm),
                text: 'Tab1',
              ),
              Text('Tab2'),
              Text('Tab3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.access_alarm),
            Center(child: Text('Tab2')),
            Center(child: Text('Tab3'))
          ],
        ),
      ),
      length: 3,
    );
  }
}
