import 'package:flutter/material.dart';
import 'Catalogo.dart';
import 'Pates.dart';
import 'inicio.dart';
import 'nosotros.dart';
import 'produccion.dart';
import 'novedades.dart';
import 'politica.dart';
import 'mermelada.dart';
import 'aceites.dart';
import 'aceitunas.dart';


class HomeScreen extends StatefulWidget {
  static Route<dynamic> route () {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }
  HomeState createState() => HomeState();

}

class HomeState extends State<HomeScreen>{
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return Inicio();
      case 1: return Pates();
      case 2: return Aceites();
      case 3: return Mermelada();
      case 4: return Aceitunas();
      case 5: return Nosotros();
      case 6: return FormNovedades();
      case 7: return Produccion();
      case 8: return Politica();

    }
  }
  _onSelectItem(int pos){
    setState(() {
      _selectDrawerItem = pos;

    });
  }
  final appTitle = 'OLEAZARA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(title: Text(appTitle, style: TextStyle(
        fontSize: 20.0,
        fontFamily: 'SairaSemiCondensed',
        fontWeight: FontWeight.bold)), backgroundColor: Colors.black, )),


      body: _getDrawerItemWidget(_selectDrawerItem),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/logo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              //color: Colors.black,
            ),
            ListTile(
              title: Text('INICIO'),
              leading: Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('NUESTROS PATÉS'),
              leading: Icon(Icons.fastfood),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('NUESTROS ACEITES'),
              leading: Icon(Icons.high_quality),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('NUESTRA MERMELADA ECOLÓGICA'),
              leading: Icon(Icons.cloud_queue),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('NUESTRAS ACEITUNAS'),
              leading: Icon(Icons.favorite_border),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(4);
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text('SOBRE NOSOTROS'),
              leading: Icon(Icons.people),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(5);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('RECIBE NOVEDADES'),
              leading: Icon(Icons.fiber_new),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(6);

                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text('PRODUCCIÓN'),
              leading: Icon(Icons.nature_people),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(7);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('POLÍTICA DE PRIVACIDAD'),
              leading: Icon(Icons.https),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                _onSelectItem(8);
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}