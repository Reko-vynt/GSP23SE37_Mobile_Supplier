import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gsp23se37_mobile_supplier/models/api_response.dart';
import 'package:gsp23se37_mobile_supplier/models/user.dart';
import 'package:gsp23se37_mobile_supplier/utils/constants/app_endpoint.dart';
import 'package:gsp23se37_mobile_supplier/utils/user_shared_preferences.dart';

class DioClient {
  // dio instance
  final Dio _dio;
  DioClient(this._dio) {
    _dio
      ..options.contentType = AppEndpoint.contentType
      ..options.baseUrl = AppEndpoint.baseUrl
      ..options.connectTimeout = AppEndpoint.connectionTimeout
      ..options.receiveTimeout = AppEndpoint.receiveTimeout
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (request, handler) async {
            String? token =
                await UserSharePre.getUser().then((value) => value?.token);
            if (token != null && token != '') {
              request.headers['Authorization'] = 'Bearer $token';
            }
            return handler.next(request);
          },
          onError: (e, handler) async {
            if (e.response?.statusCode == 401) {
              try {
                User? user = await UserSharePre.getUser();
                await _dio
                    .post(AppEndpoint.refeshToken,
                        data: jsonEncode(
                            {"userID": user?.userID, 'token': user?.token}))
                    .then((value) async {
                  if (value.statusCode == 201) {
                    //get new tokens ...
                    var data = json.decode(value.data);
                    ApiResponse apiResponse = ApiResponse();
                    apiResponse.message = data['message'];
                    apiResponse.isSuccess = data['success'];
                    if (apiResponse.isSuccess!) {
                      user = User.fromJson(data['data']);
                      UserSharePre.saveUser(user!);
                      e.requestOptions.headers["Authorization"] =
                          "Bearer ${user!.token!}";
                      //create request with new access token
                      final opts = Options(
                          method: e.requestOptions.method,
                          headers: e.requestOptions.headers);
                      final cloneReq = await _dio.request(e.requestOptions.path,
                          options: opts,
                          data: e.requestOptions.data,
                          queryParameters: e.requestOptions.queryParameters);

                      return handler.resolve(cloneReq);
                    } else {
                      log(value.statusMessage.toString());
                    }
                  }
                  return e.error;
                });
                return e.error;
              } catch (error) {
                log(error.toString());
              }
            }
            return handler.next(e);
          },
        ),
      );
  }

  // GET -----------------------------------------------------------------------

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // POST ----------------------------------------------------------------------

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT -----------------------------------------------------------------------

  Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DELETE --------------------------------------------------------------------

  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
