import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:socio_mdia/screens/bookmarkscreen.dart';
import 'package:socio_mdia/screens/homescreen.dart';
import 'package:socio_mdia/screens/networkscreen.dart';
import 'package:socio_mdia/screens/profilescreen.dart';

class Controllerscreen extends StatefulWidget {
  const Controllerscreen({super.key});

  @override
  State<Controllerscreen> createState() => _ControllerscreenState();
}

class _ControllerscreenState extends State<Controllerscreen> {
  bool homeIsSelected = true;
  bool networkIsSelected = false;
  bool bookmarkIsSelected = false;
  bool profileIsSelected = false;
  final List<Widget> _screens = [
    const Homescreen(),
    const Networkscreen(),
    const Bookmarkscreen(),
    const Profilescreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        color: Colors.white,
        backgroundColor: Colors.grey.shade300,
        index: 0,
        animationDuration: const Duration(milliseconds: 700),
          items: const [
            Icon(Icons.home_outlined, size: 27,),
            Icon(Icons.language_outlined, size: 27,),
            Icon(Icons.bookmark_border_outlined, size: 27,),
            Icon(Icons.person_outline, size: 27,),
          ]
      ),
    );
  }
}
