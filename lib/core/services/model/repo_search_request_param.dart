import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search/core/services/model/int_and_string_converter.dart';

part 'repo_search_request_param.freezed.dart';
part 'repo_search_request_param.g.dart';

@freezed
class RepoSearchRequestParam with _$RepoSearchRequestParam {
  const factory RepoSearchRequestParam({
    required String q,
    String? sort,
    String? order,
    @IntAndStringConverter() @Default(30) int perPage,
    @IntAndStringConverter() @Default(1) int page,
  }) = _RepoSearchRequestParam;

  factory RepoSearchRequestParam.fromJson(Map<String, dynamic> json) =>
      _$RepoSearchRequestParamFromJson(json);
}
