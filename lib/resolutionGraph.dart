import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import './finalVariables.dart';
import 'package:pie_chart/pie_chart.dart';

class resolutionGraph extends StatefulHookConsumerWidget {
  int _refusal;
  int _importance;
  resolutionGraph(this._refusal, this._importance);

  @override
  resolutionGraphState createState() => resolutionGraphState();
}
class resolutionGraphState extends ConsumerState<resolutionGraph> {
  final String int0 = 'Filing with Trademark Office';
  final String int1 = 'Multiple Filings, \npossible long wait';
  final String int2 = 'Negotiate Agreement \nwith Another Mark Owner';
  final String int3 = 'New Application';
  Map<String, double> data = {};

  bool _loadChart = false;

  @override


  void initState() {
    super.initState();
  }

  List<Color> _colors = [
    Colors.teal,
    Colors.lightBlueAccent,
    Colors.amberAccent,
    Colors.redAccent
  ];

  @override
  Widget build(BuildContext context) {
    data[int0] = 95;
    data[int1] = 5;
    data[int2] = 0;
    data[int3] = 0;
    int refusal = widget._refusal;
    int importance = widget._importance;
    //print('resolutionGraph: '+refusal.toString()+' '+importance.toString());
    // Importance 1-Low, 2-Medium, 3-High
    // Filing
    // Multiple Filings
    // Negotiate
    // Refile application
    switch (refusal) {
      case 1: //Likelihood of Confusion
        {
          if (importance == 1) {
            data[int0] = 5;
            data[int1] = 5;
            data[int2] = 25;
            data[int3] = 65;

          } else {
            if (importance == 2) {
              data[int0] = 15;
              data[int1] = 5;
              data[int2] = 45;
              data[int3] = 35;
            } else {
              data[int0] = 5;
              data[int1] = 5;
              data[int2] = 80;
              data[int3] = 10;
            }
          }
        }
        break;

      case 2: //Descriptive
        {
          if (importance == 1) {
            data[int0] = 5;
            data[int1] = 65;
            data[int2] = 0;
            data[int3] = 30;
          } else {
            if (importance == 2) {
              data[int0] = 5;
              data[int1] = 75;
              data[int2] = 0;
              data[int3] = 20;
            } else {
              data[int0] = 5;
              data[int1] = 95;
              data[int2] = 0;
              data[int3] = 0;
            }
          }
        } // Case 2
        break;
      case 3: //Suggestive
        {
          if (importance == 1) {
            data[int0] = 5;
            data[int1] = 65;
            data[int2] = 0;
            data[int3] = 30;
          } else {
            if (importance == 2) {
              data[int0] = 25;
              data[int1] = 75;
              data[int2] = 0;
              data[int3] = 0;
            } else {
              data[int0] = 15;
              data[int1] = 85;
              data[int2] = 0;
              data[int3] = 0;
            }
          }
        }// Case 3
        break;
      case 4: //Identifier
        {
          if (importance == 1) {
            data[int0] = 55;
            data[int1] = 5;
            data[int2] = 0;
            data[int3] = 40;
          } else {
            if (importance == 2) {
              data[int0] = 65;
              data[int1] = 15;
              data[int2] = 0;
              data[int3] = 20;
            } else {
              data[int0] = 50;
              data[int1] = 40;
              data[int2] = 0;
              data[int3] = 10;
            }
          }
        }
        break;// Case 4
      case 5: //Specimen
        {
          if (importance == 1) {
            data[int0] = 98;
            data[int1] = 2;
            data[int2] = 0;
            data[int3] = 0;
          } else {
            if (importance == 2) {
              data[int0] = 90;
              data[int1] = 10;
              data[int2] = 0;
              data[int3] = 0;
            } else {
              data[int0] = 75;
              data[int1] = 25;
              data[int2] = 0;
              data[int3] = 0;
            }
          }
        }
        break;

      case 6: //Opposition
        {
          if (importance == 1) {
            data[int0] = 0;
            data[int1] = 0;
            data[int2] = 45;
            data[int3] = 55;
          } else {
            if (importance == 2) {
              data[int0] = 0;
              data[int1] = 0;
              data[int2] = 50;
              data[int3] = 50;
            } else {
              data[int0] = 0;
              data[int1] = 0;
              data[int2] = 85;
              data[int3] = 15;
            }
          }
        }
        break;

    } //Switch
    return Scaffold(

      body: Center(
        child: Column(
          children: <Widget>[

            PieChart(
              key: UniqueKey(), //Force animation
              dataMap: data,
              colorList: _colors, // if not declared, random colors will be chosen
              animationDuration: Duration(milliseconds: 3000),
              chartLegendSpacing: 30.0,
              chartRadius: MediaQuery.of(context).size.width / 6.0, //determines the size of the chart
              initialAngleInDegree: 0,
              chartType: ChartType.disc,
              legendOptions: LegendOptions(legendPosition: LegendPosition.bottom,
                legendTextStyle: TextStyle(fontSize: messageSize),
              ),
              chartValuesOptions: ChartValuesOptions(
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  decimalPlaces: 0),//can be changed to ChartType.ring
            ),

          ],
        ),
      ),
    );
  }
}