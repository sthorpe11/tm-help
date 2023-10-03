import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/searchTrademark.dart';
import 'package:trademark/teasDeclaration.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './finalVariables.dart';

class teasfilingBasis extends HookConsumerWidget {
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
                        DisplayText('If you haven\'t started using the trademark, '
                            'select Section 1(b) for Intent to Use'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_filing_basis-b.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Check the box and select Assign Filing Basis'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_filing_basis1b.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('If you have started using the trademark, '
                            'select Section 1(a) for Actual Use in Commerce'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_filing_basis-a.PNG')
                        ),
                        SizedBox(height: verticalSpace),
                        DisplayText('Enter when you started using the mark and attach a specimen'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_filing_basis1a.PNG')
                        ),
                        DisplayText('When the filing basis is correct, Continue'),
                        SizedBox(height: verticalSpace),
                        SizedBox(
                            width: displayBoxWidth,
                            child: Image.asset('assets/TEAS_filing_basis_done.PNG')
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
                              builder: (context) => teasDeclaration()));
                        }
                    ),
                  ),

                ]))));
  }
} // sendApplication
