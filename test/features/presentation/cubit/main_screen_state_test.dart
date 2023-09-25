import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_state.dart';

void main() {
  group('Main Screen State Test', () {
    test('MainScreenState variable should change when copyWith called', () {
      MainScreenState mainScreenState = const MainScreenState(
        splashColor: Colors.white,
        textColor: Colors.white,
        backgroundColor: Colors.white,
        oldTextColor: Colors.white,
      );

      mainScreenState = mainScreenState.copyWith(backgroundColor: Colors.red);
      expect(mainScreenState.backgroundColor, Colors.red);

      mainScreenState = mainScreenState.copyWith(textColor: Colors.red);
      expect(mainScreenState.textColor, Colors.red);

      mainScreenState = mainScreenState.copyWith(splashColor: Colors.red);
      expect(mainScreenState.splashColor, Colors.red);

      mainScreenState = mainScreenState.copyWith(oldTextColor: Colors.red);
      expect(mainScreenState.oldTextColor, Colors.red);
      expect(mainScreenState.splashColor, Colors.red);
      expect(mainScreenState.textColor, Colors.red);
      expect(mainScreenState.backgroundColor, Colors.red);
    });
  });
}
