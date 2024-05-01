import 'package:all_widgets/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuList extends StatelessWidget {
  final MenuItem menuItem;

  const MenuList({super.key, required this.menuItem});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      leading: Icon(
        menuItem.icon,
        color: Colors.green,
      ),
      trailing: const Icon(
        Icons.arrow_right,
        color: Colors.green,
      ),
      onTap: () {
        context.push(menuItem.link);
        // Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) => const ButtonScreen()));
      },
    );
  }
}
