import 'package:flutter/material.dart';

// Pages
import 'pages/live_room_page.dart';
import 'pages/profile_page.dart';
import 'pages/leaderboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Live Voice App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

/* ===============================
   HOME PAGE
================================ */
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String userId = "ashik_001";
  final String userName = "Ashik";
  final String roomId = "room_1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Live App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🎙️ Live Room
            ElevatedButton.icon(
              icon: const Icon(Icons.mic),
              label: const Text("Join Live Voice Room"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LiveRoomPage(
                      roomId: roomId,
                      userId: userId,
                      userName: userName,
                      isHost: true, // false করলে audience
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            // 👤 Profile
            ElevatedButton.icon(
              icon: const Icon(Icons.person),
              label: const Text("My Profile"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfilePage(
                      userId: userId,
                      name: userName,
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            // 🏆 Leaderboard
            ElevatedButton.icon(
              icon: const Icon(Icons.emoji_events),
              label: const Text("Leaderboard"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LeaderboardPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}