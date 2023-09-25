import 'dart:math';

import 'package:flutter/material.dart';

/// Class to handle generation random color
///
/// This class contains variable and method that used in generating
/// background color, splash color, and text color
class RandomColor {
  static const _luminanceMargin = 0.5;

  /// Color used in background page of main screen
  Color backgroundColor = Colors.transparent;

  /// Color used in splash parameter when user tap any area on main screen
  Color splashColor = Colors.transparent;

  final List<Color> _allAvailableColor = [];

  /// This getter will generate random color
  ///
  /// This is will generate random color based on Primary Color
  /// This getter also remove used color to prevent duplicate result random
  Color get _getRandomColor {
    final randomNumber = Random().nextInt(_allAvailableColor.length);
    final randomColor = _allAvailableColor[randomNumber];

    _allAvailableColor.removeAt(randomNumber);

    if (backgroundColor != Colors.transparent) {
      _allAvailableColor.add(backgroundColor);
    }

    return randomColor;
  }

  /// Function used to get text color based on current background color
  ///
  /// This is only return black and white color.
  /// If [backgroundColor] luminance is more than [_luminanceMargin],
  /// this function will return black color, otherwise it will retun white color
  Color get textColor {
    final luminance = backgroundColor.computeLuminance();

    return luminance > _luminanceMargin ? Colors.black : Colors.white;
  }

  /// Function to set background color and splash color when class initialized
  ///
  /// This function will set [backgroundColor] and [splashColor]
  /// based on [_getRandomColor] getter.
  /// This function set both variable to make color transition smoother
  RandomColor() {
    _allAvailableColor.addAll(Colors.primaries);
    backgroundColor = _getRandomColor;
    splashColor = _getRandomColor;
  }

  /// Function to set new background color and splash color
  ///
  /// This function will set [backgroundColor] based on [splashColor]
  /// and [splashColor] based on [_getRandomColor] getter.
  /// This function set both variable to make color transition smoother
  void generateNewRandomColor() {
    backgroundColor = splashColor;
    splashColor = _getRandomColor;
  }
}
