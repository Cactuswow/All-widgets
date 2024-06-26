import 'package:all_widgets/config/menu/menu_items.dart';
import 'package:all_widgets/presentation/provider/counter_provider.dart';
import 'package:all_widgets/presentation/screens/home/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home.... Bitch"),
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
      body: ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final item = appMenuItems[index];
          return MenuList(menuItem: item);
        },
      ),
    );
  }
}
