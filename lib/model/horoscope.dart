import 'package:flutter/material.dart';

class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeBPhoto;
  final String _horoscopeSPhoto;
  get horoscopeName => this._horoscopeName;

  get horoscopeDate => this._horoscopeDate;

  get horoscopeDetail => this._horoscopeDetail;

  get horoscopeBPhoto => this._horoscopeBPhoto;

  get horoscopeSPhoto => this._horoscopeSPhoto;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeSPhoto, this._horoscopeBPhoto);

  @override
  String toString() {
    return "$_horoscopeName - $_horoscopeBPhoto";
  }
}
