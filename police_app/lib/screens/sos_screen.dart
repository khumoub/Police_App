import 'package:flutter/material.dart';

class SOSScreen extends StatelessWidget {
  const SOSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOS'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Implement SOS functionality
          },
          child: const Text('Send SOS'),
        ),
      ),
    );
  }
}
