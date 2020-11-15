import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:oleazara/app/app.dart';
import 'package:http/http.dart' as http;

class FormNovedades extends StatefulWidget {
  @override
  FormNovedadesState createState() {
    return FormNovedadesState();
  }
}

formItemsDesign(icon, item) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 7),
    child: Card(child: ListTile(leading: Icon(icon), title: item)),
  );
}
class FormNovedadesState extends State<FormNovedades> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController  email = new TextEditingController();
  static const platform = const MethodChannel('ourproject.sendstring');
  String receivedString = "";
  bool isLoading = false;
  String sentResponse;


  @override
  Widget build( BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('RECIBE NOVEDADES'), backgroundColor: Colors.black,),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(20.0),
            child: new Form(
              key: _formKey,
              child: formUI(), //Este metodo lo crearemos mas adelante
            ),
          ),
    ));// Construiremos esto en los siguientes pasos!
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo inválido";
    } else {
      return null;
    }
  }



  Future<void> save() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        setState(() {
          isLoading = true;
        });
        var url = "https://us-central1-oleazaraapp.cloudfunctions.net/mailChimp?email="+this.email.text;
        http.Response response = await http.get(url);
        if (response.statusCode == 200) {
          setState(() {
            sentResponse = "Comprueba tu email para la confirmación.";
            isLoading = false;
          });
        } else {
          setState(() {
            sentResponse = "No se ha podido añadir el usuario a nuestra lista.";
            isLoading = false;
          });
        }
      } catch (e) {
        setState(() {
          sentResponse = "Algo ha ido mal. Prueba otra vez.";
          isLoading = false;
        });
      }
    }
    }
  Widget formUI() {
    return Column(
      children: <Widget>[
        Image.asset('images/logo.jpg'),
        Text(
            "¡Suscríbete para estar al tanto de todas nuestras ofertas y novedades!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        formItemsDesign(
            Icons.email,
            TextFormField(
              controller: email,
              decoration: new InputDecoration(
                labelText: 'Introduce tu email.',
              ),
              validator: validateEmail,
            )),
        GestureDetector(
            onTap: () {
              save(); /*Aquí especificamos que queremos hacer al momento de hacer clic sobre el Container */
            }, child: Column( children: [
              if (sentResponse != null)
                Text(sentResponse, style: Theme.of(context).textTheme.headline6, textAlign: TextAlign.center) ,Container(

          margin: new EdgeInsets.all(30.0),
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30.0)), /*Aquí agregamos que tan redondeado queremos nuestro button */
            gradient: LinearGradient(colors: [
              Color(0xFF0EDED2),
              Color(0xFF03A0FE),
            ],
                begin: Alignment.topLeft,
                end: Alignment
                    .bottomRight), /* Especificamos en qué parte queremos que se muestre los colores */
          ),
          child:
            Text("Guardar", style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),

          padding: EdgeInsets.only(top: 16, bottom: 16),
        )])
    )]);
  }
  }
