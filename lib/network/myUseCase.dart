

import 'package:dio/dio.dart';
import 'package:flutter_app/network/myClient.dart';

class MyUseCase {
  late Dio _dio;
  late MyClient _myClient;

  MyUseCase() {
    _dio = Dio();
    _dio.options.headers['Content-Type'] = 'application/json;charset=utf-8';
    _myClient = MyClient(_dio);
  }

  Future<List<int>> getTopNewsId() async {
    return await _myClient.getTopNewsId();
  }
}