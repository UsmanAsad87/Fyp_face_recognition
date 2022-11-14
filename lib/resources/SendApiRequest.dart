
import 'package:face_recog_app/utils/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Map<String, String>  _mainHeaders = {
  'Content-type' : 'application/json',
  'Api-Version': 'v1',
  'Accept': 'application/json',
};
Future<bool> findFace({
  required String modelName ,
  required String img,
  required String location,
  required String ip,
  required String port,
})async{
  Map<String, dynamic> body = {
    "model_name": "${modelName}",
    "location": "${location}",
    "img": "${img}",
  };
  String url = 'http://$ip:$port/findface';
  print(url);
  print(body);
  try{
    var response = await http.post(
      Uri.parse(url),
      body: json.encode(body),
      headers: _mainHeaders,
    );

    if (kDebugMode) {
      print(response.statusCode);
    }

    if (response.statusCode == 200) {
      final msg = jsonDecode(response.body);
      print(msg);

      if (msg['face_found'] == true) {
        print('face_found');
        showToast("Face is in database. Entry is added");
        return true;
      } else {
        final msg = jsonDecode(response.body);
        print('Face not found');
        showToast("Face is added in database. Entry is added");
        return false;
      }
    }  else {
      final msg = jsonDecode(response.body);
      showToast(response.statusCode.toString() +'\n'+ msg);
      return false;
    }
  }catch(e){
    print(e.toString());
    return false;
  }

}