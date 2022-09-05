import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  /// データの取得成功時
  const factory PaginationState.data(T data) = _Data;

  /// 初回データのローディング中
  const factory PaginationState.loading() = _Loading;

  /// 初回データの取得失敗時
  const factory PaginationState.error(Object? e, [StackTrace? stk]) = _Error;

  /// ページング処理でのローディング中
  const factory PaginationState.onGoingLoading(T previousData) =
      _OnGoingLoading;

  /// ページング処理でのデータ取得失敗時
  const factory PaginationState.onGoingError(
    T previousData,
    Object? e, [
    StackTrace? stk,
  ]) = _OnGoingError;
}
