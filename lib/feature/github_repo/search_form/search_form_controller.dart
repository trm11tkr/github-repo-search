import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:github_repo_search/utils/validation.dart';

/// 検索クエリープロバイダー
final searchQueryProvider = StateNotifierProvider<SearchFormController, String>(
  (ref) => SearchFormController(),
);

/// 起動時の検索ワード
const initialText = 'YUMEMI';

/// 最大入力可能数
const maxLength = 256;

class SearchFormController extends StateNotifier<String> {
  SearchFormController() : super(initialText);

  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController(text: initialText);

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get textController => _textController;

  String? validator(String? value) {
    if (!Validation.hasValue(value)) {
      return i18n.validationHasValue;
    }
    final notNullValue = value!;

    if (!Validation.isAllowedLengthMax(notNullValue, maxLength)) {
      return i18n.validationMaxLength(maxLength: maxLength);
    }

    return null;
  }

  /// stateを[text]で更新
  void change(String text) {
    // 前回値と同じなら更新しない
    if (state != text) {
      state = text;
    }
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
