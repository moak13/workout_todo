import 'package:sqflite_migration_service/sqflite_migration_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../features/features.dart';
import '../services/services.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: SplashView, initial: true),
    AdaptiveRoute(page: WorkOutListView),
    AdaptiveRoute(page: WorkOutView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: DatabaseMigrationService),
    LazySingleton(classType: DatabaseService)
  ],
  logger: StackedLogger(),
)
class AppSetup {}
