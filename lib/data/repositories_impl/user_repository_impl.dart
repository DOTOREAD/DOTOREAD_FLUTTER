import 'package:dotoread_app/core/constants/string_constant.dart';
import 'package:dotoread_app/data/models/user_model/user_model.dart';
import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/providers/network/model/network_exception.dart';
import 'package:dotoread_app/data/providers/network/model/network_model.dart';
import 'package:dotoread_app/data/providers/network/model/network_parameters.dart';
import 'package:dotoread_app/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final Network network;
  UserRepositoryImpl(this.network);
  @override
  Future<ApiResult> createUser(UserModel userModel) async {
    ApiResult apiResult;

    try {
      final body = userModel.toJson();

      apiResult = await network.callApi(
        method: NetworkModel.post(
          networkParameter: NetworkParameter(
              url: baseUrl + userUrl,
              requestBody: body,
              header: {'Content-Type': 'application/json'}),
        ),
      );
    } catch (exception) {
      apiResult = const ApiResult.failure(
        networkException: NetworkException.unknownException(),
      );
    }
    return apiResult;
  }

  @override
  Future<ApiResult> deleteUser(UserModel userModel) async {
    ApiResult apiResult;

    try {
      apiResult = await network.callApi(
        method: NetworkModel.delete(
          networkParameter: NetworkParameter(
            url: '$baseUrl$userUrl/${userModel.id}',
          ),
        ),
      );
    } catch (exception) {
      apiResult = const ApiResult.failure(
        networkException: NetworkException.unknownException(),
      );
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getUser() async {
    ApiResult apiResult;

    try {
      apiResult = await network.callApi(
          method: const NetworkModel.get(
              networkParameter: NetworkParameter(url: baseUrl + userUrl)));
    } catch (exception) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownException());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> updateUser(UserModel userModel) {
    throw UnimplementedError();
  }
}
