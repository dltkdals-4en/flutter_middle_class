import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMethodChannel extends StatefulWidget {
  const MyMethodChannel({Key key}) : super(key: key);

  @override
  _MyMethodChannelState createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  
  static const platform = const MethodChannel('example.com/value');
  
  String _value = 'null';


  
  Future<void> _getNativeValue() async{
    String value;
    try {
      value = await platform.invokeMethod('getValue');
    }on PlatformException catch (e){
      value='error: ${e.message}';
    }
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Method Channel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_value'),
            ElevatedButton(onPressed: () {
              _getNativeValue();
            }, child: Text('get native'))
          ],
        ),
      ),
    );
  }
}
