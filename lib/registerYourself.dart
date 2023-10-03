import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import './saveDataToFile.dart';
import './homePage.dart';
import './finalVariables.dart';

class registerYourself extends StatefulHookConsumerWidget {
  @override
  registerYourselfState createState() => registerYourselfState();
}

class registerYourselfState extends ConsumerState<registerYourself> {
  @override

  Widget build(BuildContext context) {
    String _email='';
    String _name='';
    String _appNo='';
    String _outcome = '';
    final _inputControllerEmail = useTextEditingController(text: '');
    final _inputControllerApplicationNo = useTextEditingController(text: '');
    final _inputControllerName = useTextEditingController(text: '');
    return Container(
      constraints: BoxConstraints(
        minWidth: containerMinWidth,
        maxWidth: containerMaxWidth,
        maxHeight: 450,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor, // Border color
          width: borderWidth, // Border width
        ),
        borderRadius: BorderRadius.circular(borderRadius), // Optional: Rounded corners
      ),

      child: Column(
          children: [
            SizedBox(height: verticalSpace),

            DisplayText('Register Yourself'),
            SizedBox(height: verticalSpace),
            DisplayText('Use my step-by-step illustrated guide to register your '
                'trademark yourself.'),
            SizedBox(
                //width: displayBoxWidth,
                child: Image.asset('assets/TEAS_filing_options.PNG')
            ),



          ]),
    );
  } //Widget Tree
} // contactMe