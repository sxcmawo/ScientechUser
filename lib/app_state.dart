import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _routeDistance = '';
  String get routeDistance => _routeDistance;
  set routeDistance(String value) {
    _routeDistance = value;
  }

  String _routeDuration = '';
  String get routeDuration => _routeDuration;
  set routeDuration(String value) {
    _routeDuration = value;
  }

  bool _hasLuggage = false;
  bool get hasLuggage => _hasLuggage;
  set hasLuggage(bool value) {
    _hasLuggage = value;
  }

  bool _quiteRide = false;
  bool get quiteRide => _quiteRide;
  set quiteRide(bool value) {
    _quiteRide = value;
  }

  bool _femaleDriver = false;
  bool get femaleDriver => _femaleDriver;
  set femaleDriver(bool value) {
    _femaleDriver = value;
  }

  bool _safetySeat = false;
  bool get safetySeat => _safetySeat;
  set safetySeat(bool value) {
    _safetySeat = value;
  }

  bool _wheelchairAccess = false;
  bool get wheelchairAccess => _wheelchairAccess;
  set wheelchairAccess(bool value) {
    _wheelchairAccess = value;
  }

  String _fare = '';
  String get fare => _fare;
  set fare(String value) {
    _fare = value;
  }

  bool _hearspeak = false;
  bool get hearspeak => _hearspeak;
  set hearspeak(bool value) {
    _hearspeak = value;
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
