import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {
  const MySwipeToDismiss({Key key}) : super(key: key);

  @override
  _MySwipeToDismissState createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  final items = List<String>.generate(20, (i) => "items ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe To Dismiss'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text('${items[index]}'),
            ),
            direction: DismissDirection.startToEnd,
            background: Container(color: Colors.red,),
          );
        },
      ),
    );
  }
}
