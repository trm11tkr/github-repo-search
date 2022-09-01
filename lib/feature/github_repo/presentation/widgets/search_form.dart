import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/provider/search_query_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchFrom extends ConsumerWidget {
  const SearchFrom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        TextEditingController(text: ref.watch(searchQueryProvider));
    final formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Form(
        key: formKey,
        child: TextFormField(
          autocorrect: false,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
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
                controller.text = '';
              },
            ),
            hintText: 'Search Repository',
            filled: true,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty || value.length > 256) {
              return 'スペースを除く、1~256文字を入力してください。';
            }
            return null;
          },
          onFieldSubmitted: (String value) {
            if (formKey.currentState!.validate()) {
              ref.watch(searchQueryProvider.state).update((state) => value);
            }
          },
        ),
      ),
    );
  }
}
