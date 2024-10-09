import 'package:dotoread_app/core/constants/string_constant.dart';
import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/providers/network/model/network_exception.dart';
import 'package:dotoread_app/data/providers/network/model/network_model.dart';
import 'package:dotoread_app/data/providers/network/model/network_parameters.dart';
import 'package:dotoread_app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final Network network;
  AuthRepositoryImpl(this.network);

  @override
  Future<ApiResult> getAuth() async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: const NetworkModel.get(
              networkParameter: NetworkParameter(url: baseUrl + loginUrl)));
    } catch (exception) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownException());
    }
    return apiResult;
  }
}
