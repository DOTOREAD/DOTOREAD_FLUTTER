import 'package:dotoread_app/data/models/mission_model/mission_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';

abstract class MissionRepository {
  Future<ApiResult> getMission();
  Future<ApiResult> createMission(MissionModel missionModel);
  Future<ApiResult> deleteMission(MissionModel missionModel);
  Future<ApiResult> updateMission(
      int missionId, Map<String, dynamic> updatedFields);
}
