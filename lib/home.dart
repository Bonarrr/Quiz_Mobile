import 'package:flutter/material.dart';
import 'package:quiz/bagundatar.dart';
import 'package:quiz/prima.dart';
import 'package:quiz/profile.dart';

class homepage extends StatelessWidget {
  final String nama;

  const homepage({
    Key? key,
    required this.nama,
  });

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
                  MaterialPageRoute(builder: (context) => const bangundatar()),
                );
              },
              child: const Text('Hitung Bangun Datar'),
            ),
            const SizedBox(height: 20, width: 100,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BilanganPrima()),
                );
              },
              child: const Text('Bilangan Prima'),
            ),
            const SizedBox(height: 20, width: 100,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}