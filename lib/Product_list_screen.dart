import 'package:first_flutter_project/Fradment/comment.dart';
import 'package:first_flutter_project/Fradment/email.dart';
import 'package:first_flutter_project/Fradment/homeFragment.dart';
import 'package:first_flutter_project/Fradment/profile.dart';
import 'package:first_flutter_project/Fradment/rating.dart' show rating;
import 'package:first_flutter_project/Fradment/search.dart';
import 'package:first_flutter_project/Fradment/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 8,
       child: Scaffold(
            appBar:AppBar(
              backgroundColor: Colors.green,
              leading: Icon(Icons.app_blocking),
              title: Text('My app',style: TextStyle(color:
            Colors.blue),),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.search),),
                Tab(icon: Icon(Icons.settings),),
                Tab(icon: Icon(Icons.email),),
                Tab(icon: Icon(Icons.person),),
                Tab(icon: Icon(Icons.comment),),
                Tab(icon: Icon(Icons.rate_review),),

              ],
            ),),
              body: const TabBarView(
                children: [
                  Home(),
                  search(),
                  Setting(),
                  mail(),
                  profile(),
                  comment(),
                  rating(),



                ],
              ),
       )
   );
  }
}
