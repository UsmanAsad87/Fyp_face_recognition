
import 'package:face_recog_app/utils/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Map<String, String>  _mainHeaders = {
  'Content-type' : 'application/json',
  'Api-Version': 'v1',
  'Accept': 'application/json',
};
Future<bool> testConnection({
  required String ip,
  required String port,
}) async{
  String url = 'http://$ip:$port/test';
  try{
    var response = await http.get(Uri.parse(url));

    if (kDebugMode) {
      print(response.statusCode);
    }

    if (response.statusCode == 200) {
      final msg = jsonDecode(response.body);
      print(msg);

      if (msg['success'] == true) {
        return true;
      } else {
        showToast("Connection Error\nIncorrect IP or Port");
        return false;
      }
    }  else {
      showToast("Connection Error\nIncorrect IP or Port");
      return false;
    }
  }catch(e){
    showToast("Connection Error\nIncorrect IP or Port");
    return false;
  }

}