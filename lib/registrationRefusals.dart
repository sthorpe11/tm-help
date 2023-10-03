import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './resolutionBlock.dart';
import './homePage.dart';
import './getHelp.dart';
import './registerTrademark.dart';
import './aboutMe.dart';
import './finalVariables.dart';

class registrationRefusals extends HookConsumerWidget {
  @override

  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Registration Refusals Explained"),
          titleTextStyle: TextStyle(color: headerTextColor, fontSize: headerTextSize),
          leading: Image.asset(headerIcon),
          backgroundColor: headerColor,
          actions: [
            IconButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(
                    title: 'Refusals',
                    message: 'There are many reasons a trademark application is '
                        'refused. Most can be overcome.',
                  );
                },
              );
            },
                icon: const Icon(Icons.help)
            ),
          ],
        ),
        body: ListView(
                children: <Widget>[
                  SizedBox(height: verticalSpace),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalSpace,),
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
                              child: Text(contactButtonLabel),
                              style:ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                foregroundColor: buttonTextColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => getHelp()));
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
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: reviewBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('Likelihood of Confussion'),
                        ),
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: answerBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('The Trademark office believes your '
                              'trademark is the same or close to another '
                              'existing trademark. This is very difficult to overcome.'),
                        ),
                      ]),
                  SizedBox(height: verticalSpace),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: reviewBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('Descriptive'),
                        ),
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: answerBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('The Trademark Office believes your trademark '
                              'is descriptive of your '
                              'product. Trademarks should not be descriptive of the '
                              'product or service they identify, '
                              'but there are ways to overcome this refusal.'),
                        ),
                      ]),
                  SizedBox(height: verticalSpace),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: reviewBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('Suggestive'),
                        ),
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: answerBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('Similar to a descriptive refusal, the '
                              'Trademark Office believes your '
                              'trademark suggests what your product or service is. This can '
                              'be overcome.'),
                        ),
                      ]),
                  SizedBox(height: verticalSpace),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: reviewBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('Identifier Issues'),
                        ),
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: answerBoxWidth,
                          //height: reviewBoxHeight,
                          child: DisplayText('Trademark registrations are for specific '
                              'classes and descriptions of products. The Trademark '
                              'Office doesn\'t agree with '
                              'your description of the product. This can be overcome.'),
                        ),
                      ]),

                      SizedBox(height: verticalSpace),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: horizontalSpace,),
                            SizedBox(
                              width: reviewBoxWidth,
                              //height: reviewBoxHeight,
                              child: DisplayText('Specimen Issues'),
                            ),
                            SizedBox(width: horizontalSpace,),
                            SizedBox(
                              width: answerBoxWidth,
                              //height: reviewBoxHeight,
                              child: DisplayText('To complete a trademark registration, '
                                  'you must demonstrate that you are using the '
                                  'mark in commerce by submitting a specimen.'),
                            ),
                          ]),

                      SizedBox(height: verticalSpace),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: horizontalSpace,),
                            SizedBox(
                              width: reviewBoxWidth,
                              //height: reviewBoxHeight,
                              child: DisplayText('Opposition'),
                            ),
                            SizedBox(width: horizontalSpace,),
                            SizedBox(
                              width: answerBoxWidth,
                              //height: reviewBoxHeight,
                              child: DisplayText('A third party has opposed your '
                                  'registration. '),
                            ),
                          ]),

                      ]),
                      Column(
                        children: [
                          Container(
                              constraints: BoxConstraints(
                                maxWidth: resolutionGraphWidth,
                                maxHeight: resolutionGraphHeight,
                              ),
                              child: resolutionBlock(),
                          )])

                      ]),
                ])));
  }
} // registration refusals
