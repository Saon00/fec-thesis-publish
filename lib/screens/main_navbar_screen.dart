import 'package:fecthesispublish/components/my_drawer.dart';
import 'package:fecthesispublish/screens/blog_screen.dart';
import 'package:fecthesispublish/screens/papers_screen.dart';
import 'package:fecthesispublish/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainNavBarScreen extends StatefulWidget {
  const MainNavBarScreen({super.key});

  @override
  State<MainNavBarScreen> createState() => _MainNavBarScreenState();
}

class _MainNavBarScreenState extends State<MainNavBarScreen> {
  var _selectIndex = 0;

  final List<Widget> _list = [
    const PapersScreen(),
    const BlogScreen(),
    const ProfileScreen(),
  ];

  void _onTaped(int i) {
    setState(() {
      _selectIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // drawer
      drawer: const MyDrawer(),

      // bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onTaped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.web_rounded),
            label: 'Thesis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_rounded),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Profile',
          ),
        ],
      ),

      // body
      body: _list[_selectIndex],

      // floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
