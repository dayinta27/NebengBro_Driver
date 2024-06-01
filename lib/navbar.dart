import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  static List<Widget> body = <Widget>[
    Beranda(username: 'user',),
    // Activity(),
    // Chat(),
    // Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 23,
            ),
            label: 'Home',
          ),
        
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              size: 23,
            ),
            label: 'Dompet',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 23,
            ),
            label: 'Chat',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 23,
            ),
            label: 'Profile',
          ),
        ],
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff3F51B5),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.amber,
        onTap: _onItemTapped,
        
      ),
    );
  }
}