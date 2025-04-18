import 'package:flutter/material.dart';
import 'package:todolist/constant/string.dart';
import 'package:todolist/router/generate_route.dart';

void main() {
  runApp(MyApp(
    approuter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter approuter;
  const MyApp({super.key, required this.approuter});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: approuter.generateRoute,
      initialRoute: NavigatorRouter.mypage,
    );
  }
}
