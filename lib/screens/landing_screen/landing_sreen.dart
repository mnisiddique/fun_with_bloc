import 'dart:developer';

import 'package:flutter/material.dart';

import '../../app/dialog/app_dialog.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                showAlertDialog(context);
              },
              child: const Text("Ok"),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                shoConfirmAlertDialog(context);
              },
              child: const Text("Confirm"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = MaterialButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Simple Alert"),
      content: const Text("This is an alert message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void shoConfirmAlertDialog(BuildContext context) async {
    // Create button
    Widget okButton = MaterialButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget cancelButton = MaterialButton(
      child: const Text("CANCEL"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Simple Alert"),
      content: const Text("This is an alert message."),
      actions: [
        okButton,
        cancelButton,
      ],
    );

// Create AlertDialog
    AlertDialog alertConfirm = AlertDialog(
      title: const Text("Are You Sure?"),
      content: const Text("You want to delete?"),
      actions: [
        okButton,
        cancelButton,
      ],
    );
    // show the dialog
    log("Alert is Showing");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    ).then((value) => log("Alert is Dissmissed"));
  }
}
