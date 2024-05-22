import 'package:first_flutter_project/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> screen = [
    Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),
      body: Center(child: const Text('Home')),
    ),
    Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text('Profile'),
      ),
      body: Center(child: const Text('Profile')),
    ),
    Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text('Search'),
      ),
      body: Center(child: const Text('Search')),
    ),
    Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        title: Text('settings'),
      ),
      body: Center(child: const Text('settings')),
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 1) {
      // Navigate to the profile screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => profileScreen()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.home),
      //   title: Text('Home'),
      // ),
      body: Center(
        child: screen[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(),
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          print(index);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
