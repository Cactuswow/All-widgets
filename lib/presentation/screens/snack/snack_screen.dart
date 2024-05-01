import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackScreen extends StatelessWidget {
  const SnackScreen({super.key});

  void showSnack(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("AAA"),
        action: SnackBarAction(label: "Ok", onPressed: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Un bocadillito"),
      ),
      body: const _Dialog(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showSnack(context);
        },
        label: const Text("Waos"),
        icon: const Icon(Icons.padding),
      ),
    );
  }
}

class _Dialog extends StatelessWidget {
  const _Dialog();

  void showDialogAction(BuildContext context) {
    // showAboutDialog(context: context, children: [const Text("A")]);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Alerta aereo puerto"),
        content: const Text("Positivo para Python"),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Mentir")),
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Aceptar tragedia"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FilledButton(
              onPressed: () {
                showDialogAction(context);
              },
              child: const Text("Empanadita llena "))
        ],
      ),
    );
  }
}
