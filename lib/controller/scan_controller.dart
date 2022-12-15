import 'dart:convert';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:face_recog_app/resources/SendApiRequest.dart';
import 'package:face_recog_app/resources/image_converter.dart';
import 'package:get/get.dart';
import 'package:image/image.dart' as img;
import 'package:image_gallery_saver/image_gallery_saver.dart';

import '../main.dart';

class ScanController extends GetxController {
  late List<CameraDescription> _cameras;
  late CameraController _cameraController;
  final RxBool _isInitialized = RxBool(false);
  final RxBool _isRearCameraSelected = RxBool(false);
  //bool _isRearCameraSelected = true;
  CameraImage? _cameraImage;
  final RxList<Uint8List> _imageList = RxList([]);

  RxString ip=''.obs;
  RxString port=''.obs;
  RxString location=''.obs;

  setIp(String ipadd){
    ip=RxString(ipadd);
    update();
  }
  setPort(String portNo){
    port=RxString(portNo);
    update();
  }
  setLocation(String loc){
    location=RxString(loc);
    update();
  }


  CameraController get cameraController => _cameraController;
  bool get isInitialized => _isInitialized.value;
  bool get isRearCameraSelected => _isRearCameraSelected.value;
  List<Uint8List> get imageList => _imageList;

  @override
  void dispose() {
    _isInitialized.value = false;
    _cameraController.dispose();
    super.dispose();
  }
  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = _cameraController;

    final CameraController cameraController = CameraController(
      cameraDescription,
        ResolutionPreset.veryHigh,
        imageFormatGroup: ImageFormatGroup.bgra8888
    );

    await previousCameraController?.dispose();


    _cameraController = cameraController;
    _cameraController.initialize().then((value) {
      _isInitialized.value = true;
      _cameraController.startImageStream((image) => _cameraImage = image);
      _isInitialized.refresh();
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }
  Future<void> initCamera() async {
    //_cameras = await availableCameras();
   // _cameraController = CameraController(_cameras[0], ResolutionPreset.veryHigh,
    _cameraController = CameraController(cameras[0], ResolutionPreset.veryHigh,
        imageFormatGroup: ImageFormatGroup.bgra8888);
    _cameraController.initialize().then((value) {
      _isInitialized.value = true;
      _cameraController.startImageStream((image) => _cameraImage = image);
      _isInitialized.refresh();
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  void onInit() {
    //initCamera();
    super.onInit();
  }
  void startCamera(){
    initCamera();
  }
  void closeCamera(){
    _isInitialized.value = false;
    _cameraController.dispose();
  }
  void initialseFalse(){
    _isInitialized.value = false;
  }

  void capture() async {
    // initCamera();
    if (_cameraImage != null) {
      // using image package but false result
      // img.Image image = img.Image.fromBytes(
      //     _cameraImage!.width, _cameraImage!.height,
      //     _cameraImage!.planes[0].bytes, format: img.Format.bgra);
      // Uint8List list = Uint8List.fromList(img.encodeJpg(image)); //getting jpeg

      // using function but rotated image
      // List<int> image = await convertImagetoPng(_cameraImage!);
      // Uint8List list = Uint8List.fromList(image);

      List<int> image = await  convertYUV420toImageColor(_cameraImage!);
      Uint8List list = Uint8List.fromList(image);

      //final result = await ImageGallerySaver.saveImage(list);
      // print(result);

      String imgBase64=uint8ListTob64(list);
     // print(list.length);
      print("image captured");
      findFace(modelName: 'ArcFace', img: imgBase64, location: location.string, ip: ip.string, port: port.string);

      // _imageList.add(list);
      if(_imageList.length>6){
        _imageList.removeLast();
        _imageList.insert(0,list);
      }else{
        _imageList.insert(0,list);
      }
      print("Length :  "+ _imageList.length.toString());
      _imageList.refresh();
    }
  }

  String uint8ListTob64(Uint8List uint8list) {
    String base64String = base64Encode(uint8list);
    String header = "data:image/jpeg;base64,";
    return header + base64String;
  }
}
