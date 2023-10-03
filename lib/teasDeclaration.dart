import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/searchTrademark.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './finalVariables.dart';

class teasDeclaration extends HookConsumerWidget {
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
                    message: 'You can register your trademark yourself',
                  );
                },
              );
            },
                icon: const Icon(Icons.help)
            ),
          ],
        ),
        body: SingleChildScrollView(
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
                        SizedBox(width: horizontalSpace),
                        SizedBox(
                          width: buttonWidth,
                          height: buttonHeight,
                          child: ElevatedButton(
                              child: Text('ID'),
                              style:ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                foregroundColor: buttonTextColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => registerTrademark()));
                              }

                          ),
                        ),
                        SizedBox(width: horizontalSpace),
                        SizedBox(
                          width: buttonWidth,
                          height: buttonHeight,
                          child: ElevatedButton(
                              child: Text('Search'),
                              style:ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                foregroundColor: buttonTextColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => searchTrademark()));
                              }

                          ),
                        ),
                      ]),
                  Column(
                      children: <Widget>[

                        SizedBox(height: verticalSpace),
                        DisplayText('Complete and sign the Declaration:'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_declaration.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Select Validate'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_validate.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Check your application by selecting Input'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_input.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('If everything is okay, check the box and submit'
                            'and pay'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_pay_submit.PNG')
                        ),

                      ]),
                  SizedBox(height: verticalSpace),
                  SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: ElevatedButton(
                        child: Text('Done'),
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

                ]))));
  }
} // sendApplication
