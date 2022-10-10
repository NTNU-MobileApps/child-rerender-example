import 'package:flutter/material.dart';

/// A static vertical padding
class VerticalPadding extends StatelessWidget {
  const VerticalPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Rendering vertical padding");
    return const SizedBox(height: 16);
  }
}
