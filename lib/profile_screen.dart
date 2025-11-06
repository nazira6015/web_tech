import 'package:flutter/material.dart';
import 'about_me.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              // 👇 Profile Photo
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpeg'), // ✅ Correct path
              ),
              const SizedBox(height: 20),

              // 👇 Name and Profession
              const Text(
                "Nazira Muhammad Din",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),

              // 👇 Short Description
              const Text(
                "I am a passionate Flutter developer who loves building beautiful and responsive apps.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // 👇 Info Cards
              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text("nazira6015@gmail.com"),
                ),
              ),
              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text("+92 355 5790008"),
                ),
              ),
              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ListTile(
                  leading: Icon(Icons.location_on, color: Colors.blue),
                  title: Text("Gilgit Baltistan"),
                ),
              ),
            ],
          ),
        ),
      ),

      // 👇 Floating Button to About Me Screen
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
