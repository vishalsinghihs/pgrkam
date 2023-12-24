import 'package:flutter/material.dart';
import 'package:pgrkam/screens/auth/currentLocationScreen.dart';
import 'package:pgrkam/screens/simpleMapScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                        return  const  SimpleMapScreen();
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

                    // ElevatedButton(
                    // onPressed: () {
                    //   Navigator.of(context).push(
                    //       MaterialPageRoute(builder: (BuildContext context) {
                    //     return const SearchPlacesScreen();
                    //   }));
                    // },
                    // child: const Text("Search your Job")),
                    
                    
              ],
            )));
  }
}
