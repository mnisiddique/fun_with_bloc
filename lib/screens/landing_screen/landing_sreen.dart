import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/alert_service.dart';
import 'package:fun_with_bloc/app/res/label_index.dart';
import 'package:fun_with_bloc/commons/dialog/alert/boolean_decision_alert.dart';
import 'package:fun_with_bloc/commons/dialog/alert/no_internet_alert.dart';

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
    return WillPopScope(
      onWillPop: () async {
        final alert = BooleanDecisionAlert(
          alertMsg: AlertLabelRes.kLabelWantToGoBack,
          alertTitle: AlertLabelRes.kLabelAreYoySure,
        );
        alert.config = alert.config.copyWith(barrierDismissible: false);
        return await alertService.showAlert<bool>(context, alert) ?? false;
      },
      child: Scaffold(
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
                onPressed: () =>
                    alertService.showAlert(context, NoInterNetAlert()),
                child: const Text("No Internet"),
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
                onPressed: () {},
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
      ),
    );
  }
}
