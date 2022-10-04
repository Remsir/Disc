import 'package:disquera/Clases/Expander.dart';
import 'package:disquera/Screen/agregar_screen.dart';
import 'package:disquera/Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeTab extends StatelessWidget {
  final styleTextRow = new TextStyle(fontSize: 32, color: Colors.red);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Disquera Nightray'),
            leading: Icon(Icons.disc_full),
            backgroundColor: Colors.black87,
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Inicio',
                  icon: Icon(MdiIcons.home),
                ),
                Tab(
                  text: 'Biblioteca',
                  icon: Icon(Icons.my_library_music_sharp),
                ),
                Tab(
                  text: 'Catalogo',
                  icon: Icon(Icons.storefront),
                ),
                Tab(
                  text: 'Ajustes',
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            HomeScreen(),
            AgregarScreen(),
            ExpanderSpacerPage(),
            HomeScreen()
          ]),
        ),
      ),
    );
  }
}
