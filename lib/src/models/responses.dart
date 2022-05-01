part of 'models.dart';

typedef Json = Map<String, dynamic>;

class ApiResponse extends Response {
  ApiResponse.ok({
    required Json body,
  }) : super.ok(jsonEncode(body), headers: _kHeader);

  ApiResponse.notFound({
    required Json body,
  }) : super.notFound(jsonEncode(body), headers: _kHeader);

  ApiResponse.badRequest({
    required Json body,
  }) : super.badRequest(body: jsonEncode(body), headers: _kHeader);

  static const _kHeader = {'content-type': 'application/json'};
}
