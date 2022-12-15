import 'package:face_recog_app/Screens/Camera/camera_screen.dart';
import 'package:face_recog_app/controller/scan_controller.dart';
import 'package:face_recog_app/resources/test_connection.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0.h),
                child: Container(
                  width: double.infinity,
                  height: 280.h,
                  //alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    color: const Color(0xFF122960),
                      image: DecorationImage(
                        alignment: Alignment.center,
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'assets/logo.jpg',
                          ))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.w, right: 40.w),
                decoration: BoxDecoration(
                  color:MediaQuery.of(context).platformBrightness == Brightness.light
                      ?const Color(0xFFE1E1E1):Colors.grey.shade500,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.r)),
                ),
                child:  Column(
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
                                isLoading: _isLoading,
                                onPressed: () async {

                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if(loginInKey.currentState!.validate()){
                                    setState(() {
                                      _isLoading=true;
                                    });
                                    controller.setIp(_ipController.text);
                                    controller.setPort(_portController.text);
                                    controller.setLocation(_locationController.text);
                                    bool conOk= await testConnection(ip: _ipController.text, port: _portController.text);
                                    setState(() {
                                      _isLoading=false;
                                    });

                                    //Todo: need to remove it
                                    conOk=true;

                                    if(conOk){
                                      controller.startCamera();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => CameraScreen()));
                                    }

                                  }

                                },
                                buttonText: 'Start')),
                        SizedBox(
                          height: 190.h,
                        ),
                      ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
