import 'package:first_flutter_project/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
      home: const SecondScreen(),
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
        leading: const Icon(Icons.home),
        title: const Text('Home'),
      ),
      body: const Center(child: Text('Home')),
    ),
    Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text('Profile'),
      ),
      body: const Center(child: Text('Profile')),
    ),
    Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search),
        title: const Text('Search'),
      ),
      body: const Center(child: Text('Search')),
    ),
    Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.settings),
        title: const Text('settings'),
      ),
      body: const Center(child: Text('settings')),
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 1) {
      // Navigate to the profile screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const profileScreen()),
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
        selectedLabelStyle: const TextStyle(),
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

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            // leading: const Icon(Icons.access_alarm),
            title: const Text(
              'Facebook',
              style: TextStyle(color: Colors.lightBlue),
            ),

            actions: const [
              Icon(Icons.add),
              Icon(Icons.search),
              Icon(Icons.menu)
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home_filled),
                ),
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  icon: Icon(Icons.send),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                ),
                Tab(
                  icon: Icon(Icons.video_collection),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              SizedBox(
                child: Center(
                  child: Text('Home'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Friends'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Massege'),
                ),
              ),
              SizedBox(
                  child: Center(
                child: Text('Notification'),
              )),
              SizedBox(
                child: Center(
                  child: Text('Vedios'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('MarketPlace'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
