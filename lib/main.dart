import 'package:dietosure_task_app/screens/home_screen.dart';
import 'package:dietosure_task_app/screens/recent_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RecentScreen(),
      ),
    );
  }
}
