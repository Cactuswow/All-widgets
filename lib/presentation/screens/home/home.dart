import 'package:all_widgets/config/menu/menu_items.dart';
import 'package:all_widgets/presentation/screens/home/menu_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home.... Bitch"),
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
