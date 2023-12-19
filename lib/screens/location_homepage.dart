import 'package:flutter/material.dart';
import 'package:pgrkam/screens/current_location_screen.dart';
import 'package:pgrkam/screens/simple_app_screen.dart';

// import 'package:geolocation/screens/current_location_screen.dart';
// import 'package:geolocation/screens/simple_map_screen.dart';

class location_HomeScreen extends StatefulWidget {
  const location_HomeScreen({super.key});

  @override
  State<location_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<location_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Find Your Job through map."),
          centerTitle: true,
        ),
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const SimpleMapScreen();
                      }));
                    },
                    child: const Text("Job Corner")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const CurrentLocationScreen();
                      }));
                    },
                    child: const Text("User Current Location")),
              ],
            )));
  }
}
