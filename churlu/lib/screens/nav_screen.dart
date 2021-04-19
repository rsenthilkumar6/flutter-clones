import 'package:churlu/config/palette.dart';
import 'package:churlu/screens/screens.dart';
import 'package:churlu/widgets/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(key: PageStorageKey('homeScreen')),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Profile': Icons.person,
    'Post': Icons.camera_alt,
    'Favorites': EvaIcons.heart,
    'Messages': Icons.message,
  };

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
          bottomNavigationBar: !Responsive.isDesktop(context)
              ? BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  items: _icons
                      .map((title, icon) => MapEntry(
                          title,
                          BottomNavigationBarItem(
                            icon: Icon(icon, size: 30.0),
                            title: Text(title),
                          )))
                      .values
                      .toList(),
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.blue.shade900,
                  selectedFontSize: 11.0,
                  unselectedFontSize: 11.0,
                  onTap: (index) => setState(() => _selectedIndex = index),
                )
              : null,
        ),
      ),
    );
  }
}
