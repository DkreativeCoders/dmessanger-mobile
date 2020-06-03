import 'package:dmessanger_mobile/utils/service_client//service_client.dart';
import 'package:dmessanger_mobile/utils/service_client/Impl/http_service_client.dart';
import 'package:dmessanger_mobile/utils/service_client/Response.dart';

class APIServiceHandler {
  static final ServiceClient httpClient = HttpClient();

  static Future<ServiceResponse> get(String url) async {
    return await httpClient.get(url);
  }

  static Future<ServiceResponse> post(String url, Map<String, dynamic> body) async {
    return await httpClient.post(url, body);
  }

  static Future<ServiceResponse> put(String url, Map<String, dynamic> body) async {
    return await httpClient.put(url, body);
  }

  static Future<ServiceResponse> patch(String url) async {
    return await httpClient.patch(url);
  }

  static Future<ServiceResponse> delete(String url) async {
    return await httpClient.delete(url);
  }
}
