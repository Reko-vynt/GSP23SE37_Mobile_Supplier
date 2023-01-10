class ApiResponse {
  dynamic dataResponse;
  String? message;
  bool? isSuccess;

  ApiResponse({this.dataResponse, this.message, this.isSuccess});

  @override
  String toString() {
    return 'ApiResponse{dataResponse: $dataResponse, \nmessage: $message, \nisSuccess: $isSuccess}';
  }
}
