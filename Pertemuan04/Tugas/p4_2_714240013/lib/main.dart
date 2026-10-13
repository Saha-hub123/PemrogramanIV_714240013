import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Tugas Pertemuan 4',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 242, 110, 27),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(100, 0, 0, 0),
                  blurRadius: 10,
                  offset: Offset(6, 12),
                ),
              ],
            ),
            width: 320,
            height: 100,
            child: const Center(
              child: Text(
                'Box 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 0, 0, 0),
                  border: Border.all(color: Colors.red, width: 5),
                ),
                width: 150,
                height: 200,
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Box 2',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                width: 150,
                height: 200,
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Box 3',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
