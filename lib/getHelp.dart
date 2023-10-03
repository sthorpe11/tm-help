import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './contactMe.dart';
import './aboutMe.dart';
import './helpSources.dart';
import './homePage.dart';
import './registrationRefusals.dart';
import './registerTrademark.dart';
import './finalVariables.dart';

class getHelp extends HookConsumerWidget {
  @override

  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Get Help"),
          titleTextStyle: TextStyle(color: headerTextColor, fontSize: headerTextSize),
          leading: Image.asset(headerIcon),
          backgroundColor: headerColor,
          actions: [
            IconButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(
                    title: 'Get Help',
                    message: 'Sources of trademark help',
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
              children: [
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
                            child: Text(rejectionButtonLabel),
                            style:ElevatedButton.styleFrom(
                              backgroundColor: buttonColor,
                              foregroundColor: buttonTextColor,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => registrationRefusals()));
                            }
                        ),
                      ),

                      SizedBox(width: horizontalSpace),
                      SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                            child: Text(registerButtonLabel),
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
                            child: Text(aboutButtonLabel),
                            style:ElevatedButton.styleFrom(
                              backgroundColor: buttonColor,
                              foregroundColor: buttonTextColor,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => aboutMe()));
                            }
                        ),
                      ),

                    ]),
                SizedBox(height: verticalSpace),
                Row(
                  children: [
                    SizedBox(width: horizontalSpace),
                    helpSources(),
                    SizedBox(width: horizontalSpace),
                    contactMe(),
                  ]
                ),

        ]))));
  }
} // sendApplication
