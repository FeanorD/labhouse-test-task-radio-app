import 'package:injectable/injectable.dart';

import 'database.dart';

@module
class DatabaseDiModule {
  @lazySingleton
  AppDatabase getDatabase() => AppDatabase();
}