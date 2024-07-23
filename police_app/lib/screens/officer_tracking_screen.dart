import 'package:flutter/material.dart';

class OfficerTrackingScreen extends StatelessWidget {
  const OfficerTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Officer Location Tracking'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Officer Location Tracking Placeholder',
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
                // Add functionality to load actual officer locations here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Loading officer locations...')),
                );
              },
              child: const Text('Load Officer Locations'),
            ),
          ],
        ),
      ),
    );
  }
}
