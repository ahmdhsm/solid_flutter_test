import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Class to handle main screen state
///
/// This class contains variable color which used in main screen
class MainScreenState extends Equatable {
  /// Color which used when user tap main screen page
  final Color splashColor;

  /// Color which used on main screen background
  final Color backgroundColor;

  /// Color which used on main text on main screen page
  final Color textColor;

  /// Color which used on main text to make text animation smooth
  final Color oldTextColor;

  @override
  List<Object?> get props => [
        splashColor,
        backgroundColor,
        textColor,
      ];

  /// Constructor to initialized [MainScreenState] class
  const MainScreenState({
    required this.splashColor,
    required this.backgroundColor,
    required this.textColor,
    required this.oldTextColor,
  });

  /// Method to copy this class with specific variable change
  MainScreenState copyWith({
    Color? splashColor,
    Color? backgroundColor,
    Color? textColor,
    Color? oldTextColor,
  }) =>
      MainScreenState(
        splashColor: splashColor ?? this.splashColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        textColor: textColor ?? this.textColor,
        oldTextColor: oldTextColor ?? this.oldTextColor,
      );
}
