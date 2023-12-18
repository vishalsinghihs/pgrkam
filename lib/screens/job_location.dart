import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JobFinderScreen(),
    );
  }
}

class JobFinderScreen extends StatefulWidget {
  @override
  _JobFinderScreenState createState() => _JobFinderScreenState();
}

class _JobFinderScreenState extends State<JobFinderScreen> {
  late Position _currentPosition;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = position;
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Finder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your Current Location:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            if (_currentPosition != null)
              Text(
                'Latitude: ${_currentPosition.latitude}\nLongitude: ${_currentPosition.longitude}',
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              )
            else
              const Text(
                'Fetching location...',
                style: TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement logic to find jobs based on the current location
                // For a real app, you would make API calls to get job data
                // and display it on a new screen.
                print('Finding jobs near you...');
              },
              child: const Text('Find Jobs Near You'),
            ),
          ],
        ),
      ),
    );
  }
}
