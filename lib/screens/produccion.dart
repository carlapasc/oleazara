import 'package:flutter/material.dart';

class Produccion extends StatelessWidget {
  @override
  Widget build( BuildContext context){
    return Scaffold( backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: Text('PRODUCCIÓN'), backgroundColor: Colors.black,),
        body: SingleChildScrollView(
            child: new Container( margin: EdgeInsets.all(12.0), child: Column (
            children: <Widget>[
          new Text('\nLOCALIZACIÓN DE LA FINCA DE OLEAZARA',style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('\nSituada en las proximidades del río Ebro a su paso por la Cartuja Baja (Zaragoza) con un cultivo superintensivo dividido en dos partes. Ecológico y Común.\n'),
          new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/produccion2.jpg"),
          new Text('\nPRODUCCIÓN\n', style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('En OZ Oleazara tomamos acciones para beneficiar al Planeta, combatir el cambio climático y sus efectos además de cumplir con los Objetivos de Desarrollo Sostenible impulsados  por las Naciones Unidas con la finalidad de dar continuidad a la Agenda de Desarrollo de los Gobiernos Mundiales incluida en la reforma de la PAC 2020',style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('\nLa agricultura industrial, la homologación por el  gusto y un mercado globalizado están acabando con los alimentos y sabores que las comunidades han compartido durante siglos.\n'),
          new Text('Nuestros productos son elaborados con las recetas tradicionales que durante  siglos hemos venido produciendo en Aragón, combinando la tradición con la tecnología y se remontan a la cocina Mediterránea que durante siglos han venido cocinando nuestros ancestros.'),
          new Text('\nTodas las colecciones de OZ Oleazara son sometidas a los cuidados más rigurosos. Seleccionamos la mejor materia prima  (siempre de vuelo, nunca de suelo) y de productores del medio rural de nuestra región de Aragón mediante un proceso realizado con mucho mimo y cuidado para proteger nuestro patrimonio con métodos naturales y ecológicos que protegen la biodiversidad.  LIBRE DE ALERGENOS.'),
          new Text('\nTodas las  botellas de cristal que contienen aceite de oliva virgen extra  están protegidas de la luz para evitar la oxidación del aceite y son de cristal reciclable.',style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('\nRECOLECCIÓN TEMPRANA Y ANTES DEL AMANECER',style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('\nEn OZ Oleazara no solo apostamos por la alta calidad de nuestros productos, sino también por una constante innovación en nuestros procesos, tanto en el campo como en la almazara, y elaboramos con una cuidada trazabilidad desde el olivar hasta el envasado de la botella.\n\n. Los mayores enemigos del aceite de oliva son la luz, el calor y el oxígeno; estos tres agentes hacen que el aceite de oliva se oxide mucho antes y pierda sus cualidades organolépticas.  En OZ  Oleazara  evitamos en todo momento todo ello para preservar al máximo los sabores  super frutados  y aromas a hierba recién  cortada y mantener  intactas todas las vitaminas, nutrientes, polifenoles, antioxidantes, Omegas,  propiedades cardiosaludables y características organolépticas  que contiene la oliva y  que tu cuerpo necesita para permanecer joven. \n\nLa recolección se realiza al amanecer y antes incluso para evitar el calentamiento de la oliva que causaría pérdida de sabores y aromas y siempre con una acidez por debajo de 0,3%.\nEs transportada en cajas abiertas para que la aceituna no se chafe ni se caliente y que llegue a la almazara fresca y sin atrojamiento.\n\nEl tiempo transcurrido desde la recolección hasta que llega a la almazara para ser prensada  es menor de dos horas para evitar la oxidación del fruto.\n\nNunca aplicamos calor para extraer el aceite. El 100% de la extracción es en frío; PRIMERA PRENSADA.\n\nEl proceso es tan minucioso de principio a fin que cuando pruebas nuestros productos tu paladar experimenta todo el sabor del campo, acompañados de un packaging  muy cuidado, diseñado en exclusiva para la propia marca.\n'),
          new Text('\NUESTRA ALMAZARA\n', style:TextStyle(fontWeight: FontWeight.bold)),
          new Image.network("https://www.oleazara.com/wp-content/uploads/2019/12/aceite-produccion.jpg"),
          new Text('\nEl aceite de Oliva Virgen Extra Oleazara se obtiene con procesos mecánicos minuciosos y una molturación a muy baja temperatura (extracción en frío).\n\n'),
          new Text('Es un jugo extraído directamente de la aceituna, de la primera prensada, y es catalogado por el panel de cata de Calidad Virgen Extra por sus atributos y cero defectos\n\n'),
          new Text('Los procedimientos de extracción son exclusivamente mecánicos.\nPor procedimientos mecánicos se entiende el molido, batido, prensado, centrifugado, decantación y filtrado, sin que el producto sufra ningún tipo de transformación que altere sus características naturales.\n\n'),
          new Text('\nDiferencias entre el Aceite de Oliva Virgen Extra, el Aceite de Oliva y el Refinado\n', style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('El Aceite de Oliva Virgen Extra se diferencia del Aceite de Oliva y del refinado en que no se obtiene con procedimientos químicos, no tiene ningún defecto y conserva sus propiedades organolépticas intactas en beneficio de nuestra salud.\n'),
          new Text('\nCómo se elabora el Aceite de Oliva Virgen Extra Oleazara\n', style:TextStyle(fontWeight: FontWeight.bold)),
          new Text('– El COI (Consejo Oleícola Internacional) exige que el Virgen Extra mantenga su acidez por debajo del 0,8% nuestros aceites tienen todos por debajo de 0,3% de acidez.\n\n'),
          new Text('– Inmediatamente después de la  recolección de  la oliva en las primeras horas del alba para evitar el calentamiento del fruto  y conservar todas sus propiedades organolépticas,  las transportamos desde el olivar a la almazara en palots  (cajas abiertas de 250 kg), para que vayan ventiladas durante el camino. Cambiamos los contenedores por palots para evitar que la oliva se golpee por el peso, además de evitar el recalentamiento que se produce en un contenedor cerrado de más kilos.\n\n'),
           new Text('– Una vez terminado todo el proceso de extracción y filtrado,  se almacena en las bodegas. Para ello utilizamos depósitos de acero inoxidable y sistema siempre-lleno regulados por temperatura, para proteger el aceite del calor, la luz y el oxígeno (los mayores enemigos del aceite), que hacen que se altere por oxidación y cambie su sabor, aroma y color.\n\n'),
           new Text('En estos depósitos se mantiene el sabor del aceite sin alteraciones, tal y como sale de la almazara, para que el aceite llegue a los consumidores con un aspecto y un sabor irreprochables.'),
            ]))));
  }
}