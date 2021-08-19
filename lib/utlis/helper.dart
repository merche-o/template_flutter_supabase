import 'dart:math';

import 'package:flutter/material.dart';

String randomString(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  final Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

const double kDefaultPaddin = 20.0;
const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
