import 'package:base_ui_flutter/presentation/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'navigation/navigation_app.dart';
import 'navigation/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //ScreenUtilInit para adaptar la app a cualquier pantalla
    return ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            initialRoute: homePage,
            onGenerateRoute: RouteGenerator.generateRoute,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          );
        });
  }
}