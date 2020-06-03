import 'package:dio/dio.dart';
import 'package:dmessanger_mobile/utils/service_client//service_client.dart';
import 'package:dmessanger_mobile/utils/service_client/Response.dart';
import 'package:http/http.dart' as http;

class HttpClient implements ServiceClient {
  @override
  Future<ServiceResponse> get(String url) async {
    var headers = await getHeaders();
    var response = await http.get(url, headers: headers);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> post(String url, Map<String, dynamic> body) async {
    var headers = await getHeaders();
    var response =  await http.post(url, body: body, headers: headers);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> put(String url, Map<String, dynamic> body) async {
    var headers = await getHeaders();
    var response = await http.put(url, body: body, headers: headers);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> patch(String url) async {
    var headers = await getHeaders();
    var response = await http.patch(url, headers: headers);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> delete(String url) async {
    var headers = await getHeaders();
    var response = await http.delete(url, headers: headers);

    return _buildCustomResponse(response);
  }

  ServiceResponse _buildCustomResponse(http.Response httpResponse) {
    ServiceResponse response = ServiceResponse();

    response.body = httpResponse.body;
    response.statusCode = httpResponse.statusCode;
    response.headers = httpResponse.headers;
    response.isRedirect = httpResponse.isRedirect;
    return response;
  }




}
