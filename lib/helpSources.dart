import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import './finalVariables.dart';

class helpSources extends StatefulHookConsumerWidget {
  @override
  helpSourcesState createState() => helpSourcesState();
}

class helpSourcesState extends ConsumerState<helpSources> {
  @override

  Widget build(BuildContext context) {

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

                DisplayText('Help Sources'),
                SizedBox(height: verticalSpace),
                DisplayText('The trademark office has excellent and accurate '
                    'information on resolving trademark issues. '),
                DisplayText('https://www.uspto.gov/trademarks/additional-guidance-and-resources/possible-grounds-refusal-mark')

              ]),
        );
  } //Widget Tree
} // contactMe