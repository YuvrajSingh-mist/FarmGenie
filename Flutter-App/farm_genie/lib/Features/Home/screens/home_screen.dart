import '../../Chat Bot/screens/chat_bot_screen.dart';
import 'package:flutter/material.dart';

import '../../../Core/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FarmGenie'),
        actions: [
          IconButton(
            icon: const Icon(Icons.nightlight_round),
            onPressed: () {
              // Implement theme toggle
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Implement sign in
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to FarmGenie',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'FarmGenie is a comprehensive mobile platform that connects farmers with an on-demand workforce, featuring a chatbot for agricultural questions, a community forum for knowledge sharing, and a marketplace for product comparison',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chatbot Feature',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'The FarmGenie chatbot is your personal farming assistant - a friendly, AI-powered companion that\'s always available to answer your agricultural questions, provide expert advice, and help you overcome any farming challenges.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ChatBotScreen(),
                            ),
                          );
                        },
                        child: const Text('Start Chatbot'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _selectedIndex,
      //     onTap: (index) {
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.chat),
      //         label: 'Chatbot',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.store),
      //         label: 'Marketplace',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.people),
      //         label: 'Community',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.more_horiz),
      //         label: 'More',
      //       ),
      //     ],
      //   ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
            ),
            child: Text('FarmGenie Menu',
                style: TextStyle(color: AppTheme.textColor, fontSize: 24)),
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              // Handle profile tap
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Handle settings tap
            },
          ),
          ListTile(
            title: const Text('Help & Support'),
            onTap: () {
              // Handle help tap
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Quick Links',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: const Text('FarmGenie'),
            onTap: () {
              // Handle FarmGenie tap
            },
          ),
          ListTile(
            title: const Text('GitHub'),
            onTap: () {
              // Handle GitHub tap
            },
          ),
          ListTile(
            title: const Text('Terms & Conditions'),
            onTap: () {
              // Handle Terms & Conditions tap
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {
              // Handle Privacy Policy tap
            },
          ),
        ],
      ),
    );
  }
}
