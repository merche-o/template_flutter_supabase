import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  Future<void> setItem(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(key, value);
  }

  Future<String?> getItem(String key) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(key);
  }

  Future<void> removeItem(String key) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(key);
  }

  static Future<bool> saveImage(String key, List<int> imageBytes) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String base64Image = base64Encode(imageBytes);
    return prefs.setString(key, base64Image);
  }

  static Future<Image> getImage(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString(key) == null) {
      return Image.asset('assets/images/noavatar.jpeg');
    } else {
      Uint8List bytes = base64Decode(prefs.getString(key)!);
      return Image.memory(bytes);
    }
  }
}
