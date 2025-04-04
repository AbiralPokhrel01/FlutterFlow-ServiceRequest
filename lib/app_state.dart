import 'package:flutter/material.dart';

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

  String _BearerToken = 'Hello';
  String get BearerToken => _BearerToken;
  set BearerToken(String value) {
    _BearerToken = value;
  }

  String _RefreshToken = 'Hello';
  String get RefreshToken => _RefreshToken;
  set RefreshToken(String value) {
    _RefreshToken = value;
  }

  String _passwordError = '';
  String get passwordError => _passwordError;
  set passwordError(String value) {
    _passwordError = value;
  }

  int _errorCode = 400;
  int get errorCode => _errorCode;
  set errorCode(int value) {
    _errorCode = value;
  }
}
