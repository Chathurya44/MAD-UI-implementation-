import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'My Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F6F6),
      ),
      home: const ProfilePage(),
    );
  }
}

// StatefulWidget because the points will change
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Starting points
  int points = 0;

  // Increase points
  void increasePoints() {
    setState(() {
      points++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile picture
            const SizedBox(height: 15),

            Center(
              child: Stack(
                children: [
                  Container(
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile_avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Green check mark
                  const Positioned(
                    right: 0,
                    bottom: 5,
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 45,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Horizontal line
            Container(
              height: 2,
              color: Colors.black87,
            ),

            const SizedBox(height: 15),

            // Name
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 7),

            const Text(
              'Chathurya',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // Email
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 7),

            const Row(
              children: [
                Icon(
                  Icons.email,
                  size: 17,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  'chathurya04@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Points
            const Text(
              'Points',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 7),

            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.black,
                ),
                const SizedBox(width: 10),

                // Points update when + is clicked
                Text(
                  '$points',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // + button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: increasePoints,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}