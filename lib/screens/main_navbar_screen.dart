import 'package:fecthesispublish/components/gnav_bar.dart';
import 'package:fecthesispublish/components/my_drawer.dart';
import 'package:flutter/material.dart';

class MainNavBarScreen extends StatefulWidget {
  const MainNavBarScreen({super.key});

  @override
  State<MainNavBarScreen> createState() => _MainNavBarScreenState();
}

class _MainNavBarScreenState extends State<MainNavBarScreen> {
  final _screen = 0;

  final List<Widget> _index = [];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: GNavBarWidget(),
    );
  }
}
