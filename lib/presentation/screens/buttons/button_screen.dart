import 'package:all_widgets/presentation/screens/buttons/Button.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones... Omagones"),
      ),
      body: const Button(),
    );
  }
}
