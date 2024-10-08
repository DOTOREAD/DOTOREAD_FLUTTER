import 'package:dotoread_app/data/providers/network/model/api_results.dart';
import 'package:dotoread_app/data/providers/network/model/network_model.dart';

abstract class Network {
  Future<ApiResult> callApi({required NetworkModel method});
}
