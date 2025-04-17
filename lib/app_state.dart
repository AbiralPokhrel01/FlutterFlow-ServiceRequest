import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _BearerToken = prefs.getString('ff_BearerToken') ?? _BearerToken;
    });
    _safeInit(() {
      _RefreshToken = prefs.getString('ff_RefreshToken') ?? _RefreshToken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _BearerToken = '';
  String get BearerToken => _BearerToken;
  set BearerToken(String value) {
    _BearerToken = value;
    prefs.setString('ff_BearerToken', value);
  }

  String _RefreshToken = '';
  String get RefreshToken => _RefreshToken;
  set RefreshToken(String value) {
    _RefreshToken = value;
    prefs.setString('ff_RefreshToken', value);
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

  List<TaskDataStruct> _taskMockData = [
    TaskDataStruct.fromSerializableMap(jsonDecode(
        '{\"referral_initiator\":\"John\",\"referral_recipient\":\"Smith\",\"created_date\":\"July 1\",\"updated_date\":\"July 9\",\"status\":\"Accepted\"}')),
    TaskDataStruct.fromSerializableMap(jsonDecode(
        '{\"referral_initiator\":\"Robert\",\"referral_recipient\":\"Chris\",\"created_date\":\"Dec 1\",\"updated_date\":\"Dec 9\",\"status\":\"In Progress\"}')),
    TaskDataStruct.fromSerializableMap(jsonDecode(
        '{\"referral_initiator\":\"Tom\",\"referral_recipient\":\"Tony\",\"created_date\":\"Oct 1\",\"updated_date\":\"Oct 4\",\"status\":\"Received\"}')),
    TaskDataStruct.fromSerializableMap(jsonDecode(
        '{\"referral_initiator\":\"Frenkie\",\"referral_recipient\":\"Rodri\",\"created_date\":\"Feb 9\",\"updated_date\":\"Feb 28\",\"status\":\"In Progress\"}')),
    TaskDataStruct.fromSerializableMap(jsonDecode(
        '{\"referral_initiator\":\"Pedri\",\"referral_recipient\":\"Gavi\",\"created_date\":\"March 3\",\"updated_date\":\"March 9\",\"status\":\"Accepted\"}')),
    TaskDataStruct.fromSerializableMap(jsonDecode(
        '{\"referral_initiator\":\"John\",\"referral_recipient\":\"Robert\",\"created_date\":\"Nov 18\",\"updated_date\":\"Nov 26\",\"status\":\"Received\"}'))
  ];
  List<TaskDataStruct> get taskMockData => _taskMockData;
  set taskMockData(List<TaskDataStruct> value) {
    _taskMockData = value;
  }

  void addToTaskMockData(TaskDataStruct value) {
    taskMockData.add(value);
  }

  void removeFromTaskMockData(TaskDataStruct value) {
    taskMockData.remove(value);
  }

  void removeAtIndexFromTaskMockData(int index) {
    taskMockData.removeAt(index);
  }

  void updateTaskMockDataAtIndex(
    int index,
    TaskDataStruct Function(TaskDataStruct) updateFn,
  ) {
    taskMockData[index] = updateFn(_taskMockData[index]);
  }

  void insertAtIndexInTaskMockData(int index, TaskDataStruct value) {
    taskMockData.insert(index, value);
  }

  String _searchTask = '';
  String get searchTask => _searchTask;
  set searchTask(String value) {
    _searchTask = value;
  }

  String _selectedStatus = 'All';
  String get selectedStatus => _selectedStatus;
  set selectedStatus(String value) {
    _selectedStatus = value;
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
