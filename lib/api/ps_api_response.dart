import 'dart:convert';
import 'package:http/http.dart';

class PsAPIResponse {
  int code;
  String body;
  String errorMessage;

  PsAPIResponse(Response response) {
    code = response.statusCode;
    if (isSuccessful()) {
      body = response.body;
      errorMessage = '';
    } else {
      body = null;
      final dynamic map = json.decode(response.body);
      errorMessage = map['message'];
    }
  }

  bool isSuccessful() => code >= 200 && code < 300;
}
