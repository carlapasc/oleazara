import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

class Inicio extends StatelessWidget {
  static var instagram = 'https://www.instagram.com/oleazara/';
  static var youtube = 'https://www.youtube.com/channel/UCYaeXZoypKlkk5P7u2JH68g/featured';
  static var facebook = 'https://m.facebook.com/aceites.oleazara/';

  SocialShare(String url) async{
    if (await canLaunch(url)) {
    await launch(url);
    }
  }
  @override
  Widget build( BuildContext context){
    return Scaffold(backgroundColor: Colors.white,

        body:  Container(     margin: EdgeInsets.all(12.0),
            child:new ListView(
        children: [

          Image.asset('images/imageninicio.jpeg'),Text('\n\n Bienvenido a la aplicación de la empresa Oleazara. Aquí encontrarás la siguiente información sobre nuestra empresa:\n'
          '- El catálogo de nuestros productos.\n'
          '- Infomación sobre quiénes somos\n.'
          '- La posibilidad de suscribirse a nuestra newsletter.\n'
          '- Información sobre cómo elaboramos nuestros productos.\n'
              '- Nuestra política de privacidad.\n'
          '\n'
          'Para más información, síguenos en nuestras redes sociales.\n\n @OLEAZARA', textAlign: TextAlign.center, style: TextStyle(
    fontSize: 15.0)),
          Material(
              child: InkWell(
                onTap: () {SocialShare(instagram);},
                child: Container(
                  child: ClipRRect(
                    child: Image.asset('images/instagram.png', width:50, height: 50, ),
                  ),),
              )
          ),

          Text('\n@aceites.oleazara', textAlign: TextAlign.center, style: TextStyle(
              fontSize: 15.0)),
          Material(
              child: InkWell(
                onTap: () {SocialShare(facebook);},
                child: Container(
                  child: ClipRRect(
                    child: Image.asset('images/facebook.png', width:50, height: 50,),
                  ),),
              )
          ),
          Text('\nOleazara', textAlign: TextAlign.center,style: TextStyle(
              fontSize: 15.0)),
          Material(
              child: InkWell(
                onTap: () {SocialShare(youtube);},
                child: Container(
                  child: ClipRRect(
                    child: Image.asset('images/youtube.jpeg', width:50, height: 50,),
                  ),),
              )
          ),

          // ...*/
        ])));
        // ...
  }
}