import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
    required this.title,
    required this.textButton,
  });

  final String title;
  final ButtonStyleButton textButton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          const Gap(20),
          textButton,
        ],
      ),
    );
  }
}
