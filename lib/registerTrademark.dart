import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './homePage.dart';
import './finalVariables.dart';

class registerTrademark extends HookConsumerWidget {
  @override

  Widget build(BuildContext context, WidgetRef ref) {
    final _inputControllerEmail = useTextEditingController(text: '');
    final _inputControllerApplicationNo = useTextEditingController(text: '');
    final _inputControllerName = useTextEditingController(text: '');
    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Register Your Trademark"),
          titleTextStyle: TextStyle(color: headerTextColor, fontSize: headerTextSize),
          leading: Image.asset(headerIcon),
          backgroundColor: headerColor,
          actions: [
            IconButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(
                    title: 'Register Yourself',
                    message: 'Register your trademark yourself',
                  );
                },
              );
            },
                icon: const Icon(Icons.help)
            ),
          ],
        ),
        body: Center(
            child: Column(
                children: <Widget>[
                  SizedBox(height: verticalSpace),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: verticalSpace),
                        SizedBox(
                          width: buttonWidth,
                          height: buttonHeight,
                          child: ElevatedButton(
                              child: Text('Home'),
                              style:ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                foregroundColor: buttonTextColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => homePage()));
                              }

                          ),
                        ),
                      ]),

                ]))));
  }
} // sendApplication
