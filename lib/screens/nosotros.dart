import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('SOBRE NOSOTROS'), backgroundColor: Colors.black,),
        body: SingleChildScrollView(
            child: new Container(margin: EdgeInsets.all(12.0), child: Column(
                children: <Widget>[
                  new Text('\nEL EQUIPO DE OLEAZARA\n', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0)),
                  new Text("En un mundo en el que la industria alimentaria daña tanto nuestro planeta y sus ecosistemas, nosotras queremos tener opciones respetuosas y con sello orgánico.\n"),
                  new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/equipo-oleazara.jpg"),
                new Text('\nMimo, calidad y dedicación\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 20.0)),
                  new Text('\OBJETIVOS\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Text('\nEste proyecto va dirigido a todas aquellas personas que se preocupan de origen de lo que comen además del gusto por la gastronomía.\n'),
                  new Text('\nNuestro mayor objetivo es acercar las propiedades saludables de todos nuestros productos,  seleccionar y elaborar alimentos naturales y ecológicos de la mejor calidad a todas aquellas personas que como nosotras se preocupan por su salud, por el Planeta, les gusta disfrutar de la gastronomía y valoran las tradiciones ancestrales.\n'),
                  new Text('\nLuchamos cada día por restablecer el equilibrio entre nuestra salud y el medio ambiente para adquirir un compromiso de salud y prosperidad con el consumidor\n'),
                  new Text('\nNuestra misión es dejar a  nuestros hijos un mundo mejor aportando nuestro granito de arena mediante  la agricultura ecológica,  sostenible y responsable.\n'),
                  new Text('\nVISIÓN\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Text('\nNuestra visión de la alimentación se aleja de productos procesados y los mensajes destructivos. Contamos con un gran conocimiento de la naturaleza y un profundo respeto por lo natural.\n'),
                  new Text('Queremos un futuro que luche por la sostenibilidad y la calidad de vida.\n'),
                  new Text('\nCALIDAD\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Text('\nTodos nuestros productos están hechos con mimo y esmero en granjas familiares bajo los más estrictos estándares de calidad.\nCumplimos con los más exigentes estándares de calidad mediante:\n'),
                  new Text('\n – Certificación Orgánica Europea, Canadiense y Americana del Comité de Agricultura Ecológica.\n\n - FSMA.\n\n - PCQI\n\n - Certificado Kosher.'),
                  new Text('\n – Análisis químicos, organolépticos y sensoriales de Laboratorios homologados que analizan la composición de nuestros productos (Gluten Free, NON GMO, Pruebas de humo).'),
                  new Text('\n – Cursos continuos de formación de todo el personal que trabaja en el grupo Guomango S.L. para estar permanentemente informados de la legislación actual vigente en Seguridad Alimentaria'),
                  new Text('\n\nDesde nuestras instalaciones cada producto se evalúa cuidadosamente para cumplir con los requisitos de pureza, etiquetado y envasado de todos los ingredientes y prácticas de fabricación ecológica racional.\nNo hay nada elaborado con productos químicos o refinados.\n'),
                  new Text('\nDEDICACIÓN\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Text('\nEste proyecto tiene mucha dedicación y ganas, sólo podemos esperar que lo disfrutes tanto como nosotras.\n'),
                  new Text('\nPenélope García Cruz\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/penolope-garcia.jpg"),
                  new Text('\nGERENTE\n', style: TextStyle(  fontStyle: FontStyle.italic,  )),
                  new Text('\nGrado Superior Administración y Comercio en Zaragoza (España). 35 años de experiencia en el mundo empresarial y en exportación. Artífice del proyecto “Oleazara”.'),
                  new Text('Ella cree que cuanto más duro trabajas, menos fácil es rendirse. Lucha por conseguir sus sueños y tenía claro desde el principio que quería mostrar al mundo los productos aragoneses. Afirma que hay magia en las palabras, los sabores y los aromas.\n'),
                  new Text('\nPilar Real Díaz\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/pilar-real.jpg"),
                  new Text('\nDIRECTORA FINANCIERA\n', style: TextStyle(  fontStyle: FontStyle.italic,  )),
                  new Text('\nLicenciada en Ciencias Empresariales. Universidad de Zaragoza (España).\n20 años de experiencia en el mundo empresarial y en exportación.\n'),
                  new Text('Cree fervientemente en que la organización y los números pueden hacer de este mundo un lugar mejor y que la superación de uno mismo consiste simplemente en ser mejor que el día anterior.\n'),
                  new Text('\nPenélope Santamera García\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/penelope-santamera.jpg"),
                  new Text('\nGraduada en Arquitectura. Universidad de Zaragoza (España).\nAutora de la imagen, catálogos, diseños, colecciones de botellas y todo lo relacionado con la marca Oleazara.\n'),
                  new Text('Tiene un cerebro efervescente y pasó muchos años de su infancia construyendo Scalextric, pidiendo maletines de pinturas y fijándose en los decorados de las películas como para no interesarse por la arquitectura, la creatividad y el diseño.\n'),
                  new Text('\nJuncal Santamera García\n', style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15.0)),
                  new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/juncal-santamera.jpg"),

                  new Text('\nGraduada en Marketing y Publicidad.\n Creativa de nuestra página web y generadora de buenas ideas. Vive una filosofía de vida sostenible constante, analiza todos los componentes de cada producto y lucha continuamente para dejar un planeta mejor.\n'),
                  new Text('Durante el día se le puede encontrar con un libro entre las manos y por la noche aprendiendo más sobre las constelaciones y sus historias. Aprender y viajar son sus aficiones.\n'),
                  new Text('\n\n'),

                ]))));
  }
}