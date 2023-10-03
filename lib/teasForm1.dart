import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/searchTrademark.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './teasGoods1.dart';
import './finalVariables.dart';

class teasForm1 extends HookConsumerWidget {
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
                        DisplayText('Select Application Type'),
                        DisplayText('Use TEAS Plus if you found a good description '
                            'of your product. TEAS Standard is not covered here'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_filing_options.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Enter your information'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_applicant_information.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Select Standard Characters and enter the words '
                            'you wish to register'),
                        DisplayText('Special Forms like logos or sounds aren\'t covered here'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_mark_information.PNG')
                        ),
                      ]),
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
                              builder: (context) => teasGoods1()));
                        }
                    ),
                  ),

                ]))));
  }
} // sendApplication
