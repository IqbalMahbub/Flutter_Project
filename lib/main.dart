import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Product Show App",
      home: HomeActivity(),
    );
  }
}

var myItems = [
  {"name": "Iqbal", "Phn": "01521574368", "types": "Friend"},
  {"name": "John", "Phn": "0123456789", "types": "Family"},
  {"name": "Alice", "Phn": "9876543210", "types": "Colleague"},
  {"name": "Emily", "Phn": "1234567890", "types": "Neighbor"},
  {"name": "Michael", "Phn": "5551234567", "types": "Classmate"},
  {"name": "Sarah", "Phn": "4449876543", "types": "Co-worker"},
  {"name": "David", "Phn": "3338765432", "types": "Acquaintance"},
  {"name": "Jessica", "Phn": "7776543210", "types": "Friend"},
  {"name": "Daniel", "Phn": "9998887776", "types": "Family"},
  {"name": "Sophia", "Phn": "1112223334", "types": "Colleague"},
  {"name": "James", "Phn": "6665554443", "types": "Neighbor"},
  {"name": "Emma", "Phn": "8889990001", "types": "Classmate"},
  {"name": "Ryan", "Phn": "5551239876", "types": "Co-worker"},
  {"name": "Olivia", "Phn": "4449871234", "types": "Acquaintance"},
  {"name": "Benjamin", "Phn": "3338769876", "types": "Friend"},
  {"name": "Mia", "Phn": "7776540123", "types": "Family"},
  {"name": "William", "Phn": "9998885678", "types": "Colleague"},
  {"name": "Ella", "Phn": "1112228765", "types": "Neighbor"},
  {"name": "Aiden", "Phn": "6665556543", "types": "Classmate"},
  {"name": "Sofia", "Phn": "8889992345", "types": "Co-worker"}
];

mysSnackBar(context, msg) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(msg)));
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 2),
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  mysSnackBar(context, myItems[index]['types']);
                },
                child: ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text(myItems[index]['name']!),
                  subtitle: Text(myItems[index]['Phn']!),
                ));
          }),
    );
  }
}
