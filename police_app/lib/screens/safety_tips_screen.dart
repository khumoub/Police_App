import 'package:flutter/material.dart';

class SafetyTipsScreen extends StatelessWidget {
  const SafetyTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safety Tips and Guidelines'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.security, color: Colors.green),
            title: Text('Lock Your Doors and Windows'),
            subtitle: Text(
                'Always lock your doors and windows, even when you are at home.'),
          ),
          ListTile(
            leading: Icon(Icons.visibility, color: Colors.green),
            title: Text('Be Aware of Your Surroundings'),
            subtitle: Text(
                'Stay alert and be aware of what is happening around you.'),
          ),
          ListTile(
            leading: Icon(Icons.lightbulb_outline, color: Colors.green),
            title: Text('Use Adequate Lighting'),
            subtitle:
                Text('Ensure that all entrances to your home are well lit.'),
          ),
          ListTile(
            leading: Icon(Icons.near_me, color: Colors.green),
            title: Text('Don’t Share Personal Information'),
            subtitle: Text(
                'Avoid sharing personal information with strangers or on social media.'),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.green),
            title: Text('Keep Emergency Numbers Handy'),
            subtitle: Text('Have emergency contact numbers easily accessible.'),
          ),
        ],
      ),
    );
  }
}
