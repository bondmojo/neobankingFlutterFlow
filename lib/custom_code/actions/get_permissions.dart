// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:permission_handler/permission_handler.dart';

Future getPermissions() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.sms,
    Permission.contacts,
    Permission.location
  ].request();
}
