import 'package:all_widgets/config/router/app_router.dart';
import 'package:all_widgets/presentation/provider/counter_provider.dart';
import 'package:all_widgets/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: Main()));
}

class Main extends ConsumerWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(ligthModeProvider)
          ? AppTheme.getLightTheme()
          : AppTheme.getDarkTheme(),
      title: "Empanadita",
      routerConfig: appRouter,
    );
  }
}
