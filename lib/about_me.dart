import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 👇 Added profile image here
          Center(
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/profile.jpeg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'My Profile Photo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(height: 30),

          // Education section
          const Text("Education",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text("BS Computer Science - KIU University"),
          const Divider(height: 30),

          // Skills section
          const Text("Skills",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            children: const [
              Chip(label: Text("Flutter")),
              Chip(label: Text("Dart")),
              Chip(label: Text("UI Design")),
              Chip(label: Text("GitHub")),
            ],
          ),
          const Divider(height: 30),

          // Hobbies section
          const Text("Hobbies",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text(
              "Reading tech blogs, designing UIs, and learning new frameworks."),
        ],
      ),
    );
  }
}
