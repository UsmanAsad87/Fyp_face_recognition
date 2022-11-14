
import 'package:face_recog_app/Screens/Camera/camera_screen.dart';
import 'package:face_recog_app/Screens/home/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class WelcomeScreen extends StatefulWidget {
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  initState() {
    super.initState();
    _navigateToLogin();
    _controller = AnimationController(
      duration: const Duration(
        milliseconds:2500 ,
      ),
      vsync: this,
      value: 0.3,
    )..forward();
    _animation = CurvedAnimation(
      parent: _controller!,
      curve: Curves.bounceIn,
    );
  }
  _navigateToLogin() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (_) =>  CameraScreen()));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  dispose() {
    _controller!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaleTransition(
        scale: _animation!,
        alignment: Alignment.center,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              'Face Recognition\n and\n Tracking',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w600,),
            ),
          ),
        ),
      ),
    );
  }
}
