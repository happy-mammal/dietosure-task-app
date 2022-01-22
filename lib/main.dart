import 'package:dietosure_task_app/screens/home_screen.dart';
import 'package:dietosure_task_app/screens/login_screen.dart';
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
        home: AppScreens(),
      ),
    );
  }
}

class AppScreens extends StatefulWidget {
  const AppScreens({Key? key}) : super(key: key);

  @override
  _AppScreensState createState() => _AppScreensState();
}

class _AppScreensState extends State<AppScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                ),
                child: const Text("VIEW LOGIN SCREEN"),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                ),
                child: const Text("VIEW HOME SCREEN"),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const RecentScreen(),
                  ),
                ),
                child: const Text("VIEW RECENT SCREEN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
