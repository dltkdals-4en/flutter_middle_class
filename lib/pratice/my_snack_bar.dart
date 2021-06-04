import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({Key key}) : super(key: key);

  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('it is SnackBar'),
                action: SnackBarAction(
                  label: '취소',
                  onPressed: () {
                    print('Action in Snackbar has been pressed.');
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('show SnackBar'),
          ),
        ),
      ),
    );
  }
}
