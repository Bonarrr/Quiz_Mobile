import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({super.key});

  @override
  TrapesiumState createState() => TrapesiumState();
}

class TrapesiumState extends State<Trapesium> {
  double a = 0, b = 0, tinggi = 0, c = 0, d = 0, luas = 0, keliling = 0;

  void hitung() {
    setState(() {
      luas = 0.5 * (a + b) * tinggi;
      keliling = a + b + c + d;
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
                    decoration: const InputDecoration(labelText: 'Sisi a',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => a = double.parse(value),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Sisi b',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => b = double.parse(value),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Tinggi',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => tinggi = double.parse(value),
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
                    decoration: const InputDecoration(labelText: 'Sisi a',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => a = double.parse(value),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Sisi b',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => b = double.parse(value),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Sisi c',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => c = double.parse(value),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Sisi d',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => d = double.parse(value),
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
