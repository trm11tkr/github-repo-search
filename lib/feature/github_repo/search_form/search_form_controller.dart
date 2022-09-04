import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchQueryProvider =
    StateNotifierProvider<SearchNotifier, String>((ref) => SearchNotifier());

const initialText = 'YUMEMI';

class SearchNotifier extends StateNotifier<String> {
  SearchNotifier() : super(initialText);

  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController(text: initialText);

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get controller => _controller;

  String? validator(String? value) {
    if (value == null || value.isEmpty || value.length > 256) {
      return 'スペースを除く、1~256文字を入力してください。';
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
