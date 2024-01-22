// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:just_audio/just_audio.dart' as _i4;
import 'package:labhouse_test_task_radio_app/src/config/networking/networking_di_module.dart'
    as _i16;
import 'package:labhouse_test_task_radio_app/src/core/core_di_module.dart'
    as _i15;
import 'package:labhouse_test_task_radio_app/src/core/database/database.dart'
    as _i3;
import 'package:labhouse_test_task_radio_app/src/core/database/database_di_module.dart'
    as _i14;
import 'package:labhouse_test_task_radio_app/src/modules/radio/blocs/favorite_stations_bloc/favorite_stations_bloc.dart'
    as _i13;
import 'package:labhouse_test_task_radio_app/src/modules/radio/blocs/radio_stations_bloc/radio_stations_bloc.dart'
    as _i12;
import 'package:labhouse_test_task_radio_app/src/modules/radio/blocs/rasio_player_cubit/radio_player_cubit.dart'
    as _i8;
import 'package:labhouse_test_task_radio_app/src/modules/radio/blocs/selected_station_cubit/selected_station_cubit.dart'
    as _i10;
import 'package:labhouse_test_task_radio_app/src/modules/radio/data_sources/local/radio_local_data_source.dart'
    as _i6;
import 'package:labhouse_test_task_radio_app/src/modules/radio/data_sources/remote/radio_service.dart'
    as _i9;
import 'package:labhouse_test_task_radio_app/src/modules/radio/repositories/radio_repository.dart'
    as _i11;
import 'package:labhouse_test_task_radio_app/src/modules/radio/utils/radio_player/radio_player.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final databaseDiModule = _$DatabaseDiModule();
    final coreModule = _$CoreModule();
    final networkingModule = _$NetworkingModule();
    gh.lazySingleton<_i3.AppDatabase>(() => databaseDiModule.getDatabase());
    gh.lazySingleton<_i4.AudioPlayer>(() => coreModule.getAudioPlayer());
    gh.factory<_i5.Dio>(() => networkingModule.dioClient);
    gh.lazySingleton<_i6.RadioLocalDataSource>(
        () => _i6.RadioLocalDataSource(gh<_i3.AppDatabase>()));
    gh.lazySingleton<_i7.RadioPlayer>(
      () => _i7.RadioPlayer(gh<_i4.AudioPlayer>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i8.RadioPlayerCubit>(
        () => _i8.RadioPlayerCubit(gh<_i7.RadioPlayer>()));
    gh.lazySingleton<_i9.RadioService>(() => _i9.RadioService(gh<_i5.Dio>()));
    gh.lazySingleton<_i10.SelectedStationCubit>(
        () => _i10.SelectedStationCubit());
    gh.lazySingleton<_i11.RadioRepository>(() => _i11.RadioRepository(
          gh<_i9.RadioService>(),
          gh<_i6.RadioLocalDataSource>(),
        ));
    gh.factory<_i12.RadioStationsBloc>(
        () => _i12.RadioStationsBloc(gh<_i11.RadioRepository>()));
    gh.factory<_i13.FavoriteStationsBloc>(
        () => _i13.FavoriteStationsBloc(gh<_i11.RadioRepository>()));
    return this;
  }
}

class _$DatabaseDiModule extends _i14.DatabaseDiModule {}

class _$CoreModule extends _i15.CoreModule {}

class _$NetworkingModule extends _i16.NetworkingModule {}
