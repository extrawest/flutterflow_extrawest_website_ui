import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _mobileWidth = prefs.getInt('ff_mobileWidth') ?? _mobileWidth;
    _tabletMaxWidth = prefs.getInt('ff_tabletMaxWidth') ?? _tabletMaxWidth;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _mobileWidth = 600;
  int get mobileWidth => _mobileWidth;
  set mobileWidth(int _value) {
    _mobileWidth = _value;
    prefs.setInt('ff_mobileWidth', _value);
  }

  int _tabletMaxWidth = 1380;
  int get tabletMaxWidth => _tabletMaxWidth;
  set tabletMaxWidth(int _value) {
    _tabletMaxWidth = _value;
    prefs.setInt('ff_tabletMaxWidth', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
