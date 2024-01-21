import 'package:injectable/injectable.dart';

import 'database.dart';

@module
abstract class DatabaseDiModule {
  @lazySingleton
  AppDatabase getDatabase() => AppDatabase();
}