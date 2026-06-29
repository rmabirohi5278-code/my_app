import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../route_helper.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  Future<void> loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt('counter') ?? 0;
    });
  }

  Future<void> incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      counter++;
    });
    await prefs.setInt('counter', counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Colors.indigo, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter: $counter',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: incrementCounter,
                child: const Text('Add'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    createFadeRoute(const DetailScreen()),
                  );
                },
                child: const Text('Go to Detail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}