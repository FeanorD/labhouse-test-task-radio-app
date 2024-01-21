import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/favorite_stations_bloc/favorite_stations_bloc.dart';
import '../models/radio_station_model.dart';

mixin class FavoriteStationsHandlerMixin {
  void toggleFavoriteStation(BuildContext context, RadioStation station) {
    context.read<FavoriteStationsBloc>().add(
        station.isFavorite
            ? FavoriteStationsEvent.removeStation(station.id)
            : FavoriteStationsEvent.addStation(station)
    );
  }

  void removeFavoriteStation(BuildContext context, RadioStation station) {
    context.read<FavoriteStationsBloc>().add(
      FavoriteStationsEvent.removeStation(station.id)
    );
  }
}