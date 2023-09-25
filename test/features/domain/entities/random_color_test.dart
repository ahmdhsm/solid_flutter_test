import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_flutter_test/features/main_screen/domain/entities/random_color.dart';

void main() {
  const int loop = 100;
  group('Random Color Generation Test', () {
    test('text color getter should return oposite background color', () {
      final RandomColor randomColor = RandomColor();

      const luminanceMargin = 0.5;

      for (var looping = 0; looping < loop; looping++) {
        randomColor.generateNewRandomColor();

        final luminance = randomColor.backgroundColor.computeLuminance();

        final Color luminanceColor =
            luminance > luminanceMargin ? Colors.black : Colors.white;

        expect(
          randomColor.textColor,
          luminanceColor,
        );
      }
    });

    test('splash color always used in backgound color on next random', () {
      final RandomColor randomColor = RandomColor();

      Color backgroundColor = Colors.transparent;
      for (var looping = 0; looping < loop; looping++) {
        randomColor.generateNewRandomColor();

        backgroundColor = randomColor.splashColor;
        expect(
          randomColor.splashColor,
          backgroundColor,
        );
      }
    });
  });
}
