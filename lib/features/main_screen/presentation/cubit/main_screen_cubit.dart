import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_flutter_test/features/main_screen/domain/entities/random_color.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_state.dart';

/// This class contain main screen cubit to handle state
class MainScreenCubit extends Cubit<MainScreenState> {
  final _randomColor = RandomColor();

  /// Constructor for [MainScreenCubit] to set initial state
  MainScreenCubit()
      : super(
          const MainScreenState(
            splashColor: Colors.white,
            textColor: Colors.white,
            backgroundColor: Colors.white,
            oldTextColor: Colors.white,
          ),
        ) {
    _initialize();
  }

  void _initialize() {
    emit(
      state.copyWith(
        splashColor: _randomColor.splashColor,
        backgroundColor: _randomColor.backgroundColor,
        textColor: _randomColor.textColor,
        oldTextColor: _randomColor.textColor,
      ),
    );
  }

  /// Method used to generate random color
  void randomizeColor() {
    emit(
      state.copyWith(oldTextColor: _randomColor.textColor),
    );
    _randomColor.generateNewRandomColor();
    emit(
      state.copyWith(
        splashColor: _randomColor.splashColor,
        backgroundColor: _randomColor.backgroundColor,
        textColor: _randomColor.textColor,
      ),
    );
  }
}
