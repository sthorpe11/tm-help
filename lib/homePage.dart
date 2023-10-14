import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:trademark/registerTrademark.dart';
import 'package:trademark/registrationRefusals.dart';
import 'package:trademark/resolutionGraph.dart';
import 'package:trademark/resolutionBlock.dart';
import 'package:trademark/getHelp.dart';
import 'package:trademark/aboutMe.dart';
//import 'package:trademark/contactMe.dart';
import 'package:trademark/registerYourself.dart';
import './finalVariables.dart';


class homePage extends StatefulHookConsumerWidget {
  @override
  homePageState createState() => homePageState();
}

class homePageState extends ConsumerState<homePage> {
  String _mark = '';
  String _ideas = '';


  @override


  Widget build(BuildContext context) {
    final _inputControllerMark = useTextEditingController(text: '');
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
        body: ListView(
            children: <Widget> [

              SizedBox(height: verticalSpace),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
              SizedBox(width: horizontalSpace),
              SizedBox(
                width: 250,
                  child: Image.asset('assets/trademark-license_600x360.jpg')
              ),
              SizedBox(width: horizontalSpace),
              Expanded(
                child: SizedBox(
                    child: Text('If you are having trouble with your trademark '
                    'registration, I can help. I have decades of experience solving '
                    'trademark problems. \n\nHowever, if you haven\'t had a problem and '
                    'know the trademark you want, you can register it yourself. ',
                      style: TextStyle(color: messageColor,
                          fontWeight: FontWeight.normal,
                          fontSize: messageSize,
                          backgroundColor: textbFillColor),
                      )
                      )
              )]),

              // Container Start
              SizedBox(height: verticalSpace),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: horizontalSpace),
                  Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            constraints: BoxConstraints(
                              minWidth: containerMinWidth,
                              maxWidth: containerMaxWidth,
                              //maxHeight: resolutionGraphHeight,
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
                                DisplayText('Specimens'),
                                DisplayText('A good specimen shows your product or '
                                    'service the way a customer would buy it with '
                                    'the mark. Capture a JPEG or PDF of your packaged '
                                    'product, order page, or pricing sheet with the '
                                    'trademark used to identify the product.')
                        ])),
                        SizedBox(height: verticalSpace),
                        Container(
                          constraints: BoxConstraints(
                            minWidth: containerMinWidth,
                            maxWidth: containerMaxWidth,
                            //maxHeight: resolutionGraphHeight,
                          ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: borderColor, // Border color
                                width: borderWidth, // Border width
                              ),
                              borderRadius: BorderRadius.circular(borderRadius), // Optional: Rounded corners
                            ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              DisplayText('Abstract Trademarks'),
                              DisplayText('Trademarks identify the source of a '
                                  'product rather than what the product is. '
                                  'Need a more abstract trademark? Enter '
                                  'your current mark and generate some ideas:'),
                              SizedBox(height: verticalSpace),
                              SizedBox(width: horizontalSpace),
                              TextFormField(
                                controller: _inputControllerMark,
                                decoration: const InputDecoration(
                                  fillColor: formFillColor,
                                  border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                                    const Radius.circular(borderRadius),),),
                                  contentPadding: EdgeInsets.all(marginSize),
                                  labelText: 'Current Trademark',
                                  //hintText: 'The idea is needed because...',
                                ),
                                minLines: 1,
                                //maxLines: 1,
                              ),
                              SizedBox(height: verticalSpace),
                              ElevatedButton(
                                  child: Text('Generate'),
                                  style:ElevatedButton.styleFrom(
                                    backgroundColor: buttonColor,
                                    foregroundColor: buttonTextColor,
                                  ),
                                  onPressed: () async {
                                    _mark = _inputControllerMark.text;
                                    _ideas = GenerateAbstractMarks(_mark);
                                    //print(_ideas);
                                    showPopup(context, 'More Abstract Versions:', _ideas);
                                    //Navigator.of(context).push(MaterialPageRoute(
                                        //builder: (context) => homePage()));
                                  }

                              ),
                              SizedBox(height: verticalSpace),

                            ])
                        ),
                        SizedBox(height: verticalSpace,),
                        Container(
                            constraints: BoxConstraints(
                              maxWidth: containerMinWidth,
                              maxHeight: containerMaxWidth,
                            ),
                            child: registerYourself(),
                        )
                  ]),
                  SizedBox(width: horizontalSpace),
                  Container(
                      constraints: BoxConstraints(
                        maxWidth: resolutionGraphWidth,
                        maxHeight: resolutionGraphHeight,
                      ),
                      child: resolutionBlock(),
                  ),
                ]),
              //),


    ]),


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


class VerticalBarChartFL extends StatelessWidget {
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


