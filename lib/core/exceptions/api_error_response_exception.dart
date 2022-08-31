import 'package:github_repo_search/core/services/model/error/client_error.dart';
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
        return 'リクエスト制限です。しばらくお待ちください。';

      case 422:
        if (body.errors == null) {
          return '無効なフィールドです。';
        }
        switch (body.errors!.first.code) {
          case 'missing':
            return 'リソースが存在しません。';
          case 'missing_field':
            return '必須フィールドが設定されていません。';
          case 'invalid':
            return 'フィールドのフォーマットが無効です。';
          case 'already_exists':
            return 'リソース内容が重複しています。';
          case 'unprocessable':
            return '入力が無効です。';
        }
        return '無効なフィールドです。';

      default:
        return '再度やり直してください';
    }
  }
}
