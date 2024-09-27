import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LayangLayang extends StatefulWidget {
  const LayangLayang({super.key});

  @override
  LayangLayangState createState() => LayangLayangState();
}

class LayangLayangState extends State<LayangLayang> {
  double diagonal1 = 0, diagonal2 = 0, sisi1 = 0, sisi2 = 0;
  double luas = 0, keliling = 0;

  void hitungLuas() {
    setState(() {
      luas = 0.5 * diagonal1 * diagonal2;
    });
  }

  void hitungKeliling() {
    setState(() {
      keliling = 2 * (sisi1 + sisi2);
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
                    decoration: const InputDecoration(labelText: 'Diagonal 1',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => diagonal1 = double.parse(value),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  TextField(
                    decoration: const InputDecoration(labelText: 'Diagonal 2',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => diagonal2 = double.parse(value),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  ElevatedButton(
                    onPressed: hitungLuas,
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
                    decoration: const InputDecoration(labelText: 'Sisi 1',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => sisi1 = double.parse(value),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  TextField(
                    decoration: const InputDecoration(labelText: 'Sisi 2',border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]'))],
                    onChanged: (value) => sisi2 = double.parse(value),
                  ),
                  const SizedBox(height: 16.0), // Jarak antar elemen
                  ElevatedButton(
                    onPressed: hitungKeliling,
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
