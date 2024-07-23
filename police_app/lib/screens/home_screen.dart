import 'package:flutter/material.dart';
import 'sos_screen.dart';
import 'report_screen.dart';
import 'tip_screen.dart';
import 'alerts_screen.dart';
import 'crime_map_screen.dart';
import 'safety_tips_screen.dart';
import 'feedback_screen.dart';
import 'officer_tracking_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Police App Home'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SOSScreen()),
                  );
                },
                child: const Text('SOS'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReportScreen()),
                  );
                },
                child: const Text('Report Incident'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TipScreen()),
                  );
                },
                child: const Text('Submit Anonymous Tip'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlertsScreen()),
                  );
                },
                child: const Text('Community Alerts'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CrimeMapScreen()),
                  );
                },
                child: const Text('Crime Map'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SafetyTipsScreen()),
                  );
                },
                child: const Text('Safety Tips'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FeedbackScreen()),
                  );
                },
                child: const Text('Feedback'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OfficerTrackingScreen()),
                  );
                },
                child: const Text('Officer Tracking'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
