import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Catalogo extends StatefulWidget {

  @override
  _CatalogoState createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  List data = [];



  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    var url = 'https://oleazaradatabase.000webhostapp.com/producto.php';
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(utf8.decode(response.bodyBytes));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LISTA PRODUCTOS'), backgroundColor: Colors.black,),
      body: ListView.builder(padding: EdgeInsets.all(12.0),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
            child: new Container ( margin: EdgeInsets.all(12.0), child: new Column(
              children: <Widget>[
            new Text(data[index]['titulo'], style:TextStyle(fontWeight: FontWeight.bold)),
            new Text(data[index]['descripcion']),
              new Text("-"),
            new Text(double.parse(data[index]['precio']).toStringAsFixed(2)+ "€", style:TextStyle(fontWeight: FontWeight.bold)),
              new Text("-"),
              new Image.network("https://www.oleazara.com/wp-content/uploads/" + data[index]['imagen']),
              new Text("\n\n"),


            ],
            ),
            ));
          }
          ));
  }
}

