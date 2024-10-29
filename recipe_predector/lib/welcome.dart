import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark overlay for text contrast
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Text content
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WELCOME TO\nRECEPE GENERATOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'we make the ingredients more special and\nalso plan for the next recepes',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 30),
                  // Start Now button
                  Padding(
                    padding: const EdgeInsets.only(top: 190.0), // Adds 20 pixels of margin at the top
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF841E1E),
                      padding: EdgeInsets.symmetric(horizontal: 66, vertical: 32),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                         topRight: Radius.circular(70.0), // Top-right radius
                         bottomRight: Radius.circular(70.0), // Bottom-right radius
                         ),
                       ),
                     ),
                   onPressed: () {
                     Navigator.pushNamed(context, '/prediction'); // Navigate to PredictionPage
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Start Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Image.asset(
                          'assets/images/forward.png',
                          width: 24.0, // Adjust size if needed
                          height: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
              )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
