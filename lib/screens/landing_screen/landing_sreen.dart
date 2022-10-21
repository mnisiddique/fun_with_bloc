import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/alert_service.dart';
import 'package:fun_with_bloc/app/dialog/bottomsheet_service.dart';
import 'package:fun_with_bloc/app/res/label_index.dart';
import 'package:fun_with_bloc/commons/dialog/alert/boolean_decision_alert.dart';
import 'package:fun_with_bloc/commons/dialog/alert/no_internet_alert.dart';
import 'package:fun_with_bloc/commons/dialog/alert/willpopscope_alert.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/beneficiary_picker.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/view_model/beneficiary_type.dart';

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

  BeneficiaryType? _beneType;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          await alertService.showAlert<bool>(context, WillPopScopeAlert()) ??
          false,
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
              _beneType == null
                  ? const SizedBox()
                  : Text(_beneType!.type,
                      style: Theme.of(context).textTheme.headline5),
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
                onPressed: () async {
                  final type =
                      await bottomSheetService.showBottomSheet<BeneficiaryType>(
                          context, BeneficiaryPickerBottomSheet());
                  setState(() {
                    _beneType = type;
                  });
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
      ),
    );
  }
}
