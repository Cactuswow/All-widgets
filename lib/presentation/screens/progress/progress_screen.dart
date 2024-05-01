import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MAYONESA y progreso"),
      ),
      body: const Center(
          child: Column(
        children: [
          SizedBox(height: 20),
          Text("Circular progress"),
          SizedBox(height: 20),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.green,
          ),
          SizedBox(height: 20),
          Text("Linear progress"),
          SizedBox(height: 20),
          LinearProgressIndicator(backgroundColor: Colors.green),
          SizedBox(height: 20),
          _ControlProgress()
        ],
      )),
    );
  }
}

class _ControlProgress extends StatefulWidget {
  const _ControlProgress();

  @override
  State<_ControlProgress> createState() => _ControlProgressState();
}

class _ControlProgressState extends State<_ControlProgress> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
              const Duration(milliseconds: 500), (value) => value * 2 / 100)
          .takeWhile((element) => element < 100),
      builder: (context, snapshot) {
        final progress = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Expanded(
            child: LinearProgressIndicator(
              value: progress,
            ),
          ),
        );
      },
    );
  }
}
