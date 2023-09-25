import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/cubit/main_screen_cubit.dart';
import 'package:solid_flutter_test/features/main_screen/presentation/pages/main_screen_page.dart';

/// Root app
class MyApp extends StatelessWidget {
  /// Constructor to initialize this class
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => MainScreenCubit(),
        child: const MainScreenPage(),
      ),
    );
  }
}
