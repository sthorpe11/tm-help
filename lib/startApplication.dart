import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/searchTrademark.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './teasForm1.dart';
import './finalVariables.dart';

class startApplication extends HookConsumerWidget {
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
                        DisplayText('Apply for your trademark online'),
                        DisplayText('https://www.uspto.gov/trademarks/apply'),
                        //SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_apply_online.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Apply for a USPTO.gov account if you don\'t have one'),
                        //SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_create_account.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('With your account, start the application'),
                        DisplayText('https://www.uspto.gov/trademarks/apply/initial-application-forms'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_start_application.PNG')
                        ),
                      ]),
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
                              builder: (context) => teasForm1()));
                        }
                    ),
                  ),

                ]))));
  }
} // sendApplication
