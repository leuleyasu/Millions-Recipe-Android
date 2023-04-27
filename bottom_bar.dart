import 'package:flutter/material.dart';
import 'package:flutter_application_4/Home.dart';
import 'package:flutter_application_4/screens/Add_Recipe.dart';
import 'package:flutter_application_4/screens/Favorite.dart';
import 'package:flutter_application_4/screens/Profile.dart';

import 'screens/Myrecipe.dart';

class Bottombar extends StatefulWidget {
  const Bottombar();

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;
  static  List<Widget> Screens = <Widget>[
    Home(),
    const AddRecipe(),
    const Myrecipe(),
    const Favorite(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Screens.elementAt(_selectedIndex),
      ),
      floatingActionButton:  FloatingActionButton(
       
        backgroundColor: Colors.greenAccent,
        child: new Icon(
          Icons.add,
        ),
        elevation: 4.0,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              onPressed: () {
            
              },
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.card_travel_outlined),
                color: Colors.grey,
                onPressed: () {},
              ),
            ),
            Expanded(child: new Text('')),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.grey,
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person_outline),
                color: Colors.grey,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}