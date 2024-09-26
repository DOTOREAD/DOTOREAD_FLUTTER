import 'package:http/http.dart' as http;

import '../model/api_results.dart';
import '../model/network_model.dart';

abstract class HttpNetwork {
  Future<http.Response> getResponse({required NetworkModel method});
  bool validStatusCode(int statusCode);

  late ApiResult unknownException;
}
