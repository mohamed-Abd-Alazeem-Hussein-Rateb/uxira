import 'package:flutter/material.dart';

extension SizeHelper on BuildContext {
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  double get ScreenWideth => isLandscape
      ? MediaQuery.of(this).size.height
      : MediaQuery.of(this).size.width;
  double get ScreenHeight => isLandscape
      ? MediaQuery.of(this).size.width
      : MediaQuery.of(this).size.height;
}
