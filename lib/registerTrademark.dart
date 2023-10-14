import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/searchTrademark.dart';
import './homePage.dart';
import './startApplication.dart';
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
                        SizedBox(width: horizontalSpace),
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
                        SizedBox(width: horizontalSpace),
                        SizedBox(
                          width: buttonWidth,
                          height: buttonHeight,
                          child: ElevatedButton(
                              child: Text('Application'),
                              style:ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                foregroundColor: buttonTextColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => startApplication()));
                              }

                          ),
                        ),
                      ]),
                  Column(
                    children: <Widget>[
                      SizedBox(height: verticalSpace),
                      DisplayText('First, go to the USPTO Trademark ID Manual and search '
                          'for your product or service:'),
                      DisplayText('https://idm-tmng.uspto.gov/id-master-list-public.html'),
                      SizedBox(height: verticalSpace),

                      SizedBox(
                          width: displayBoxWidth,
                          child: Image.asset('assets/trademark_ID_manual.PNG')
                      ),
                      SizedBox(height: verticalSpace),
                      DisplayText('You will probably see several close matches. Note the '
                          'Class and Description of the best match.'),
                      SizedBox(height: verticalSpace),
                      SizedBox(
                          width: displayBoxWidth,
                          child: Image.asset('assets/Description_Search.PNG')
                      ),
                      SizedBox(height: verticalSpace),
                      SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                            child: Text('Next'),
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


                ]))));
  }
} // sendApplication