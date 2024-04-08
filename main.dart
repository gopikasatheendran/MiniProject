import 'package:flutter/material.dart';
import 'arduino_communication.dart'; // Import the arduino_communication.dart file
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase

  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedHour = '1';
  String selectedMinute = '1';
  String selectedPeriod = 'AM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AQUAFEED'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 246,
                height: 91,
                child: ElevatedButton(
                  onPressed: () {
                    feedNow(); // Call the feedNow function from arduino_communication.dart
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    foregroundColor: Color(0xFF6E7F8D),
                    shadowColor: Colors.black,
                    elevation: 5,
                  ),
                  child: Text(
                    'FEED NOW',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Dropdown widgets
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 246,
                height: 91,
                child: ElevatedButton(
                  onPressed: () {
                    scheduleFeeding(); // Call the scheduleFeeding function from arduino_communication.dart
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    foregroundColor: Color(0xFF6E7F8D),
                    shadowColor: Colors.black,
                    elevation: 5,
                  ),
                  child: Text(
                    'SCHEDULE NOW',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Other methods
}
