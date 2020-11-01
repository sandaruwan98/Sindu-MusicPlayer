import 'package:flutter/material.dart';
import 'constants.dart';

class SinduHome extends StatefulWidget {
  @override
  _SinduHomeState createState() => _SinduHomeState();
}

class _SinduHomeState extends State<SinduHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_filled_sharp),
                label: 'Play',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_sharp),
                label: 'Favourites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note_sharp),
                label: 'Songs',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        )
    );
  }
}
