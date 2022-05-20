// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<bool> hasInternetConnection() async {
  bool result = await InternetConnectionChecker().hasConnection;
  return result;
}
