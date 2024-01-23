import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'networking_config.dart';

@module
abstract class NetworkingModule {
  Dio get dioClient => Dio(
    BaseOptions(
      baseUrl: NetworkingConfig.baseApiUrl,
      connectTimeout: NetworkingConfig.defaultConnectTimeout,
    ),
  );


}