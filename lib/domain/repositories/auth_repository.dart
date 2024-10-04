import 'package:dotoread_app/data/providers/network/model/api_results.dart';

abstract class AuthRepository {
  Future<ApiResult> getAuth();
}
