// Dart imports:
import 'dart:async';
import 'dart:io';

// Package imports:
import 'package:diox/diox.dart';
import 'package:income_life/util/api_key.dart';

// Project imports:
import '../../util/logger.dart';

class FearAndGreedDiox extends DioMixin {
  FearAndGreedDiox() {
    options = BaseOptions();
    interceptors.add(
      LogInterceptor(
        logPrint: logger.info,
        responseBody: true,
        requestBody: true,
      ),
    );
    httpClientAdapter = HttpClientAdapter();
  }

  @override
  Future<Response<T>> request<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final options = Options(
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: <String, dynamic>{
          'X-RapidAPI-Key': xrapidAPIKey,
          'X-RapidAPI-Host': 'fear-and-greed-index.p.rapidapi.com',
        },
      );
      final response = await super.request<T>(
        path,
        options: options,
      );
      return response;
    } on DioError catch (error) {
      // No Internet Connection
      if (error.error is SocketException || error.response == null) {
        rethrow;
      }

      // 基本はネットの調子が悪い時はrethrowしてVMで処理する
      // final httpStatus = error.response!.statusCode;
      // if (httpStatus == HttpStatus.requestTimeout) {
      //   throw Exception(['Request Error']);
      // }

      rethrow;
    }
  }
}
