import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _currentLanguage = prefs.getInt('ff_currentLanguage') ?? _currentLanguage;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DtRefTableStruct> _appStateRefData = [];
  List<DtRefTableStruct> get appStateRefData => _appStateRefData;
  set appStateRefData(List<DtRefTableStruct> value) {
    _appStateRefData = value;
  }

  void addToAppStateRefData(DtRefTableStruct value) {
    _appStateRefData.add(value);
  }

  void removeFromAppStateRefData(DtRefTableStruct value) {
    _appStateRefData.remove(value);
  }

  void removeAtIndexFromAppStateRefData(int index) {
    _appStateRefData.removeAt(index);
  }

  void updateAppStateRefDataAtIndex(
    int index,
    DtRefTableStruct Function(DtRefTableStruct) updateFn,
  ) {
    _appStateRefData[index] = updateFn(_appStateRefData[index]);
  }

  void insertAtIndexInAppStateRefData(int index, DtRefTableStruct value) {
    _appStateRefData.insert(index, value);
  }

  int _currentLanguage = 1;
  int get currentLanguage => _currentLanguage;
  set currentLanguage(int value) {
    _currentLanguage = value;
    prefs.setInt('ff_currentLanguage', value);
  }
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
