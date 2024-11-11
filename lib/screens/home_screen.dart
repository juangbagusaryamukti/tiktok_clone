import 'package:flutter/material.dart';
import 'explore_screen.dart';
import 'upload_screen.dart';
import 'notifications_screen.dart';
import 'profile_screen.dart';
import '../widgets/video_player_widget.dart';
import '../widgets/custom_bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    VideoPlayerWidget(),
    ExploreScreen(),
    UploadScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavbar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}