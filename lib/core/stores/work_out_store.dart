import 'package:sqflite/sqflite.dart';

import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../services/services.dart';
import '../models/models.dart';

const String _workOutTable = 'workout';

class WorkOutStore {
  final _databaseService = locator<DatabaseService>();
  final _log = getLogger('WorkOutStore');

  Stream<List<WorkOutModel>> getStreamedWorkOuts() async* {
    _log.i('streaming workouts');
    List<Map<String, dynamic>> workoutResults =
        await _databaseService.database!.query(_workOutTable);
    yield workoutResults.map((e) => WorkOutModel.fromJson(e)).toList();
  }

  Future<void> addWorkOut({WorkOutModel? workout}) async {
    if (workout == null) {
      _log.e('workout data not found');
      return;
    }
    _log.i('adding workout');
    await _databaseService.database!.insert(
      _workOutTable,
      workout.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateWorkOut({WorkOutModel? workout}) async {
    if (workout == null) {
      _log.e('workout data not found');
      return;
    }
    _log.i('updating workout');
    await _databaseService.database!.update(
      _workOutTable,
      workout.toJson(),
      where: "id = ?",
      whereArgs: [workout.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> removeWorkOut({WorkOutModel? workout}) async {
    if (workout == null) {
      _log.e('workout data not found');
      return;
    }
    _log.i('removing workout');
    await _databaseService.database!.delete(
      _workOutTable,
      where: "id = ?",
      whereArgs: [workout.id],
    );
  }
}
