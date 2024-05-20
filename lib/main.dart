import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
        ),
        // body: Column(
        //   children: [
        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //         height: 100,
        //         width: double.infinity,
        //         color: Colors.blueAccent,
        //         child: Text("hfjxvj "
        //             "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         height: 100,
        //         width: double.infinity,
        //         color: Colors.pink,
        //         child: Text("hfjxvj "
        //             "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 5,
        //       child: Container(
        //         height: 100,
        //         width: double.infinity,
        //         color: Colors.green,
        //         child: Text("hfjxvj "
        //             "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: SizedBox(
        //         height: 100,
        //         width: double.infinity,
        //         child: Text("hfjxvj "
        //             "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
        //       ),
        //     ),
        body:
            // SizedBox(
            //   width: 100,
            //   child: AspectRatio(
            //     aspectRatio: 2 / 5,
            //     child: FractionallySizedBox(
            //       heightFactor: 100,
            //       widthFactor: 10,
            //       alignment: Alignment.topLeft,
            //       child: Text(
            //           "fghjkl;dsfdgfhgjhkjlk fgfhgjhgfdsetyhjkghgfgdfhjhsfhfjfh"),
            //     ),
            //   ),
            // )
            AspectRatio(
          aspectRatio: 2 / 5,
          child: Container(
            color: Colors.blue,
          ),
        ));
  }
}
