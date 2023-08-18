import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';




//Colors
const myPrimarySwatch = Colors.lightBlue;
final headerColor = Colors.lightBlue;
final headerTextColor = Colors.white;
const trueColor = Colors.green;
const falseColor = Colors.red;
//Text
final headerTextSize = 20.0;
final buttonColor = Colors.lightBlue;
final buttonTextColor = Colors.white;
final buttonTextSize = 18.0;
final buttonAccentColor = Colors.deepPurpleAccent;
final buttonWidth =  160.0;
final buttonHeight = 30.0;
final messageColor = Colors.black;
final messageSize = 18.0;
final resultTextColor = Colors.black;
final resultTextSize = 18.0;
final textBoxWidth = 300.0;
final textBoxWidthX = 500.0;
final textBoxHeight = 50.0;
final reviewBoxHeight = 200.0;
final dialogBoxWidth = 350.0;
final dialogBoxHeight = 400.0;
final formFillColor = Colors.white;
final textSize = 18.0;
final textColor = Colors.black;
const textbFillColor = Colors.white;
const marginSize = 10.0;
const borderRadius = 10.0;
const outPadding = 5.0;
const verticalSpace = 10.0;
const horizontalSpace = 10.0;
//Buttons
const registerButtonLabel = 'Register Yourself';
const rejectionButtonLabel = 'Refusals Explained';
const aboutButtonLabel = 'About Me';
const homeButtonLabel = 'Home';
const contactButtonLabel = 'Contact Me';
// Icons
const String headerIcon= '../assets/Logo.png';

// Methods

class DisplayText extends StatelessWidget {
  final String message;
  DisplayText(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(marginSize),
        child: Text( message,
          style: TextStyle(color: messageColor, fontWeight: FontWeight.normal, fontSize: messageSize, backgroundColor: textbFillColor),
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

String cleanText(text) {
  text = text.replaceAll(': ', ':\n');
  text = text.replaceAll('; ', ';\n');
  if (text[0] == '\n') {text = text.substring(1);}
  if (text[0] == '\n') {text = text.substring(1);}
  if (text[0] == '\n') {text = text.substring(1);}
  if (text[0] == '\n') {text = text.substring(1);}
  return text;
}


