import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import './saveDataToFile.dart';
import './homePage.dart';
import './finalVariables.dart';

class contactMe extends StatefulHookConsumerWidget {
  @override
  contactMeState createState() => contactMeState();
}

class contactMeState extends ConsumerState<contactMe> {
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
            maxHeight: 280,
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

                  DisplayText('Request Help'),
                  SizedBox(height: verticalSpace),
                  DisplayText('If you need help, please contact me:'),
                  DisplayText('sthorpe@kba.law'),
                  //DisplayText('trademark-help@gmail.com'),

                /*
                Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: dialogBoxWidth,
                        ),
                        child: TextFormField(
                          controller: _inputControllerEmail,
                          decoration: const InputDecoration(
                            fillColor: formFillColor,
                            border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                              const Radius.circular(borderRadius),),),
                            contentPadding: EdgeInsets.all(marginSize),
                            labelText: 'Email',
                            //hintText: 'The idea is needed because...',
                          ),
                          minLines: 1,
                          maxLines: 1,
                        ))),

                SizedBox(height: verticalSpace),
                Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: dialogBoxWidth,
                        ),
                        child: TextFormField(
                          controller: _inputControllerName,
                          decoration: const InputDecoration(
                            fillColor: formFillColor,
                            border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                              const Radius.circular(borderRadius),),),
                            contentPadding: EdgeInsets.all(marginSize),
                            labelText: 'Name',
                            //hintText: 'The idea is needed because...',
                          ),
                          minLines: 1,
                          maxLines: 1,
                        ))),

                SizedBox(height: verticalSpace),
                Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: dialogBoxWidth,
                        ),
                        child: TextFormField(
                          controller: _inputControllerApplicationNo,
                          decoration: const InputDecoration(
                            fillColor: formFillColor,
                            border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                              const Radius.circular(borderRadius),),),
                            contentPadding: EdgeInsets.all(marginSize),
                            labelText: 'Application Number',
                            //hintText: 'The idea is needed because...',
                          ),
                          minLines: 1,
                          maxLines: 1,
                        ))),

                SizedBox(height: verticalSpace),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                      child: Text('Save'),
                      style:ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: buttonTextColor,
                      ),
                      onPressed: () async {
                        _email = _inputControllerEmail.text;
                        _name = _inputControllerName.text;
                        _appNo = _inputControllerApplicationNo.text;
                        _outcome = await saveTextToFile(_email+' '+_name+' '+_appNo, _email);
                        PopupWindow(title: _outcome, message: _outcome);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => homePage()));
                      }

                  ),
                ),
                */

                /*
                SizedBox(height: verticalSpace),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                      child: Text('Email'),
                      style:ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: buttonTextColor,
                      ),
                      onPressed: () async {
                        _email = _inputControllerEmail.text;
                        _name = _inputControllerName.text;
                        _appNo = _inputControllerApplicationNo.text;
                        //saveTextToFile(_email+_name+_appNo);

                        final Email myEmail = Email(
                          body: _appNo+' '+_name+' '+_email,
                          subject: _appNo+' '+_name,
                          recipients: ['sthorpe@kba.law'],
                          //cc: ['cc@example.com'],
                          //bcc: ['bcc@example.com'],
                          //attachmentPaths: ['/path/to/attachment.zip'],
                          isHTML: false,
                        );
                        try {
                          print('Sending');
                          await FlutterEmailSender.send(myEmail);

                        } catch (error) {
                          print('error');
                          print(error);
                        }

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => homePage()));
                      }

                  ),
                ),
                */
              ]),
        );
  } //Widget Tree
} // contactMe