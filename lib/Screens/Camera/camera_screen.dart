import 'dart:async';
import 'package:face_recog_app/Screens/Camera/camera_viewer.dart';
import 'package:face_recog_app/Screens/Camera/capture_button.dart';
import 'package:face_recog_app/Screens/Camera/top_image_viewer.dart';
import 'package:face_recog_app/controller/scan_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final ScanController controller = Get.find();
  //Timer? mytimer=Timer().;
  @override
  void initState() {
    // Timer mytimer = Timer.periodic(Duration(seconds: 5), (timer) {
    //   controller.capture();
    //   if(closed){
    //     timer.cancel();
    //   }
    // });
    super.initState();
  }

  bool closed = false;

  Timer? timer;

  startTimer() async {
    setState(() {
      closed = false;
    });
    timer = Timer.periodic(const Duration(milliseconds: 2000 ), (timer) {
      controller.capture();
      if (closed) {
        cancelTimer();
      }
    });
  }

  //
  cancelTimer() {
    timer?.cancel();
  }
  Future<bool> _onWillPop() async {
    controller.closeCamera();
    setState(() {
      closed=true;
    });
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            CameraViewer(),
            CaptureButton(startTimer),
            TopImageViewer(),
            // Positioned(
            //     left: 20,
            //     top: 200,
            //     child: closed
            //         ? Text(
            //             "usman",
            //             style: (TextStyle(color: Colors.blue)),
            //           )
            //         : Text("closed")),
            Positioned(
                right: 20,
                bottom: 30,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        closed = true;
                      });
                    },
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                      size: 40,
                    ))),
            Positioned(
                left: 20,
                bottom: 25,
                child: IconButton(
                    onPressed: () {
                      controller.closeCamera();
                      setState(() {
                        closed = true;
                      });
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 30,
                    ))),
          ],
        ),
      ),
    );
  }
}
