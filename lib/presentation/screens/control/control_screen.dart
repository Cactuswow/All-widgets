import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ControlView(),
    );
  }
}

enum Transporte { carro, avion, barco, moto, tren }

class _ControlView extends StatefulWidget {
  const _ControlView();

  @override
  State<_ControlView> createState() => _ControlViewState();
}

class _ControlViewState extends State<_ControlView> {
  Transporte selected = Transporte.carro;
  List<bool> foods = [true, false, false, true];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: const Text("Transportes"),
          children: [
            RadioListTile(
              value: Transporte.carro,
              groupValue: selected,
              onChanged: (value) {
                selected = Transporte.carro;
                setState(() {});
              },
              title: const Text("Carrete"),
            ),
            RadioListTile(
              value: Transporte.moto,
              groupValue: selected,
              onChanged: (value) {
                selected = Transporte.moto;
                setState(() {});
              },
              title: const Text("Motete"),
            ),
            RadioListTile(
              value: Transporte.avion,
              groupValue: selected,
              onChanged: (value) {
                selected = Transporte.avion;
                setState(() {});
              },
              title: const Text("Avionete"),
            ),
            RadioListTile(
              value: Transporte.barco,
              groupValue: selected,
              onChanged: (value) {
                selected = Transporte.barco;
                setState(() {});
              },
              title: const Text("Barquete"),
            ),
            RadioListTile(
              value: Transporte.tren,
              groupValue: selected,
              onChanged: (value) {
                selected = Transporte.tren;
                setState(() {});
              },
              title: const Text("Trenete"),
            ),
          ],
        ),
        ExpansionTile(
          title: const Text("Comiditas"),
          children: [
            CheckboxListTile(
              value: foods[0],
              title: const Text("Gaseosa"),
              onChanged: (value) {
                setState(() {
                  foods[0] = !foods[0];
                });
              },
            ),
            CheckboxListTile(
              value: foods[1],
              title: const Text("Empanadita"),
              onChanged: (value) {
                setState(() {
                  foods[1] = !foods[1];
                });
              },
            ),
            CheckboxListTile(
              value: foods[2],
              title: const Text("Salsa y picante"),
              onChanged: (value) {
                setState(() {
                  foods[2] = !foods[2];
                });
              },
            ),
            CheckboxListTile(
              value: foods[3],
              title: const Text("Arroz con pollo"),
              onChanged: (value) {
                setState(() {
                  foods[3] = !foods[3];
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
