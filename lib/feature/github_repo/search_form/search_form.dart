import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/feature/github_repo/search_form/search_form_controller.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

class SearchFrom extends ConsumerWidget {
  const SearchFrom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchFormController = ref.watch(searchQueryProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Form(
        key: searchFormController.formKey,
        child: TextFormField(
          autocorrect: false,
          controller: searchFormController.textController,
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
                searchFormController.textController.text = '';
              },
            ),
            hintText: i18n.search,
            filled: true,
          ),
          validator: searchFormController.validator,
          onFieldSubmitted: (String value) {
            if (searchFormController.formKey.currentState!.validate()) {
              searchFormController.change(value.trim());
            }
          },
        ),
      ),
    );
  }
}
