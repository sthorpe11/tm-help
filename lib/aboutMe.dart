import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './homePage.dart';
import './registrationRefusals.dart';
import './registerTrademark.dart';
import './finalVariables.dart';

class aboutMe extends HookConsumerWidget {
  @override

  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          titleTextStyle: TextStyle(color: headerTextColor, fontSize: headerTextSize),
          leading: Image.asset(headerIcon),
          backgroundColor: headerColor,
          actions: [
            IconButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(
                    title: 'Lots of Experience',
                    message: 'I have been doing trademarks for a long time.',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: 50,
                          //height: reviewBoxHeight,
                          child: Text(''),
                        ),
                        SizedBox(width: horizontalSpace,),
                        SizedBox(
                          width: 600,
                          //height: reviewBoxHeight,
                          child: DisplayText('I am a partner at Kunzler Bean '
                              '& Adamson, a leading trademark firm and I used to teach '
                              'attorneys about trademark law. While I spend most '
                              'of my time hiking, biking, and playing pickleball, '
                              'I still enjoy solving tough trademark '
                              'problems and can help you with your issue. '
                              'However, I just do limited representations for '
                              'applicants who need short-term help because I '
                              'don\'t want to manage your trademark '
                              'after that problem is solved and you probably don\'t '
                              'want to pay me to do things that you can do yourself. '),
                        ),
                      ]),
        Row(
            children: [

              ])])));
  }
} // sendApplication
