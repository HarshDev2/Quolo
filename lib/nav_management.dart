import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quolo/pages/challenges.dart';
import 'package:quolo/pages/profile.dart';
import 'pages/home.dart';
import 'package:quolo/pages/chat.dart';

class NavManagement extends StatefulWidget {
  const NavManagement({Key? key}) : super(key: key);

  @override
  
  // ignore: library_private_types_in_public_api
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<NavManagement> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    
    ChallengesPages(),
    
    ChatPage(),
    
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Scaffold(
        
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 600),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconSize: 22,
                ),
                GButton(
                  icon: Icons.leaderboard,
                  text: 'Practice',
                  iconSize: 22,
                ),
                GButton(
                  icon: Icons.chat_rounded,
                  text: 'Chat',
                  iconSize: 22,
                ),
                GButton(
                  icon: Icons.account_box_rounded,
                  text: 'Profile',
                  iconSize: 22,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
