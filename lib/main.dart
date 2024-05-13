import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'About Activity.dart';
import 'Login Activity.dart';

// void main() {
//   runApp(App());
// }
//
// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MyApp',
//       home: HomeActivity(),
//     );
//   }
// }
//
// class HomeActivity extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(leading: Icon(Icons.home), title: Text('Home')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => LoginActivity()));
//               },
//               child: Text('LoginActvity')),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => aboutActivity()));
//               },
//               child: Text('AboutaActivity')),
//         ],
//       ),
//     );
//   }
// }
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          colorScheme: ColorScheme.light(),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: CircleBorder(),
            ),
          )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'facebook  ',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 30, top: 0, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black87,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade50,
                      elevation: 5,
                      shape: CircleBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black87,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade50,
                      elevation: 5,
                      shape: CircleBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.menu,
                      size: 35,
                      color: Colors.black87,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade50,
                      elevation: 5,
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
        body: Container(
            padding:
                const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.people,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.message_rounded,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.video_collection,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 5, top: 10, bottom: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('img/iqbal.jpg'),
                    ),
                  ),
                  TextField()
                ],
              )
            ])));
  }
}
