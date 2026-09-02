import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:kazumi/request/core/network_exception.dart';
import 'package:kazumi/l10n/l10n.dart';

class NetworkErrorMapper {
  const NetworkErrorMapper._();

  static Future<NetworkException> mapException(DioException error) async {
    switch (error.type) {
      case DioExceptionType.badCertificate:
        return NetworkException(
          type: NetworkExceptionType.badCertificate,
          message: currentL10n.badCertificate,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        return NetworkException(
          type: NetworkExceptionType.badResponse,
          message: currentL10n.serverErrorRetry,
          statusCode: statusCode,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.cancel:
        return NetworkException(
          type: NetworkExceptionType.cancel,
          message: currentL10n.requestCancelledRetry,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.connectionError:
        return NetworkException(
          type: NetworkExceptionType.connectionError,
          message: currentL10n.connectionErrorCheckSettings,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.connectionTimeout:
        return NetworkException(
          type: NetworkExceptionType.connectionTimeout,
          message: currentL10n.connectionTimeoutCheckSettings,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.receiveTimeout:
        return NetworkException(
          type: NetworkExceptionType.receiveTimeout,
          message: currentL10n.responseTimeoutRetry,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.sendTimeout:
        return NetworkException(
          type: NetworkExceptionType.sendTimeout,
          message: currentL10n.sendTimeoutCheckSettings,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.transformTimeout:
        return NetworkException(
          type: NetworkExceptionType.parseError,
          message: currentL10n.responseParseTimeoutRetry,
          rawError: error,
          stackTrace: error.stackTrace,
        );
      case DioExceptionType.unknown:
        final connection = await _connectionLabel();
        return NetworkException(
          type: NetworkExceptionType.unknown,
          message: currentL10n.networkException(connection).trimLeft(),
          rawError: error,
          stackTrace: error.stackTrace,
        );
    }
  }

  static NetworkException parse(Object error, StackTrace stackTrace) {
    return NetworkException(
      type: NetworkExceptionType.parseError,
      message: currentL10n.responseParseFailed,
      rawError: error,
      stackTrace: stackTrace,
    );
  }

  static Future<String> _connectionLabel() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return currentL10n.usingMobileData;
    }
    if (connectivityResult.contains(ConnectivityResult.wifi)) {
      return currentL10n.usingWifi;
    }
    if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      return currentL10n.usingEthernet;
    }
    if (connectivityResult.contains(ConnectivityResult.vpn)) {
      return currentL10n.usingVpn;
    }
    if (connectivityResult.contains(ConnectivityResult.other)) {
      return currentL10n.usingOtherNetwork;
    }
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return currentL10n.notConnected;
    }
    return '';
  }
}
