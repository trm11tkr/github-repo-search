import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/search_form/search_form_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchFrom extends ConsumerWidget {
  const SearchFrom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(searchQueryProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Form(
        key: controller.formKey,
        child: TextFormField(
          autocorrect: false,
          controller: controller.controller,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.clear_rounded,
                color: Colors.grey,
              ),
              onPressed: () {
                controller.controller.text = '';
              },
            ),
            hintText: 'リポジトリを検索する。',
            filled: true,
          ),
          validator: controller.validator,
          onFieldSubmitted: (String value) {
            if (controller.formKey.currentState!.validate()) {
              controller.change(value.trim());
            }
          },
        ),
      ),
    );
  }
}
