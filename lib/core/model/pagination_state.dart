import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState.data(T data) = _Data;
  const factory PaginationState.loading() = _Loading;
  const factory PaginationState.error(Object? e, [StackTrace? stk]) = _Error;
  const factory PaginationState.onGoingLoading(T previousData) =
      _OnGoingLoading;
  const factory PaginationState.onGoingError(
    T previousData,
    Object? e, [
    StackTrace? stk,
  ]) = _OnGoingError;
}
