import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Alerts'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.warning, color: Colors.red),
            title: Text('Emergency Alert: Flood Warning in Downtown Area'),
            subtitle: Text('Please avoid the area and move to higher ground.'),
          ),
          ListTile(
            leading: Icon(Icons.directions_car, color: Colors.orange),
            title: Text('Road Closure: Main St & 2nd Ave'),
            subtitle: Text('Closed due to construction until further notice.'),
          ),
          ListTile(
            leading: Icon(Icons.person_search, color: Colors.blue),
            title: Text('Missing Person: John Doe'),
            subtitle: Text('Last seen at Central Park on July 21st.'),
          ),
        ],
      ),
    );
  }
}
