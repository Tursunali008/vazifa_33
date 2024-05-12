import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vazifa_33/descktop.dart';
import 'package:vazifa_33/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    double sceenWidth = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
        designSize:
            sceenWidth > 800 ? const Size(1440, 900) : const Size(414, 896),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: Colors.white,
              body: sceenWidth > 800
                  ? const DesktopScreen()
                  : const MobilScreen(),
            ),
          );
        });
  }
}
