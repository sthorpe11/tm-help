import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/searchTrademark.dart';
import 'package:trademark/teasFilingBasis.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './finalVariables.dart';

class teasGoods1 extends HookConsumerWidget {
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
                        DisplayText('Goods/Services Information'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_add_goods1.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Search for your product again, like you did earlier'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_search_manual.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Select the class and description you found'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_insert_entries.PNG')
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
                              builder: (context) => teasfilingBasis()));
                        }
                    ),
                  ),

                ]))));
  }
} // sendApplication
