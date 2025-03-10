import 'package:flutter/material.dart';

void main() {
  runApp(const mylistview());
}

class mylistview extends StatelessWidget {
  const mylistview({super.key});

  @override
  Widget build(BuildContext context) {
    final plushies = [
      Plushie(name: '🐇 Totoro', price: '\$25.00', size: 'Large'),
      Plushie(name: '🐈 Jiji', price: '\$18.00', size: 'Medium'),
      Plushie(name: '🕷 No-Face', price: '\$30.00', size: 'Large'),
      Plushie(name: '🧨 Calcifer', price: '\$20.00', size: 'Small'),
      Plushie(name: '✨ Kodama', price: '\$15.00', size: 'Small'),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Johana Moras Mat:0458'),
          backgroundColor: const Color(0xFF90CAF9),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Texto "Patients weight"
              const Text(
                'Patients weight',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 10),

              // Botón "Calculate"
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    print('Calculate pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text('Calculate'),
                ),
              ),
              const SizedBox(height: 20),

              // Lista de peluches
              Expanded(
                child: ListView.builder(
                  itemCount: plushies.length,
                  itemBuilder: (context, index) {
                    return PlushieRow(plushies[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlushieRow extends StatelessWidget {
  final Plushie plushie;

  const PlushieRow(this.plushie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3E0),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  plushie.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                Text(
                  plushie.price,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              'Size: ${plushie.size}',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Amount to give:',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Plushie {
  final String name;
  final String price;
  final String size;

  Plushie({
    required this.name,
    required this.price,
    required this.size,
  });
}
