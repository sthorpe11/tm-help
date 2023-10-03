import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';




//Colors
const myPrimarySwatch = Colors.lightBlue;
const headerColor = Colors.lightBlue;
const headerTextColor = Colors.white;
const trueColor = Colors.green;
const falseColor = Colors.red;
//Text
const headerTextSize = 20.0;
const buttonColor = Colors.lightBlue;
const buttonTextColor = Colors.white;
final buttonTextSize = 18.0;
final buttonAccentColor = Colors.deepPurpleAccent;
final buttonWidth =  160.0;
final buttonHeight = 30.0;
final messageColor = Colors.black;
final messageSize = 18.0;
final resultTextColor = Colors.black;
final resultTextSize = 18.0;
final textBoxWidth = 300.0;
const textBoxWidthX = 500.0;
const textBoxHeight = 50.0;
const reviewBoxHeight = 50.0;
const reviewBoxWidth = 175.0;
const answerBoxWidth = 300.0;
const containerMinWidth = 400.0;
const containerMaxWidth = 400.0;
const dialogBoxWidth = 350.0;
const dialogBoxHeight = 400.0;
const displayBoxWidth = 600.0;
const resolutionGraphWidth = 300.0;
const resolutionGraphHeight = 750.0;
const formFillColor = Colors.white;
final textSize = 18.0;
final textColor = Colors.black;
const textbFillColor = Colors.white;
const marginSize = 10.0;
const borderColor = Colors.lightBlue;
const borderRadius = 10.0;
const borderWidth = 2.0;
const outPadding = 5.0;
const verticalSpace = 10.0;
const horizontalSpace = 10.0;
//Buttons
const registerButtonLabel = 'Register Yourself';
const rejectionButtonLabel = 'Refusals Explained';
const aboutButtonLabel = 'About Me';
const homeButtonLabel = 'Home';
const contactButtonLabel = 'Get Help';
// Icons
const String headerIcon= 'assets/Logo.png';

// Methods

class DisplayText extends StatelessWidget {
  final String message;
  DisplayText(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(marginSize),
        child: Text( message,
          style: TextStyle(color: messageColor,
              fontWeight: FontWeight.normal,
              fontSize: messageSize,
              backgroundColor: textbFillColor),
        )
    );
  }
} //DisplayText

class PopupWindow extends StatelessWidget {
  final String title;
  final String message;

  const PopupWindow({Key? key, required this.title, required this.message})
      : super(key: key);

  @override

  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
} //PopupWindow

void showPopup(BuildContext context, String title, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Container(
        width: 400.0, // Set the width
        height: 100.0,
        child: Text(message),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the popup
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
} //showPopup

String GenerateAbstractMarks(String mark) {
  final patList = ['S', 'A', 'V', 'PH', 'F', 'C',  'C', 'CH', 'CH', 'SH', 'SL', 'E', 'I', 'TH', 'TH', 'B', 'ING'];
  final repList = ['Z', 'V', 'A', 'F',  'PH', 'K', 'S', 'C',  'K',  'H',  'Z', 'Y', 'Y', 'SS', 'DD', 'E', '\'N'];
  mark = mark.toUpperCase();
  String abstractMark = '';
  //abstractMark = 'Examples of a more abstract version of your mark: \n\n';
  int count = 0;
  for (var i=0; i<patList.length; i++) {
    if (mark.contains(patList[i])) {
      abstractMark += mark.replaceFirst(patList[i], repList[i]) + ' ';
      count += 1;
    }
    if (count > 20) {break;}
  }
  if (count < 5){
    abstractMark += mark + '99 ';
    abstractMark += mark + 'Now ';
    abstractMark += 'My'+mark + ' ';
    abstractMark += 'The'+mark + ' ';
    abstractMark += 'Big'+mark + ' ';
  }
  //print(abstractMark);
  return abstractMark;
}

String cleanText(text) {
  text = text.replaceAll(': ', ':\n');
  text = text.replaceAll('; ', ';\n');
  if (text[0] == '\n') {text = text.substring(1);}
  if (text[0] == '\n') {text = text.substring(1);}
  if (text[0] == '\n') {text = text.substring(1);}
  if (text[0] == '\n') {text = text.substring(1);}
  return text;
}


