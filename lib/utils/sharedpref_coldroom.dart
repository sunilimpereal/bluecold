// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'dart:ffi';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefColdRoom {
  static SharedPreferences? _sharedPref;
  init() async {
    if (_sharedPref == null) {
      _sharedPref = await SharedPreferences.getInstance();
    }
  }

  // name values
  String ExternalWidth = "externalWidth";
  String ExternalLength = "externalLength";
  String ExternalHeight = "externalHeight";
  String RoomLocation = "roomLocation";
  String RoomTemperature = "roomTemperature";
  String RoomRH = "roomRH";
  String InsulationThickness = "insulationThickness";
  String Insulation = "insulation";
  String AmbTemp = "ambTemp";
  String AmbRH = "ambRH";

  //getters
  double get externalLength => _sharedPref!.getDouble(ExternalLength) ?? 0.0;
  double get externalWidth => _sharedPref!.getDouble(ExternalWidth) ?? 0.0;
  double get externalHeight => _sharedPref!.getDouble(ExternalHeight) ?? 0.0;
  String get roomLocation => _sharedPref!.getString(RoomLocation) ?? "";
  double get roomTemperature => _sharedPref!.getDouble(RoomTemperature) ?? 0.0;
  double get roomRH => _sharedPref!.getDouble(RoomRH) ?? 0.0;
  double get insulationThickness => _sharedPref!.getDouble(InsulationThickness) ?? 0.0;
  String get insulation => _sharedPref!.getString(Insulation) ?? "";
  double get ambTemp => _sharedPref!.getDouble(AmbTemp) ?? 0.0;
  String get ambRH => _sharedPref!.getString(AmbRH) ?? "";

  //setters
  setExternalWidth(double value) {
    _sharedPref!.setDouble(ExternalWidth, value);
  }

  setExternalLength(double value) {
    _sharedPref!.setDouble(ExternalLength, value);
  }

  setExternalHeight(double value) {
    _sharedPref!.setDouble(ExternalHeight, value);
  }

  setRoomLocation(String value) {
    _sharedPref!.setString(RoomLocation, value);
  }

  setRoomTemperature(double value) {
    _sharedPref!.setDouble(RoomTemperature, value);
  }

  setRoomRH(String value) {
    _sharedPref!.setString(RoomRH, value);
  }

  setInsulationThickness(double value) {
    _sharedPref!.setDouble(InsulationThickness, value);
  }

  setInsulation(String value) {
    _sharedPref!.setString(Insulation, value);
  }

  setAmbTemp(double value) {
    _sharedPref!.setDouble(AmbTemp, value);
  }

  setAmbRH(String value) {
    _sharedPref!.setString(AmbRH, value);
  }
}

final sharedPrefsColdRoom = SharedPrefColdRoom();
