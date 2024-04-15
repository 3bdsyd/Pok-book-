import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pokebook/core/helper/failures_handling.dart';

class ApiServices {
  final Dio _dio = Dio();

  Future<Either<Failures, Map<String, dynamic>>> get({
    required final String url,
  }) async {
    try {
      print(url);

      final Response response = await _dio.get(url);
      print(response);

      return right(response.data);
    } catch (e) {
      if (e is DioException) {
        // if (e.response.extra.containsKey('message')) {
        //   return left(
        //     FailuresServer.fromStatusCode(
        //       statusCode: e.response!.statusCode,
        //       message: e.response!.extra['message'],
        //     ),
        //   );
        // }
        return left(
          FailuresServer.fromDioException(exType: e.type),
        );
      } else {
        return left(
          Failures(errMessage: 'An error occurred, try again'),
        );
      }
    }
  }
}
