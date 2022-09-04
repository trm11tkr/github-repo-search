import 'package:flutter/material.dart';
import 'package:github_repo_search/utils/validation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchQueryProvider =
    StateNotifierProvider<SearchNotifier, String>((ref) => SearchNotifier());

const initialText = 'YUMEMI';

const maxLength = 256;

class SearchNotifier extends StateNotifier<String> {
  SearchNotifier() : super(initialText);

  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController(text: initialText);

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get controller => _controller;

   String? validator(String? value) {
    if (!Validation.hasValue(value)) {
      return 'リポジトリ名を入力してください。';
    }
    final notNullValue = value!;

    if (!Validation.isAllowedLengthMax(notNullValue, maxLength)) {
      return '$maxLength文字以内で入力してください。';
    }

    return null;
  }
  void change(String text) {
    if (state != text) {
      state = text;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
