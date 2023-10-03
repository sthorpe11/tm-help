import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';

Future<String> saveTextToFile(String content, String email) async {
  String outcome = 'Save failed';
  if (!isEmailValid(email)) {
    DateTime now = DateTime.now();
    String formattedDateTime = "${now.year}-${_twoDigits(now.month)}-${_twoDigits(now.day)} ${_twoDigits(now.hour)}:${_twoDigits(now.minute)}:${_twoDigits(now.second)}";
    email = formattedDateTime+'.txt';
  }



  /*
  final bytes = utf8.encode(content);
  final blob = html.Blob([bytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.document.createElement('a') as html.AnchorElement
    ..href = 'https://sthorpe11.github.io/tm-help/downloads/'
    ..style.display = 'none'
    ..text = content
    ..download = 'data.txt';
  html.document.body?.children.add(anchor);

// download
  anchor.click();

// cleanup
  html.document.body?.children.remove(anchor);
  html.Url.revokeObjectUrl(url);
*/
  /*
  final url = Uri.parse('https://sthorpe11.github.io/tm-help/downloads/data.txt');
  print('Attempting Save');
  final response = await http.post(
    url,
    body: {'content': content},
  );

  if (response.statusCode == 200) {
    outcome = 'Request Saved';
    print('String saved successfully on the server.');
  } else {
    print('Not Saved');
  }

   */
  return outcome;
}

bool isEmailValid(String email) {
  // Regular expression to validate an email address
  final RegExp emailRegExp = RegExp(
    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
  );
  return emailRegExp.hasMatch(email);
}


String _twoDigits(int n) {
  if (n >= 10) {
    return "$n";
  }
  return "0$n";
}
//'https://sthorpe11.github.io/tm-help/downloads/'