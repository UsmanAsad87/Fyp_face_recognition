
import 'package:face_recog_app/Screens/welcome/welcome_screen.dart';
import 'package:face_recog_app/bindings/global_bindings.dart';
import 'package:face_recog_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialBinding: GlobalBindings(),
            debugShowCheckedModeBanner: false,
            title: 'FaceRecog',
            theme: lightThemeData(context),
            darkTheme: darkThemeData(context),
            home: WelcomeScreen(),
            // token != null?  MainMenu() : LoginScreen()// WelcomeScreen(),,
          );
        },
        child: WelcomeScreen()// WelcomeScreen(),
    );
  }

}


