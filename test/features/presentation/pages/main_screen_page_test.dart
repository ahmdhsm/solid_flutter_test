import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_cubit.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/pages/main_screen_page.dart';

void main() {
  group('Main Screen Page Test', () {
    testWidgets('MainScreenPage', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: BlocProvider(
            create: (_) => MainScreenCubit(),
            child: const MainScreenPage(),
          ),
        ),
      );
      expect(find.text('Hello there'), findsOneWidget);
      await tester.tap(find.byType(InkWell));
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
    });
  });
}
