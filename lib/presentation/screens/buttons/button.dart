import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("XD")),
            const Padding(padding: EdgeInsets.all(7)),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.radio_button_checked_rounded),
              label: const Text("Troleando"),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            FilledButton(onPressed: () {}, child: const Text("XD")),
            const Padding(padding: EdgeInsets.all(7)),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.radio_button_checked_rounded),
              label: const Text("Troleando"),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            OutlinedButton(onPressed: () {}, child: const Text("XD")),
            const Padding(padding: EdgeInsets.all(7)),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.radio_button_checked_rounded),
              label: const Text("Troleando"),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.radio_button_checked_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
