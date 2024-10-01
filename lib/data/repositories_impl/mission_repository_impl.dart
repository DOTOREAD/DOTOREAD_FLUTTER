import 'package:dotoread_app/data/models/Mission_model.dart';
import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/domain/repositories/mission_repository.dart';

class MissionRepositoryImpl extends MissionRepository {
  MissionRepositoryImpl(Network find);

  @override
  Future<ApiResult> createMission(MissionModel missionModel) {
    // TODO: implement createMission
    throw UnimplementedError();
  }

  @override
  Future<ApiResult> deleteMission(MissionModel missionModel) {
    // TODO: implement deleteMission
    throw UnimplementedError();
  }

  @override
  Future<ApiResult> getMission() {
    // TODO: implement getMission
    throw UnimplementedError();
  }

  @override
  Future<ApiResult> updateMission(
      int missionId, Map<String, dynamic> updatedFields) {
    // TODO: implement updateMission
    throw UnimplementedError();
  }
}
