// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:labhouse_test_task_radio_app/src/config/networking/networking_di_module.dart'
    as _i8;
import 'package:labhouse_test_task_radio_app/src/modules/radio/blocs/radio_stations_bloc/radio_stations_bloc.dart'
    as _i7;
import 'package:labhouse_test_task_radio_app/src/modules/radio/data_sources/local/radio_local_data_source.dart'
    as _i4;
import 'package:labhouse_test_task_radio_app/src/modules/radio/data_sources/remote/radio_service.dart'
    as _i5;
import 'package:labhouse_test_task_radio_app/src/modules/radio/repositories/radio_repository.dart'
    as _i6;

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
    final networkingModule = _$NetworkingModule();
    gh.factory<_i3.Dio>(() => networkingModule.dioClient);
    gh.lazySingleton<_i4.RadioLocalDataSource>(
        () => _i4.RadioLocalDataSource());
    gh.lazySingleton<_i5.RadioService>(() => _i5.RadioService(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.RadioRepository>(() => _i6.RadioRepository(
          gh<_i5.RadioService>(),
          gh<_i4.RadioLocalDataSource>(),
        ));
    gh.factory<_i7.RadioStationsBloc>(
        () => _i7.RadioStationsBloc(gh<_i6.RadioRepository>()));
    return this;
  }
}

class _$NetworkingModule extends _i8.NetworkingModule {}
