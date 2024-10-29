import 'package:flutter/material.dart';

class PredictionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
              onPressed: () {
                Navigator.pop(context, '/welcome');
              },
              icon: Image.asset(
                'assets/images/back.png', // Path to your image
                width: 24.0, // Set the width as needed
                height: 24.0, // Set the height as needed
              ),
            ),
        title: Text(
          "What's on your fridge?",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ingredient input field
            Container(
              width: 500, 
              height: 200, 
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'enter ingredients and use commas to separate',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF841E1E),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  onPressed: () {
                    // Add find recipe functionality here
                  },
                  child: Text(
                    'find recipe',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  onPressed: () {
                    // Add clear all functionality here
                  },
                  child: Text(
                    'clear all',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
