import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _userPage = 0;
  int get userPage => _userPage;
  set userPage(int _value) {
    _userPage = _value;
  }

  int _InfPaciente = 0;
  int get InfPaciente => _InfPaciente;
  set InfPaciente(int _value) {
    _InfPaciente = _value;
  }

  int _modeloAnamnese = 0;
  int get modeloAnamnese => _modeloAnamnese;
  set modeloAnamnese(int _value) {
    _modeloAnamnese = _value;
  }

  String _modeloAnamneses = '';
  String get modeloAnamneses => _modeloAnamneses;
  set modeloAnamneses(String _value) {
    _modeloAnamneses = _value;
  }

  final _anexosManager = FutureRequestManager<List<AnexosRow>>();
  Future<List<AnexosRow>> anexos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<AnexosRow>> Function() requestFn,
  }) =>
      _anexosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAnexosCache() => _anexosManager.clear();
  void clearAnexosCacheKey(String? uniqueKey) =>
      _anexosManager.clearRequest(uniqueKey);
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
