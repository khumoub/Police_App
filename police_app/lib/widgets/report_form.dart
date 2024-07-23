import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utils/logger.dart';

class ReportForm extends StatefulWidget {
  const ReportForm({super.key});

  @override
  ReportFormState createState() => ReportFormState();
}

class ReportFormState extends State<ReportForm> {
  final _formKey = GlobalKey<FormState>();
  String _incidentType = '';
  String _location = '';
  DateTime _dateTime = DateTime.now();
  String _description = '';
  String _contactInfo = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Incident Type
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Incident Type'),
              value: _incidentType.isEmpty ? null : _incidentType,
              items: [
                'Car Accident',
                'Theft',
                'Robbery',
                'Family Violence',
                'Others'
              ]
                  .map((incident) => DropdownMenuItem<String>(
                        value: incident,
                        child: Text(incident),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _incidentType = value!;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select the incident type';
                }
                return null;
              },
              onSaved: (value) {
                _incidentType = value!;
              },
            ),
            // Location
            TextFormField(
              decoration: const InputDecoration(labelText: 'Location'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the location';
                }
                return null;
              },
              onSaved: (value) {
                _location = value!;
              },
            ),
            // Date and Time
            TextFormField(
              decoration: const InputDecoration(labelText: 'Date and Time'),
              readOnly: true,
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (picked != null && picked != _dateTime) {
                  setState(() {
                    _dateTime = picked;
                  });
                }
              },
              controller: TextEditingController(
                text: DateFormat('yyyy-MM-dd – kk:mm').format(_dateTime),
              ),
            ),
            // Description
            TextFormField(
              decoration: const InputDecoration(labelText: 'Description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              onSaved: (value) {
                _description = value!;
              },
            ),
            // Contact Information
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Contact Information'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your contact information';
                }
                return null;
              },
              onSaved: (value) {
                _contactInfo = value!;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Submit the report
                  LoggerUtils.logInfo('Incident Type: $_incidentType');
                  LoggerUtils.logInfo('Location: $_location');
                  LoggerUtils.logInfo('Date and Time: $_dateTime');
                  LoggerUtils.logInfo('Description: $_description');
                  LoggerUtils.logInfo('Contact Information: $_contactInfo');
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
