import 'package:dmessanger_mobile/utils/service_client/Response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ServiceClient {
  Future<ServiceResponse> get(String url);
  Future<ServiceResponse> post(String url, Map<String, dynamic> body);
  Future<ServiceResponse> put(String url, Map<String, dynamic> body);
  Future<ServiceResponse> delete(String url);
  Future<ServiceResponse> patch(String url);
}

Future<Map<String, String>> getHeaders() async {
  Map<String, String> headers = Map();
  String token = await getToken();

  headers["Authorization"] = token;
  return headers;
}

Future<String> getToken() async {
  final _storage = FlutterSecureStorage();
  String token = await _storage.read(key: "token");
  return token;
}