import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  LingkaranState createState() => LingkaranState();
}

class LingkaranState extends State<Lingkaran> {
  double jariJari = 0, luas = 0, keliling = 0;

  void hitung() {
    setState(() {
      luas = 3.14 * jariJari * jariJari;
      keliling = 2 * 3.14 * jariJari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Layang-layang'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Hitung Luas'),
              Tab(text: 'Hitung Keliling'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab Hitung Luas
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(labelText: 'Jari-jari',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => jariJari = double.parse(value),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  ElevatedButton(
                    onPressed: hitung,
                    child: const Text('Hitung Luas'),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  Text('Luas: $luas'),
                ],
              ),
            ),
            // Tab Hitung Keliling
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(labelText: 'Jari-jari',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => jariJari = double.parse(value),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  ElevatedButton(
                    onPressed: hitung,
                    child: const Text('Hitung Keliling'),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  Text('Keliling: $keliling'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
