import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  const MyFormValidation({Key key}) : super(key: key);

  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();
  FocusNode nameFocusNode;
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'no Empty';
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          ScaffoldMessenger.of(_formKey.currentContext)
                              .showSnackBar(SnackBar(content: Text('access')));
                        }
                      },
                      child: Text('ok')),
                ),
                TextField(
                  controller: nameController,
                  onChanged: (value) {
                    print(value);
                  },
                  focusNode: nameFocusNode,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'hintText',
                    border: InputBorder.none,
                    labelText: 'labelText',
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(nameFocusNode);
                    },
                    child: Text('focus')),
                ElevatedButton(
                    onPressed: () {
                      print(nameController.text);
                      showDialog(context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(nameController.text),
                          );
                        },);
                    },
                    child: Text('value check')),
              ],
            )),
      ),
    );
  }
}
