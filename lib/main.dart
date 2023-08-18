import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './finalVariables.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './registrationRefusals.dart';
import './sendEmail.dart';
import './aboutMe.dart';

void main() async {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Trademarks',
      theme: ThemeData(
        primarySwatch: myPrimarySwatch,
      ),
      routes: {
        '/homePage': (context) => homePage(),
        '/registerTrademark': (context) => registerTrademark(),
        '/sendEmail': (context) => sendEmail(),
        '/registrationRefusals': (context) => registrationRefusals(),
        '/aboutMe': (context) => sendEmail(),
      },
      home: homePage(),
    );
  }
}
