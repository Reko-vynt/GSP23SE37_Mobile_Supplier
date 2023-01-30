import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gsp23se37_mobile_supplier/models/api_response.dart';
import 'package:gsp23se37_mobile_supplier/models/user.dart';
import 'package:gsp23se37_mobile_supplier/network/dio/dio_client.dart';
import 'package:gsp23se37_mobile_supplier/utils/constants/app_endpoint.dart';

import '../dio/dio_exceptions.dart';

class AuthenticationService {
  final DioClient dioClient;
  // AuthenticationService({required this.dioClient});
  AuthenticationService(): dioClient=DioClient(Dio());
  Future<ApiResponse> refeshToken(
      {required String token, required int userID}) async {
    ApiResponse apiResponse = ApiResponse();
    try {
      final Response response = await dioClient.post(AppEndpoint.refeshToken,
          data: {"userID": userID, "token": token});
      final body = json.decode(response.data);
      apiResponse.isSuccess = body['success'];
      apiResponse.message = body['message'];
      if (apiResponse.isSuccess!) {
        apiResponse.dataResponse = User.fromJson(body['data']);
      }
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      apiResponse.isSuccess = false;
      apiResponse.message = errorMessage;
    }
    return apiResponse;
  }

  Future<ApiResponse> logOut({required int userID}) async {
    ApiResponse apiResponse = ApiResponse();
    try {
      final Response response =
          await dioClient.post(AppEndpoint.logout, data: {"userID": userID});
      final body = json.decode(response.data);
      apiResponse.isSuccess = body['success'];
      apiResponse.message = body['message'];
      if (apiResponse.isSuccess!) {
        apiResponse.dataResponse = User.fromJson(body['data']);
      }
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      apiResponse.isSuccess = false;
      apiResponse.message = errorMessage;
    }
    return apiResponse;
  }

  Future<ApiResponse> checkUser({required String phoneNumber}) async {
    ApiResponse apiResponse = ApiResponse();
    try {
      // final queryMap={"phone": phoneNumber,};
      // final Response response = await dioClient
      //     .post('${AppEndpoint.checkUser}?${Transformer.urlEncodeMap(queryMap)}',);
      final Response response = await dioClient
          .post(AppEndpoint.checkUser, queryParameters: {"phone": phoneNumber});
      log(response.realUri.toString());
      final body = response.data;
      apiResponse.isSuccess = body['success'];
      apiResponse.message = body['message'];
      if (apiResponse.isSuccess!) {
        // apiResponse.dataResponse = User.fromJson(body['data']);
      }
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      apiResponse.isSuccess = false;
      apiResponse.message = errorMessage;
    }
    return apiResponse;
  }
}
