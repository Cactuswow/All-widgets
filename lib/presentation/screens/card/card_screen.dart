import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  static const cards = <Map<String, dynamic>>[
    {"elevation": 0.0, "label": "Elevación 0.0"},
    {"elevation": 1.0, "label": "Elevación 1.0"},
    {"elevation": 2.0, "label": "Elevación 2.0"},
    {"elevation": 3.0, "label": "Elevación 3.0"},
    {"elevation": 4.0, "label": "Elevación 4.0"},
    {"elevation": 5.0, "label": "Elevación 4.0"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards... Locura"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: CardScreen.cards
              .map(
                (e) => Card(
                  elevation: e["elevation"],
                  child: Text(e["label"]),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
