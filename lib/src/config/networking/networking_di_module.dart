import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:labhouse_test_task_radio_app/src/config/networking/networking_config.dart';

@module
abstract class NetworkingModule {
  @preResolve
  Dio get dioClient => Dio(
    BaseOptions(
      baseUrl: NetworkingConfig.baseApiUrl,
      connectTimeout: NetworkingConfig.defaultConnectTimeout,
    ),
  );


}