import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffe985b),
        elevation: 12.0,
        shadowColor: const Color(0xfffe985b),
        title: Column(
          children: const [
            Text("Karterina Samsovana"),
            Text(
              "Volunteer",
              style: TextStyle(fontWeight: FontWeight.normal),
            )
          ],
        ),
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
        ),
        actions: [
          Container(
            height: 60,
            width: 60,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            child: const Image(
              image: AssetImage('assets/images/pp1.png'),
              fit: BoxFit.contain,
            ),
            // child: const Image(
            //   image: AssetImage('assets/images/profile.png'),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                right: 10,
                left: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.white,
                  // Elevation for the container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 3.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xfffe985b),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Location",
                        style: GoogleFonts.mukta(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                right: 10,
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        // gradient: Gradient(colors: [Color()]),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container()
          ],
        ),
      ),
      backgroundColor: const Color(0xffFFF4CF),
      drawer: const Drawer(),
    );
  }
}
