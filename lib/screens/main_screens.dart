import 'package:flutter/material.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_home.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_search.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_users.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_bookmarks.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PantallaInicio(),
    PantallaGuardados(),
    PantallaPerfil(),
    PantallaBuscar(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Navegacion entre pantallas',
            style: TextStyle(color: Colors.white)),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_rounded),
              backgroundColor: Colors.deepPurpleAccent,
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined),
              activeIcon: Icon(Icons.bookmark_rounded),
              backgroundColor: Colors.blueAccent,
              label: 'Guardados',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              activeIcon: Icon(Icons.person_rounded),
              backgroundColor: Colors.lightBlue,
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                activeIcon: Icon(Icons.search_outlined),
                backgroundColor: Colors.blue,
                label: 'Buscar'),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
