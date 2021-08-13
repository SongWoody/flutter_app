

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'myClient.g.dart';

@RestApi(baseUrl: 'https://hacker-news.firebaseio.com/v0')
abstract class MyClient {
  factory MyClient(Dio dio, {String baseUrl}) = _MyClient;

  @GET('/topstories.json')
  Future<List<int>> getTopNewsId();
}