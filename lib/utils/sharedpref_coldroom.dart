// ignore_for_file: non_constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefColdRoom {
  static SharedPreferences? _sharedPref;
  init() async {
    _sharedPref ??= await SharedPreferences.getInstance();
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
  String ProductFamily = "ProductFamily";
  String ProductProduct = "ProductProduct";
  String StorageDensity = "StorageDensity";
  String Quantity = "Quantity";
  String DailyLoadPerc = "DailyLoadPerc";
  String DailyLoading = "DailyLoading";
  String ProductIncTemp = "ProductIncTemp";
  String ProductFinalTemp = "ProductFinalTemp";
  String CoolingTime = "CoolingTime";

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

  String get productFamily => _sharedPref!.getString(ProductFamily) ?? "";
  String get productProduct => _sharedPref!.getString(ProductProduct) ?? "";
  double get storageDensity => _sharedPref!.getDouble(StorageDensity) ?? 0.0;
  double get quantity => _sharedPref!.getDouble(Quantity) ?? 0.0;
  double get dailyLoadPerc => _sharedPref!.getDouble(DailyLoadPerc) ?? 0.0;
  double get dailyLoading => _sharedPref!.getDouble(DailyLoading) ?? 0.0;
  double get productIncTemp => _sharedPref!.getDouble(ProductIncTemp) ?? 0.0;
  double get productFinalTemp => _sharedPref!.getDouble(ProductFinalTemp) ?? 0.0;
  double get coolingTime => _sharedPref!.getDouble(CoolingTime) ?? 0.0;

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

  setProductFamily(String value) {
    _sharedPref!.setString(ProductFamily, value);
  }

  setProductProduct(String value) {
    _sharedPref!.setString(ProductProduct, value);
  }

  setStorageDensity(double value) {
    _sharedPref!.setDouble(StorageDensity, value);
  }

  setQuantity(double value) {
    _sharedPref!.setDouble(Quantity, value);
  }

  setDailyLoadPerc(double value) {
    _sharedPref!.setDouble(DailyLoadPerc, value);
  }

  setDailyLoading(double value) {
    _sharedPref!.setDouble(DailyLoading, value);
  }

  setProductIncTemp(double value) {
    _sharedPref!.setDouble(ProductIncTemp, value);
  }

  setProductFinalTemp(double value) {
    _sharedPref!.setDouble(ProductFinalTemp, value);
  }

  setCoolingTime(double value) {
    _sharedPref!.setDouble(CoolingTime, value);
  }
}

final sharedPrefsColdRoom = SharedPrefColdRoom();
