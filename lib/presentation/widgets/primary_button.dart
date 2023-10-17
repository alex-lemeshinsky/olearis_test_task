import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;
  final bool loading;
  final String title;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.enabled = true,
    this.loading = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        child: loading
            ? const SizedBox(
                height: 16.0,
                width: 16.0,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2.0,
                ),
              )
            : Text(title),
      ),
    );
  }
}
