import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_cubit.dart';

/// Main screen page statefull widget class
class MainScreenPage extends StatefulWidget {
  /// [MainScreenPage] constructor
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  static const double fontSize = 30;

  final mainScreenCubit = MainScreenCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: mainScreenCubit,
        builder: (context, state) {
          return InkWell(
            splashColor: mainScreenCubit.state.splashColor,
            onTap: mainScreenCubit.randomizeColor,
            child: Ink(
              color: mainScreenCubit.state.backgroundColor,
              child: Center(
                child: TweenAnimationBuilder(
                  tween: ColorTween(
                    begin: mainScreenCubit.state.oldTextColor,
                    end: mainScreenCubit.state.textColor,
                  ),
                  duration: const Duration(seconds: 1),
                  builder: (context, color, widget) {
                    return Text(
                      'Hello there',
                      style: TextStyle(
                        fontSize: fontSize,
                        color: color,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
