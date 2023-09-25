import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_cubit.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_state.dart';

void main() {
  final MainScreenCubit mainScreenCubit = MainScreenCubit();
  group('Main Screen Cubit Test', () {
    blocTest(
      'Emit new random color',
      build: () => mainScreenCubit,
      act: (bloc) => bloc..randomizeColor(),
      expect: () => [
        MainScreenState(
          splashColor: mainScreenCubit.state.splashColor,
          backgroundColor: mainScreenCubit.state.backgroundColor,
          textColor: mainScreenCubit.state.textColor,
          oldTextColor: mainScreenCubit.state.oldTextColor,
        ),
      ],
    );
  });
}
