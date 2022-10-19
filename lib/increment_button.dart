import 'package:flutter/material.dart';

/// An increment-button
/// Takes in an onPressed callback to be called on each press of the button
class IncrementButton extends StatelessWidget {
  final void Function() onPressed;

  const IncrementButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Rendering the button");
    return ElevatedButton(onPressed: onPressed, child: const Icon(Icons.add));
  }
}

