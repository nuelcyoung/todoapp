import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:todo/widgets/home_widget.dart';
import 'package:todo/widgets/todo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  static const List<Widget> _appBarOption = [
    Text("Home"),
    Text("Todo"),
  ];
  static const List<Widget> _widgetOption = [
    HomeWidget(),
    TodoWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarOption[_selectIndex],
      ),
      extendBody: true,
      body: SafeArea(child: _widgetOption[_selectIndex]),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _selectIndex,
        backgroundColor: const Color(0xffBCCEF8),
        unselectedItemColor: const Color(0xffFAF7F0),
        onTap: ((value) {
          setState(() {
            _selectIndex = value;
          });
        }),
        dotIndicatorColor: Colors.black,
        // enableFloatingNavBar: false
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: const Color.fromARGB(255, 12, 42, 190),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.list_alt),
            selectedColor: const Color.fromARGB(255, 12, 42, 190),
          ),
        ],
      ),
    );
  }
}
