import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/data/datasrc/remote/own_account_remote.dart';
import 'package:fun_with_bloc/app/dialog/alert_service.dart';
import 'package:fun_with_bloc/app/domain/entity/own_account.dart';
import 'package:fun_with_bloc/app/navigation/route_names.dart';
import 'package:fun_with_bloc/commons/dialog/alert/no_internet_alert.dart';
import 'package:fun_with_bloc/commons/dialog/alert/willpopscope_alert.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/view_model/beneficiary_type.dart';

class LandingScreenContent extends StatefulWidget {
  const LandingScreenContent({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<LandingScreenContent> createState() => _LandingScreenContentState();
}

class _LandingScreenContentState extends State<LandingScreenContent> {
  int _counter = 0;

  BeneficiaryType? _beneType;

  void _incrementCounter() {
    OwnAccountRepo repo = OwnAccountRepo(OwnAccountRemoteSrc());
    final OwnAccountResponseEntity entity = repo();
    log("accountTitle 1: ${entity.ownAccounts[0].accountTitle}");
    log("accountTitle 2: ${entity.ownAccounts[1].accountTitle}");
    log("accountNo 1: ${entity.ownAccounts[0].accountNo}");
    log("accountNo 2: ${entity.ownAccounts[1].accountNo}");
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
                  // final type =
                  //     await bottomSheetService.showBottomSheet<BeneficiaryType>(
                  //         context, BeneficiaryPickerBottomSheet());
                  // setState(() {
                  //   _beneType = type;
                  // });
                  Navigator.pushNamed(
                    context,
                    RouteNames.kTextWidgetPixelOverflowRoute,
                  );
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
