import 'package:flutter/material.dart';
import 'about_me.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'), // add image later
              ),
              const SizedBox(height: 20),
              const Text(
                "Nazira Muhammad Din",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              const Text(
                "I am a passionate Flutter developer who loves building beautiful and responsive apps.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.blue),
                  title: const Text("nazira@example.com"),
                ),
              ),
              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.blue),
                  title: const Text("+92 300 1234567"),
                ),
              ),
              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.blue),
                  title: const Text("Karachi, Pakistan"),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutMeScreen()),
          );
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.info_outline),
      ),
    );
  }
}
