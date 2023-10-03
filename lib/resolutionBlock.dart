import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trademark/resolutionGraph.dart';
import './finalVariables.dart';

class resolutionBlock extends StatefulHookConsumerWidget {
  @override
  resolutionBlockState createState() => resolutionBlockState();
}

class resolutionBlockState extends ConsumerState<resolutionBlock> {
  int _refusal = 4;
  int _importance = 1;
  late Widget _resolutionGraphWidget;

  @override
  void initState() {
    _resolutionGraphWidget = resolutionGraph(_refusal, _importance);
    //print('Initialize: ');
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    //List<bool> _checked = [false, false];

    return Scaffold(
        body: Container(
                    constraints: BoxConstraints(
                      //maxWidth: 300,
                      //maxHeight: 900,
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
                          SizedBox(width: horizontalSpace),
                          DisplayText('Estimate the probability that each the various '
                              'potential remedies will be needed to resolve your trademark issue:'),
                          DisplayText('Reason for Trademark Refusal'),
                          DropdownButton(
                            //hint: Text('Reason for Refusal'),
                              value: _refusal,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Likelihood of Confusion"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Descriptive"),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                    child: Text("Suggestive"),
                                    value: 3
                                ),
                                DropdownMenuItem(
                                    child: Text("Identifier"),
                                    value: 4
                                ),
                                DropdownMenuItem(
                                    child: Text("Specimen"),
                                    value: 5
                                ),
                                DropdownMenuItem(
                                    child: Text("Opposition"),
                                    value: 6
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _refusal = value!;

                                });
                                _resolutionGraphWidget = resolutionGraph(_refusal, _importance);
                              }),


                          DisplayText('Importance of Trademark to You'),
                          SizedBox(width: horizontalSpace),
                          DropdownButton(
                            //hint: Text('Importance of Mark to You'),
                              value: _importance,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Nice to Have"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Needed"),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text("Vital"),
                                  value: 3,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _importance = value!;
                                });
                                _resolutionGraphWidget = resolutionGraph(_refusal, _importance);
                              }),
                          DisplayText('Probable Solution'),
                          Container(
                            width: 295.0,
                            height: 360.0,
                            /*
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(10.0), // Optional: Rounded corners
                        ),

                        margin: EdgeInsets.all(marginSize),

                         */
                            child: _resolutionGraphWidget,
                          ),
                        ]),
                  ));
  } //Widget Tree
} // resolutionBlock