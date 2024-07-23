import 'package:flutter/material.dart';

class CrimeMapScreen extends StatelessWidget {
  const CrimeMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crime Map'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Crime Map Placeholder',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.grey[300],
              height: 300,
              width: 300,
              child: const Center(
                child: Text('Map Here'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality to load actual crime data here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Loading crime data...')),
                );
              },
              child: const Text('Load Crime Data'),
            ),
          ],
        ),
      ),
    );
  }
}
