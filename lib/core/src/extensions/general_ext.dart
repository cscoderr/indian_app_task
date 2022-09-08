import 'package:flutter/material.dart';

extension GeneralExt on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}
