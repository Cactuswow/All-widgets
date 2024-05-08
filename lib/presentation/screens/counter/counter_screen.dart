import 'package:all_widgets/presentation/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("count++ Python sjsjsjsjs"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(ligthModeProvider.notifier).update((state) => !state);
              },
              icon: ref.watch(ligthModeProvider)
                  ? const Icon(Icons.light_mode)
                  : const Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).update((state) => state + 5);
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
