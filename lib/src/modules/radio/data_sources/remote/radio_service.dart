import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/radio_station_model.dart';

part 'radio_service.g.dart';

@lazySingleton
@RestApi()
abstract interface class RadioService {
  @GET('/stations')
  Future<List<RadioStation>> getRadioStations({
    @Query('limit') int limit = 20,
    @Query('offset') int offset = 0,
    @Query('hidebroken') bool hideBroken = true, // Whether to include broken stations in the response list or not
  });

  @factoryMethod
  factory RadioService(Dio dio) = _RadioService;
}