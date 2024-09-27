import 'package:flutter/material.dart';

class BilanganPrima extends StatefulWidget {
  const BilanganPrima({super.key});

  @override
  BilanganPrimaState createState() => BilanganPrimaState();
}

class BilanganPrimaState extends State<BilanganPrima> {
  int limit = 0;
  List<int> primeNumbers = [];

  void generatePrimes() {
    primeNumbers.clear();
    for (int i = 2; i <= limit; i++) {
      if (isPrime(i)) primeNumbers.add(i);
    }
    setState(() {});
  }

  bool isPrime(int number) {
    if (number < 2) return false; 
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bilangan Prima'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  limit = int.parse(value);
                }
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: generatePrimes,
              child: const Text('Generate'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: primeNumbers.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        '${primeNumbers[index]}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
