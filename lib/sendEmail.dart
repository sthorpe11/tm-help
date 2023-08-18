import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import './homePage.dart';
import './finalVariables.dart';

class sendEmail extends HookConsumerWidget {
  @override
  String _email='';
  String _name='';
  String _appNo='';

  Widget build(BuildContext context, WidgetRef ref) {
    final _inputControllerEmail = useTextEditingController(text: '');
    final _inputControllerApplicationNo = useTextEditingController(text: '');
    final _inputControllerName = useTextEditingController(text: '');
    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Contact Me"),
          titleTextStyle: TextStyle(color: headerTextColor, fontSize: headerTextSize),
          leading: Image.asset(headerIcon),
          backgroundColor: headerColor,
          actions: [
            IconButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(
                    title: 'Contact Me',
                    message: 'Let me know how I can help.',
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
                    ]),
                SizedBox(height: verticalSpace),
                Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: dialogBoxWidth,
                        ),
                        child: TextFormField(
                          controller: _inputControllerEmail,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
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
                            fillColor: Colors.white,
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
                            fillColor: Colors.white,
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
                      child: Text('Send'),
                      style:ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: buttonTextColor,
                      ),
                      onPressed: () async {
                        _email = _inputControllerEmail.text;
                        _name = _inputControllerName.text;
                        _appNo = _inputControllerApplicationNo.text;
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
        ]))));
  }
} // sendApplication
