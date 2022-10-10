import 'package:flutter/material.dart';

/// A widget displaying a static text
class StaticText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  /// The `text` property is mandatory. `style` property is optional
  const StaticText(this.text, {this.style, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Rendering widget for '$text'");
    return Text(
      text,
      style: style,
    );
  }
}
