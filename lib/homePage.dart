import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:trademark/registerTrademark.dart';
import 'package:trademark/registrationRefusals.dart';
import 'package:trademark/sendEmail.dart';
import 'package:trademark/aboutMe.dart';
import './finalVariables.dart';


class homePage extends StatefulHookConsumerWidget {
  @override
  homePageState createState() => homePageState();
}

class homePageState extends ConsumerState<homePage> {
  @override

  Widget build(BuildContext context) {
    List<bool> _checked = [false, false];

    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Trademark Help"),
          titleTextStyle: TextStyle(color: headerTextColor, fontSize: headerTextSize),
          leading: Image.asset(headerIcon),
          backgroundColor: headerColor,
          actions: [
            IconButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupWindow(
                    title: 'Trademark Help',
                    message: 'Resolve your trademark registration issues.',
                  );
                },
              );
            },
                icon: const Icon(Icons.help)
            ),
          ],
        ),
        body: Column(
            children: <Widget> [

              SizedBox(height: verticalSpace),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: horizontalSpace),


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
                                builder: (context) => sendEmail()));
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
                  ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 175,
                  child: Image.asset('../assets/attorneyinjungle_smallest.jpg')
              ),
              Expanded(
                child: SizedBox(
                    child: Text('If you are having trouble with your trademark '
                    'registration, I can help. I have decades of experience solving '
                    'trademark problems. However, if you haven\'t had a problem and '
                    'know what you want, I recommend doing it yourself. Click on '
                        'Register Yourself and I\'ll show you how.')),
              )
              ]),
              VerticalBarChart(),
            ])

    ));
  } //Widget Tree
} // homePage

class VerticalBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BarWithLabel(
            label: 'Confusion',
            height: 5,
            color: Colors.red,
          ),
          BarWithLabel(
            label: 'Descriptive',
            height: 85,
            color: Colors.yellow,
          ),
          BarWithLabel(
            label: 'Suggestive',
            height: 90,
            color: Colors.blue,
          ),
          BarWithLabel(
            label: 'Identifier',
            height: 95,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class BarWithLabel extends StatelessWidget {
  final String label;
  final double height;
  final Color color;

  BarWithLabel({
    required this.label,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 60,
            height: height,
            color: color,
          ),
          Text(label),
        ],
      ),
    );
  }
}

/*
class VerticalBarChart extends StatelessWidget {
  final List<double> data = [5, 80, 95];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: AspectRatio(
        aspectRatio: 2.0,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 100,

            barGroups: data
                .asMap()
                .map((index, value) => MapEntry(
                index,

                BarChartGroupData(
                  x: index,
                  barRods: [BarChartRodData(toY: value, width: 80)],
                )))
                .values
                .toList(),

            titlesData: FlTitlesData(
              show: true,
            ),
            gridData: FlGridData(show: false),

          ),
          swapAnimationDuration: Duration(milliseconds: 15000), // Optional
          swapAnimationCurve: Curves.linear, // Optional
        ),
      ),
    );
  }
}
*/

