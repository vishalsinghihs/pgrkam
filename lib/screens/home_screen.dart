import 'package:flutter/material.dart';

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
                    top: 10,
                    right: 20,
                    child: Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 251, 251, 250),
                      size: 75,
                    ),
                  ),
                  Positioned(
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
                    top: 120,
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
            SizedBox(height: 15),
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Services",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 100,
              color: Colors.amberAccent,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.account_circle,
                      size: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.add_home_work_rounded,
                      size: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.architecture_outlined,
                      size: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.arrow_upward,
                      size: 60,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Oppurtunity",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            // Container(
            //   height: 100,
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //       colors: [
            //         Color.fromARGB(255, 238, 102, 23),
            //         Color.fromARGB(255, 216, 187, 69),
            //       ],
            //     ),
            //   ),

            // ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                gradient: LinearGradient(
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
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/job1.png'), // Replace with the actual path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Adjust spacing between image and text
                  // Text in the rest of the space
                  Expanded(
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

            SizedBox(height: 20),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                gradient: LinearGradient(
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
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/job2.png'), // Replace with the actual path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Adjust spacing between image and text
                  // Text in the rest of the space
                  Expanded(
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

            SizedBox(height: 20),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                gradient: LinearGradient(
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
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/job3.png'), // Replace with the actual path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Adjust spacing between image and text
                  // Text in the rest of the space
                  Expanded(
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
            icon: Image.asset(
              'assets/images/icon1.png',
              width: 80,
              height: 80,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon2.png',
              width: 60,
              height: 60,
            ),
            label: 'Scanner',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon3.png',
              width: 50,
              height: 50,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
