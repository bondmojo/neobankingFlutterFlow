import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _isOnboarded = prefs.getBool('ff_isOnboarded') ?? _isOnboarded;
    _userName = prefs.getString('ff_userName') ?? _userName;
    _password = prefs.getString('ff_password') ?? _password;
  }

  SharedPreferences prefs;

  String sessionId = '';

  bool _isOnboarded = false;
  bool get isOnboarded => _isOnboarded;
  set isOnboarded(bool _value) {
    _isOnboarded = _value;
    prefs.setBool('ff_isOnboarded', _value);
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String _value) {
    _userName = _value;
    prefs.setString('ff_userName', _value);
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
    prefs.setString('ff_password', _value);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
