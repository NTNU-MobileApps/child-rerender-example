import 'package:child_rerender_example/static_text.dart';
import 'package:child_rerender_example/vertical_padding.dart';
import 'package:flutter/material.dart';

import 'increment_button.dart';

/// The main page of the app, used for re-render experiments
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Re-render demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StaticText("Press the button and check the console",
                style: Theme.of(context).textTheme.bodyText1),
            const VerticalPadding(),
            const StaticText("The counter is:"),
            StaticText("A non-const text"),
            const VerticalPadding(),
            StaticText(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
            const VerticalPadding(),
            IncrementButton(onPressed: _incrementCounter),
            const VerticalPadding(),
            StaticText("another counter: $_counter"),
            const VerticalPadding(),
            const StaticText("And another const text without a counter"),
            const VerticalPadding(),
            StaticText("A non-const text"),
            StaticText("Another non-const text"),
          ],
        ),
      ),
    );
  }
}
