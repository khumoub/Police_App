import 'package:flutter/material.dart';
import '../utils/logger.dart';

class TipScreen extends StatefulWidget {
  const TipScreen({super.key});

  @override
  TipScreenState createState() => TipScreenState();
}

class TipScreenState extends State<TipScreen> {
  final _formKey = GlobalKey<FormState>();
  String _tipDescription = '';
  String _tipLocation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit Anonymous Tip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the location';
                  }
                  return null;
                },
                onSaved: (value) {
                  _tipLocation = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _tipDescription = value!;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Log the anonymous tip
                    LoggerUtils.logInfo(
                        'Anonymous Tip Location: $_tipLocation');
                    LoggerUtils.logInfo(
                        'Anonymous Tip Description: $_tipDescription');
                    // Show a confirmation message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Tip submitted anonymously')),
                    );
                  }
                },
                child: const Text('Submit Tip'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
