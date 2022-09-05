import 'package:github_repo_search/core/services/model/error/client_error.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:github_repo_search/utils/logger.dart';

/// ref: https://docs.github.com/ja/rest/overview/resources-in-the-rest-api#client-errors
class ApiErrorResponseException implements Exception {
  const ApiErrorResponseException({
    required this.code,
    required this.body,
  });

  final int code;
  final ClientError body;

  @override
  String toString() {
    logger.shout('ErrorResponseException: code=$code, body=${body.message}');
    switch (code) {
      case 403:
        return i18n.error403;

      case 422:
        if (body.errors == null) {
          return i18n.error422Null;
        }
        switch (body.errors!.first.code) {
          case 'missing':
            return i18n.error422Missing;
          case 'missing_field':
            return i18n.error422MissingField;
          case 'invalid':
            return i18n.error422Invalid;
          case 'already_exists':
            return i18n.error422Exists;
          case 'unprocessable':
            return i18n.error422UnProcessable;
        }
        return i18n.error422Null;

      default:
        return i18n.errorDefault;
    }
  }
}
