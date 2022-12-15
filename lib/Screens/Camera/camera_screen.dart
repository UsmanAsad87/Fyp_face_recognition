import 'dart:async';
import 'package:camera/camera.dart';
import 'package:face_recog_app/Screens/Camera/camera_viewer.dart';
import 'package:face_recog_app/Screens/Camera/capture_button.dart';
import 'package:face_recog_app/Screens/Camera/top_image_viewer.dart';
import 'package:face_recog_app/controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../main.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final ScanController controller = Get.find();
  bool _isRearCameraSelected = true;
  bool isRec = false;
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
      isRec = true;
    });
    timer = Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      controller.capture();
      if (closed) {
        cancelTimer();
      }
    });
  }

  //
  cancelTimer() {
    setState(() {
      isRec = false;
    });
    timer?.cancel();
  }

  Future<bool> _onWillPop() async {
    controller.closeCamera();
    setState(() {
      closed = true;
    });
    return true;
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   final CameraController? cameraController = controller.cameraController;
  //
  //   // App state changed before we got the chance to initialize.
  //   if (cameraController == null || !cameraController.value.isInitialized) {
  //     return;
  //   }
  //
  //   if (state == AppLifecycleState.inactive) {
  //     cameraController.dispose();
  //   } else if (state == AppLifecycleState.paused) {
  //     controller.closeCamera();
  //   }else if (state == AppLifecycleState.resumed) {
  //     controller.onNewCameraSelected(cameraController.description);
  //   }
  // }

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

            if (isRec)
              Positioned(
                  left: 20,
                  top: 170,
                  child: Text(
                    'REC.',
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  )),
            Positioned(
                right: 20,
                bottom: 25,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      closed = true;
                    });
                  },
                  icon: ImageIcon(
                      const AssetImage(
                        'assets/cancel.png',
                      ),
                      size: 20.h,
                      color: Colors.white),
                )),
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
                  icon: ImageIcon(
                      const AssetImage(
                        'assets/back.png',
                      ),
                      size: 20.h,
                      color: Colors.white),
                )),

            Positioned(
                right: 20,
                bottom: 65,
                child: IconButton(
                  onPressed: () {
                    controller.initialseFalse();
                    controller.onNewCameraSelected(
                        cameras[_isRearCameraSelected ? 1 : 0]);
                    setState(() {
                      _isRearCameraSelected = !_isRearCameraSelected;
                    });
                  },
                  icon: ImageIcon(
                      const AssetImage(
                        'assets/switch.png',
                      ),
                      size: 25.h,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
