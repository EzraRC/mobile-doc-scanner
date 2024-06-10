import 'package:flutter/material.dart';
import 'package:scanner_phone_app/pages/navPages/previousScans.dart';
import 'package:scanner_phone_app/pages/navPages/editScan.dart';
import 'package:scanner_phone_app/pages/navPages/createScan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    createScanPage(), // Create Scan Page
    editScanPage(),   // Edit Scan Page
    previousScansPage() // Previous Scans Page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_cut_outlined),
            label: "Edit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "History",
          ),
        ],
      ),
    );
  }
}
