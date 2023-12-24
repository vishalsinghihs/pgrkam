import 'package:flutter/material.dart';
import 'package:pgrkam/screens/camera_view.dart';
import 'package:pgrkam/screens/home_screen.dart';
import 'package:pgrkam/screens/job_location.dart';
import 'package:pgrkam/screens/location_home_screen.dart';
import 'package:pgrkam/screens/notification.dart';
import 'package:pgrkam/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 191,
              color: const Color(0xFFfc9722),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    right: 20,
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the NotificationPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationPage()),
                        );
                      },
                      child: const Icon(
                        Icons.notifications,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 75,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 100,
                    left: 10,
                    child: Text(
                      'GHAR GHAR \n ROZGAR AND \n KAROBAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Image.asset(
                      'assets/images/imagelogo.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 170,
                    child: Image.asset(
                      'assets/images/Ellipse 8.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on,
                        size: 60,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Find jobs nearest to\nyour location",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Oppurtunity",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),

            // ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 238, 102, 23),
                    Color.fromARGB(255, 216, 187, 69),
                  ],
                ),
              ),
              child: Row(
                children: [
                  // Small image on the left side
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/job1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Join Samsung, where innovation thrives. Shape the future with cutting-edge technology and endless opportunities',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 238, 102, 23),
                    Color.fromARGB(255, 216, 187, 69),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/job2.png'), // Replace with the actual path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Unlock your potential at Microsoft. Explore groundbreaking projects, collaborate with brilliant minds, and drive global impact',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 238, 102, 23),
                    Color.fromARGB(255, 216, 187, 69),
                  ],
                ),
              ),
              child: Row(
                children: [
                  // Small image on the left side
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/job3.png'), // Replace with the actual path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Embark on a journey with Google. Innovate, collaborate, and shape the future of technology together.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Action for Home icon
                print('Home icon pressed');
              },
              child: Image.asset(
                'assets/images/icon1.png',
                width: 88,
                height: 88,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CameraView(),
                    ));
              },
              child: Image.asset(
                'assets/images/icon2.png',
                width: 60,
                height: 60,
              ),
            ),
            label: 'Scanner',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/icon3.png',
                width: 50,
                height: 50,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}