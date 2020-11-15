import 'package:flutter/material.dart';

class Politica extends StatelessWidget {
  @override
  Widget build( BuildContext context){
    return Scaffold( backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: Text('POLÍTICA DE PRIVACIDAD'), backgroundColor: Colors.black,),
        body: SingleChildScrollView(
            child: new Container( margin: EdgeInsets.all(12.0), child: Column (
                children: <Widget>[
                  new Text('\nQué datos personales recogemos y por qué los recogemos',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                  new Text('\n\nContenido incrustado de otros sitios web\n', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Text('\nLos artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.\n\nEstas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.'),
                  new Text('\n\nQué derechos tienes sobre tus datos',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                  new Text('\nPuedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.\n'),
                  new Text('\n\n'),

                ]))));
  }
}