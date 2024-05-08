import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 5);
final ligthModeProvider = StateProvider((ref) => false);
final colorListProvider = Provider((ref) => []);

class ThemeNotifier extends StateNotifier {
  ThemeNotifier() : super(const Text("XD"));
}

final themeNotifierProvider = StateNotifierProvider((ref) => ThemeNotifier());
