import 'package:face_recog_app/Screens/Camera/camera_screen.dart';
import 'package:face_recog_app/controller/scan_controller.dart';
import 'package:face_recog_app/utils/validator.dart';
import 'package:face_recog_app/widgets/custom_button.dart';
import 'package:face_recog_app/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _ipController = TextEditingController();
  final TextEditingController _portController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  GlobalKey<FormState> loginInKey = GlobalKey<FormState>();
  final ScanController controller = Get.find();
  bool _isLoading = false;

  @override
  void dispose() {
    _ipController.dispose();
    _portController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()=>FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFF122960),
        body: Stack(
          children: [
            Positioned(
              top: 30.h,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 280.h,
                //alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/logo.jpg',
                        ))),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: (size.height * 0.33),
              child: Container(
                height: size.height - (size.height * 0.33),
                padding: EdgeInsets.only(left: 40.w, right: 40.w),
                decoration: BoxDecoration(
                  color:MediaQuery.of(context).platformBrightness == Brightness.light
                      ?const Color(0xFFE1E1E1):Colors.grey.shade500,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.r)),
                ),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        Form(
                          key: loginInKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('IP address',
                                  style: GoogleFonts.poppins(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,)),
                              CustomTextField(
                                  validatorFn: ipValidator,
                                  obscure: false,
                                  inputType: TextInputType.phone,
                                  controller: _ipController,
                                  hintText: '192.168.0.107',
                                  onChanged: (val) {},
                                  onFieldSubmitted: (val) {}),
                              Text('Port No',
                                  style: GoogleFonts.poppins(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,)),
                              CustomTextField(
                                  validatorFn: portValidator,
                                  obscure: false,
                                  inputType: TextInputType.phone,
                                  controller: _portController,
                                  hintText: '5000',
                                  onChanged: (val) {},
                                  onFieldSubmitted: (val) {}),

                              Text('Location',
                                  style: GoogleFonts.poppins(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,)),
                              CustomTextField(
                                validatorFn: uNameValidator,
                                  obscure: false,
                                  controller: _locationController,
                                  hintText: 'ICV lab',
                                  onChanged: (val) {},
                                  onFieldSubmitted: (val) {}),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                            child: CustomButton(
                               // isLoading: _isLoading,
                                onPressed: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if(loginInKey.currentState!.validate()){
                                    controller.setIp(_ipController.text);
                                    controller.setPort(_portController.text);
                                    controller.setLocation(_locationController.text);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => CameraScreen()));
                                  }

                                },
                                buttonText: 'Start')),
                        SizedBox(
                          height: 190.h,
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
