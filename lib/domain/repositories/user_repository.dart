import 'package:dotoread_app/data/models/user_model.dart';
import 'package:dotoread_app/data/providers/network/model/api_results.dart';

abstract class UserRepository {
  Future<ApiResult> getUser();
  Future<ApiResult> createUser(UserModel userModel);
  Future<ApiResult> deleteUser(UserModel userModel);
  Future<ApiResult> updateUser(UserModel userModel);
}
