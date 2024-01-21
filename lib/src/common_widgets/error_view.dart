import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.message,
    this.onTryAgain,
    super.key,
  });

  final String message;
  final VoidCallback? onTryAgain;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: colorScheme.error.withOpacity(1),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline_rounded,
            size: 50,
            color: colorScheme.errorContainer,
          ),
          const SizedBox(height: 10.0),
          Text(
            message,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: colorScheme.errorContainer,
              // color: Colors.red
            ),
          ),
          if (onTryAgain != null) Container(
            width: 120,
            margin: const EdgeInsets.only(top: 10.0),
            child: FilledButton.tonal(
              onPressed: onTryAgain,
              child: const Text('Try again'),
            ),
          ),
        ],
      ),
    );
  }
}
