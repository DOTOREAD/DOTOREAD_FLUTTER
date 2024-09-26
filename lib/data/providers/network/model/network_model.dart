import 'package:dotoread_app/data/providers/network/model/network_parameters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_model.freezed.dart';

@freezed
class NetworkModel with _$NetworkModel {
  // post api call
  const factory NetworkModel.post(
      {required NetworkParameter networkParameter}) = _NetworkModelPost;
  // get api call
  const factory NetworkModel.get({required NetworkParameter networkParameter}) =
      _NetworkModelGet;

  // delete api call
  const factory NetworkModel.delete(
      {required NetworkParameter networkParameter}) = _NetworkModelDelete;

  const factory NetworkModel.patch(
      {required NetworkParameter networkParameter}) = _NetworkModelPatch;
}
