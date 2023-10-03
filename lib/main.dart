import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './finalVariables.dart';
import './homePage.dart';
import './registerTrademark.dart';
import './searchTrademark.dart';
import './basicSearch.dart';
import './startApplication.dart';
import './teasForm1.dart';
import './teasGoods1.dart';
import './teasDeclaration.dart';
import './registrationRefusals.dart';
import './getHelp.dart';
import './contactMe.dart';
import './aboutMe.dart';
import './helpSources.dart';
import './registerYourself.dart';


void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
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
        '/searchTrademark': (context) => searchTrademark(),
        '/basicSearch': (context) => basicSearch(),
        '/startApplication': (context) => startApplication(),
        '/teasForm1': (context) => teasForm1(),
        '/teasGoods1': (context) => teasGoods1(),
        '/teasFilingBasis': (context) => teasGoods1(),
        '/teasDeclaration': (context) => teasDeclaration(),
        '/getHelp': (context) => getHelp(),
        '/contactMe': (context) => contactMe(),
        '/registrationRefusals': (context) => registrationRefusals(),
        '/aboutMe': (context) => aboutMe(),
        '/registerYourself': (context) => registerYourself(),
        '/helpSources': (context) => helpSources(),
      },
      home: homePage(),
    );
  }
}
