import 'package:piggy_flutter/models/api_response.dart';

enum ApiType {
  createOrUpdateTransaction,
  createCategory,
  updateCategory,
  deleteTransaction,
  login,
  createAccount,
  updateAccount
}

class ApiRequest<T> {
  ApiType type;
  bool isInProcess;
  AjaxResponse<T> response;

  ApiRequest({this.isInProcess, this.response, this.type});

  @override
  String toString() {
    return 'ApiRequest isInProcess $isInProcess, type $type $response';
  }
}
