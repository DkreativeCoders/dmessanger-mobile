import 'package:dio/dio.dart';
import 'package:dmessanger_mobile/utils/service_client//service_client.dart';
import 'package:dmessanger_mobile/utils/service_client/Response.dart';

class DioClient implements ServiceClient {
  static final dio = Dio();

  @override
  Future<ServiceResponse> get(String url) async {
    dio.options.headers = await getHeaders();
    var response = await dio.get(url);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> post(String url, Map<String, dynamic> body) async {
    dio.options.headers = await getHeaders();
    var response = await dio.post(url, data: body);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> put(String url, Map<String, dynamic> body) async {
    dio.options.headers = await getHeaders();
    var response = await dio.put(url, data: body);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> patch(String url) async {
    dio.options.headers = await getHeaders();
    var response = await dio.patch(url);

    return _buildCustomResponse(response);
  }

  @override
  Future<ServiceResponse> delete(String url) async {
    dio.options.headers = await getHeaders();
    var response = await dio.delete(url);

    return _buildCustomResponse(response);
  }

  ServiceResponse _buildCustomResponse(Response res) {
    ServiceResponse response = ServiceResponse();

    response.body = res.data.toString();
    response.statusCode = res.statusCode;
    response.isRedirect = res.isRedirect;
    response.headers = _buildHeaders(res.headers);
    response.statusMessage = res.statusMessage;

    return response;
  }

  Map<String, String> _buildHeaders(Headers dioHeaders) {
    Map<String, String> headers = Map<String, String>();

    return headers;
  }


}
