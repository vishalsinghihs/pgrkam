// import 'package:flutter/material.dart';

// class homePage extends StatefulWidget {
//   const homePage({super.key});

//   @override
//   State<homePage> createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 191,
          color: const Color(0xFFfc9722),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.notifications, // Notification icon
                  color: Colors.white,
                  size: 75,
                ),
              ),
              Positioned(
                top: 100,
                left: 10,
                child: Text(
                  'GHAR GHAR \n ROZGAR AND \n KAROBAR', // Replace with your desired text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              // Add other content inside the container if needed
            ],
          ),
        ),
        Container(
          height: 60,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'Search Job',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Add the rest of your page content below this line
      ],
    );
  }
}
