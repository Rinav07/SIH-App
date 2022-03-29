import 'package:flutter/material.dart';
import 'package:sihapp/search.dart';

import 'home.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  late Widget _widgetoption = const homepage();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 0)
        {
          _widgetoption = const homepage();
        }
      else if (index == 1)
        {
          _widgetoption = const Searchpage();
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 70,
        leading: const Icon(
          Icons.view_headline,
          color: Colors.black,
          size: 35,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // titleSpacing: MediaQuery.of(context).size.width*0.1,
        title: _selectedIndex==0? const Image(
          alignment: Alignment.centerRight,
          height: 80,
          image: AssetImage('assets/Group 6.png'),
        ): null,
      ),
      body: _widgetoption,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
