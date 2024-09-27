import 'package:flutter/material.dart';
import 'package:quiz/layang-layang.dart';
import 'package:quiz/lingkaran.dart';
import 'package:quiz/trapesium.dart';

class bangundatar extends StatefulWidget {
  const bangundatar({super.key});

  @override
  State<bangundatar> createState() => _bangundatarState();
}

class _bangundatarState extends State<bangundatar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LayangLayang()),
                );
              },
              child: const Text('Layang-Layang'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lingkaran()),
                );
              },
              child: const Text('Lingkaran'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Trapesium()),
                );
              },
              child: const Text('Trapesium'),
            ),
          ],
        ),
      ),
    );
  }
}