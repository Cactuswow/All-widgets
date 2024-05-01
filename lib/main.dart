import 'package:all_widgets/config/router/app_router.dart';
import 'package:all_widgets/styles/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      title: "Empanadita",
      routerConfig: appRouter,
    );
  }
}
