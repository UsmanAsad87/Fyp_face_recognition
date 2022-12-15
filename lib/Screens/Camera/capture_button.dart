import 'package:face_recog_app/controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class CaptureButton extends GetView<ScanController> {
  CaptureButton( this.onTap, {Key? key}) : super(key: key);
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      child: GestureDetector(
        onTap:onTap,//()  => controller.capture(),
        child: Container(
          height: 80.h,
          width: 80.w,
          padding:  EdgeInsets.all(10.h),
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(color: Colors.white, width: 5.w)
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(Icons.camera, size: 40.h,color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }
}
