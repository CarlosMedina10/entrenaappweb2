



import 'dart:html';

import 'package:entrenaappweb/models/Configuracion.dart';
import 'package:entrenaappweb/models/Patron.dart';
import 'package:excel/excel.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'dart:convert';
import 'dart:html' as html;
import '../../models/MesocicloEntrenamiento.dart';
import '../../models/Ejercicio.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaappweb/models/blog_model.dart';
import 'package:flutter/material.dart';



import 'home_screen.dart';

class PersonalProjects extends StatefulWidget {
  @override
  _PersonalProjectsState createState() => _PersonalProjectsState();
}

class _PersonalProjectsState extends State<PersonalProjects> {
  Configuracion configuracion;
  Series series;
  Repeticiones repeticiones;
  Rir rir;
  TiempoDeDescanso tiempoDeDescanso;
List<Ejercicio>  listaEjercicios = [
 Ejercicio.pressBanca(),
          Ejercicio.pressPlanoConMancuernas(),
          Ejercicio.pressPlanoConMancuernasAgarreNeutro(),
          Ejercicio.fondosDePechoEnBarra(),
          Ejercicio.fondosDePechoEnBarrasParalelas(),
          Ejercicio.pressVerticalEnMaquinaAgarreNeutro(),
          Ejercicio.pressVerticalEnMaquina(),
          Ejercicio.pressPlanoEnMultipower(),
          Ejercicio.flexionesPlanas(), 
          Ejercicio.pressVerticalConElasticos(),
          Ejercicio.pressPlanoConBandasElasticas(),
          Ejercicio.flexionesPlanasConElasticos(),
          Ejercicio.pressInclinadoConBarra(),
          Ejercicio.pressInclinadoConMancuernas(),
          Ejercicio.pressInclinadoConvergente(),
          Ejercicio.pressInclinadoEnMultipower(),
          Ejercicio.pressInclinadoEnMaquina(),
          Ejercicio.flexionesDeclinadas(),
          Ejercicio.pressInclinadoConBandasElasticas(),
          Ejercicio.pressDeclinado(),
          Ejercicio.pressDeclinadoConMancuernas(),
          Ejercicio.pressDeclinadoEnMultipower(),
          Ejercicio.pressDeclinadoEnMaquina(),
          Ejercicio.flexionesInclinadas(),
          Ejercicio.aperturasInclinadasConMancuernas(),
          Ejercicio.aperturasInclinadasEnCruceDePoleas(),
          Ejercicio.crucesEnPoleaDesdeAbajo(),
          Ejercicio.crucesConElasticosDesdeAbajo(),
          Ejercicio.flexionesPliometricas(),
          Ejercicio.wipersIsometricos(),
          Ejercicio.crucesConElasticoAAlturaMedia(),
          Ejercicio.aperturasPlanasConMancuernas(),
          Ejercicio.crucesEnMaquina(),
          Ejercicio.peckDeck(),
          Ejercicio.crucesEnPoleaAAlturaMedia(),
          Ejercicio.aperturasPlanasEnPolea(),
          Ejercicio.aperturasDeclinadasConMancuernas(),
          Ejercicio.aperturasDeclinadasEnPolea(),
          Ejercicio.crucesEnPoleaDesdeArriba(),
          Ejercicio.crucesConElasticosDesdeArriba(),
          Ejercicio.pesoMuerto(),
          Ejercicio.pesoMuertoHexagonal(),
          Ejercicio.pesoMuertoAgarreSnatch(),
          Ejercicio.rackPull(),
          Ejercicio.pesoMuertoEnMultipower(),
          Ejercicio.pesoMuertoConMancuernas(),
          Ejercicio.pesoMuertoEnPolea(),
          Ejercicio.pesoMuertoBandasElasticas(),
          Ejercicio.jalonDorsalEnMaquinaDivergente(),
          Ejercicio.jalonDorsalEnCruceDePoleas(),
          Ejercicio.jalonTrasnuca(),
          Ejercicio.dominadasTrasnuca(),
          Ejercicio.dominadasAgarreNeutroAmplio(),
          Ejercicio.aduccionDeHombroConBandaElastica(),
          Ejercicio.remoEnPuntaAgarreCerrado(),
          Ejercicio.remoAUnaManoConBarra(),
          Ejercicio.remoSupinoConBarra(),
          Ejercicio.remoNeutroConMancuernas(),
          Ejercicio.remoSupinoConMancuernasEnBancoInclinado(),
          Ejercicio.sealRow(),
          Ejercicio.remoNeutroSupinacionConMancuernas(),
          Ejercicio.remoConMancuerna(),
          Ejercicio.jalonEnMaquinaAgarreSupino(),
          Ejercicio.remoEnMaquinaAgarreNeutro(),
          Ejercicio.remoEnMaquinaAgarreSupino(),
          Ejercicio.remoSupinoEnMultipower(),
          Ejercicio.remoEnPoleaBajaAUnaMano(),
          Ejercicio.remoEnPoleaBajaSentadoAUnaMano(),
          Ejercicio.remoEnPoleaBajaSentadoAgarreNeutroCerrado(),
          Ejercicio.remoEnPoleaBajaSentadoAgarreSupino(),
          Ejercicio.jalonDorsalAgarreSupino(),
          Ejercicio.jalonDorsalAgarreCerrado(),
          Ejercicio.jalonDorsalAUnaMano(),
          Ejercicio.dominadasAgarreNeutroCerrado(),
          Ejercicio.dominadasAgarreSupino(),
          Ejercicio.dominadasAsistidasAgarreNeutroCerrado(),
          Ejercicio.dominadasAsistidasAgarreSupino(),
          Ejercicio.remoSentadoConBandasElasticas(),
          Ejercicio.remoAUnaManoConBandaElastica(),
          Ejercicio.remoADosManosConBandaElastica(),
          Ejercicio.jalonSupinoConBandaElastica(),
          Ejercicio.jalonNeutroConBandaElastica(),
          Ejercicio.remoconBarraCodosSeparados(),
          Ejercicio.remoconBarraCodosSeparadosConApoyoEnBancoInclinado(),
          Ejercicio.remoConMancuernaCodosSeparados(),
          Ejercicio.remoAltoEnMaquina(),
          Ejercicio.remoConCodosSeparadosEnMaquina(),
          Ejercicio.remoConCodosSeparadosEnMultipower(),
          Ejercicio.remoEnPuntaAgarreAncho(),
          Ejercicio.remoConCodosSeparadosEnPoleaBaja(),
          Ejercicio.facePull(),
          Ejercicio.facePullBandaElastica(),
          Ejercicio.remoAltoConBandaElastica(),
          Ejercicio.remoConCodosSeparadosConBandaElastica(),
          Ejercicio.pullOverPoleaAlta(),
          Ejercicio.pullOverPoleaAltaTumbadoEnBancoInclinado(),
          Ejercicio.pullOverPoleaBajaTumbado(),
          Ejercicio.pullOverBarraRecta(),
          Ejercicio.pullOverConMancuerna(),
          Ejercicio.jalonDorsalProno(),
          Ejercicio.dominadasPronas(),
          Ejercicio.dominadasAsistidasEnCasaPronas(),
          Ejercicio.dominadasAsistidasPronas(),
          Ejercicio.remoConBarra(),
         Ejercicio.remoPendlay(),
         Ejercicio.remoConMancuernasAgarrePronoDePie(),
         Ejercicio.remoEnMultipower(),
         Ejercicio.remoAltoEnMaquina(),
         Ejercicio.remoEnPoleaBaja(),
         Ejercicio.remoEnPoleaBajaAgarreAncho(),
          Ejercicio.pressMilitarSentado(),
          Ejercicio.pressMilitarDePie(),
          Ejercicio.pressMilitarTrasnuca(),
          Ejercicio.pressDeHombroConMancuernas(),
          Ejercicio.pressDeHombroConMancuernasAgarreNeutro(),
          Ejercicio.pressDeHombroEnMaquina(),
          Ejercicio.pressMilitarEnMultipower(),
          Ejercicio.pressMilitarTrasnucaEnMultipower(),
          Ejercicio.pressMilitarEnPolea(),
          Ejercicio.pressMilitarConBandasElasticas(),
          Ejercicio.elevacionLateralTumbadoConMancuerna(),
          Ejercicio.remoAlMentonAgarreAncho(),
          Ejercicio.elevacionLateralConBarra(),
          Ejercicio.elevacionLateralConMancuerna(),
          Ejercicio.elevacionLateralConMancuernaAUnaMano(),
          Ejercicio.elevacionLateralSentadoConMancuerna(),
          Ejercicio.elevacionesLateralesCrucifixConMancuerna(),
          Ejercicio.elevacionLateralConBandaElastica(),
          Ejercicio.elevacionLateralConBandaElasticaTecnica112(),
           Ejercicio.elevacionLateralConMancuernaEnBancoInclinado(),
          Ejercicio.elevacionLateralEnMaquina(),
          Ejercicio.elevacionLateralEnCruceDePoleas(),
          Ejercicio.elevacionLateralEnPoleaAUnaMano(),
            Ejercicio.elevacionFrontalConBarraRecta(),
          Ejercicio.elevacionFrontalConMancuernas(),
          Ejercicio.elevacionFrontalEnPolea(),
          Ejercicio.elevacionFrontalConBandaElastica(),
           Ejercicio.pajaroConMancuernasDePie(),
          Ejercicio.pajaroConMancuernasEnBancoInclinado(),
          Ejercicio.pajaroConMancuernasSentado(),
        
          Ejercicio.abduccionHorizontalEnMaquinaContractoraInversa(),
          Ejercicio.abduccionHorizontalEnCruceDePoleas(),
          Ejercicio.abduccionHorizontalEnCruceDePoleasTumbado(),
          Ejercicio.pajaroPosteriorEnPoleaBaja(),
          Ejercicio.pajaroPosteriorEnPoleaBajaSentado(),
           Ejercicio.esquiador(),
           Ejercicio.pajaroPosteriorConBandaElastica(),
          Ejercicio.abduccionDeHombroConBandaElastica(),
            Ejercicio.curlConcentradoConBarra(),
          Ejercicio.curlBancoScoot(),
          Ejercicio.curlArana(),
          Ejercicio.curlAranaConMancuernas(),
          Ejercicio.curlConcentradoConMancuerna(),
          Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna(),
          Ejercicio.curlDeBicepsEnBancoScottConMancuerna(),
          Ejercicio.curlDeBicepsMartilloEnBancoScottConMancuerna(),
          Ejercicio.curlDeBicepsTumbadoEnPoleaAlta(),
          Ejercicio.curlDeBicepsEnPoleaAltaADosManos(),
          Ejercicio.curlDeBicepsConcentradoConBandaElastica(),
           Ejercicio.curlConBarraRectaYBandaElastica(),
          Ejercicio.curlConBarraRecta(),
          Ejercicio.curlConBarraZ(),
          Ejercicio.curlDeBicepsConMancuernasDePie(),
          Ejercicio.curlMartilloConMancuerna(),
          
          Ejercicio.curlDeBicepsConBarraEnPoleaBaja(),
          Ejercicio.curlDeBicepsConCuerdaEnPoleaBaja(),
          Ejercicio.curlDeBicepsTumbadoEnPoleaBaja(),
         
          Ejercicio.curlDeBicepsConBandaElastica(),
          Ejercicio.curlDeBicepsConBandaElasticaAgarreReverso(),
          Ejercicio.curlDeBicepsConElasticoSentado(),
          Ejercicio.curlDeBicepsMartilloConBandaElastica(),
          Ejercicio.curlDeArrastreConBarraRecta(),
          Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas(),
          Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasAgarreNeutro(),
          Ejercicio.curlDeBicepsEnPoleaBajaHombroExtension(),
           Ejercicio.pressCerrado(), 
        Ejercicio.pressCerradoConMancuernas(),
        Ejercicio.fondosDeTriceps(),
        Ejercicio.fondosDeTricepsEnMaquina(),
        Ejercicio.pressCerradoEnMultipower(),
        Ejercicio.flexionesCerradasConBandaElastica(),
        Ejercicio.flexionesCerradas(),
         Ejercicio.pressFrances(),
          Ejercicio.pressFrancesBarraZ(),
          Ejercicio.extensionDeTricepsConBarraRecta(),
          
          Ejercicio.pressFrancesConMancuernas(),
          Ejercicio.extensionDeTricepsConMancuerna(),
          Ejercicio.extensionDeTricepsConMancuernaAUnaMano(),
          Ejercicio.extensionDeTricepsConMancuernaSentado(),
          Ejercicio.extensionDeTricepsEnMaquina(),

          Ejercicio.extensionDeTricepsEnPoleaAltaConBarraRecta(),
          Ejercicio.extensionDeTricepsEnPoleaAltaConCuerda(),
          Ejercicio.extensionDeTricepsEnPoleaBajaADosManos(),
          Ejercicio.extensionDeTricepsEnPoleaBajaAUnaMano(),

          Ejercicio.extensionDeTricepsConElasticoArriba(),
          Ejercicio.extensionDeTricepsConBandaElasticaAUnaMano(),
          Ejercicio.extensionDeTricepsElasticoAbajao(),
          Ejercicio.pressFrancesConBandaElastica(),
           Ejercicio.patadaDeTricepsConMancuerna(),
        Ejercicio.fondosEntreBancos(),
        Ejercicio.fondosDeTricepsEnMaquinaDeDominadasAsistidas(),
        Ejercicio.patadaDeTricepsEnPoleaBaja(),
        Ejercicio.patadaDeTricepsConBandaElastica(),
        Ejercicio.sentadilla(),
          
          Ejercicio.sentadillaEnMultipower(),
           Ejercicio.sentadillaConMancuernas(),
          Ejercicio.sentadillaConMancuernasAUnaPierna(),
          Ejercicio.sentadillaAUnaPiernaPesoCorporal(),
          Ejercicio.sentadillaConGomaElastica(),
          Ejercicio.sentadillaFrontal(),
        Ejercicio.sentadillaHackConBarra(),
        Ejercicio.splitSquat(),
        
        Ejercicio.sentadillaEnMultipowerCaderaPerpendicular(),
        Ejercicio.sentadillaHack(),
        Ejercicio.sentadillaHackEnMultipower(),
        Ejercicio.sentadillaFrontalEnMultipower(),
        Ejercicio.prensaInclinada(),
        Ejercicio.prensaVerticalEnMultipower(),
        Ejercicio.prensaHorizontalEnMaquina(),
        Ejercicio.sentadillaFrontalConMancuerna(),
        Ejercicio.sentadillaFrontalEnPolea(),
        Ejercicio.sentadillaBulgaraConBandaElastica(),
        Ejercicio.zancadasConBandaElastica(),
        Ejercicio.zancadasConBarra(),
        Ejercicio.sentadillaBulgaraConBarraRecta(),
        Ejercicio.sentadillaBulgaraConMancuernas(),
        Ejercicio.zancadasConMancuernas(),
        Ejercicio.extensionDeCuadricepsEnMaquina(),
        Ejercicio.prensaHorizontalEnMaquinaConPiesAbajo(),
        Ejercicio.prensaVerticalEnMaquina(),
        Ejercicio.stepUpEnMultipower(),
        Ejercicio.zancadasEnMultipower(),
        Ejercicio.sentadillaBulgaraEnMultipower(),
        Ejercicio.sentadillaSissy(),
        Ejercicio.zancadasEnPolea(),
        Ejercicio.extensionDeCuadricepsConBandaElasticaDePie(),
        Ejercicio.extensionDeCuadricepsConBandaElasticaSentado(),
        // Ejercicio.levantamientoDePiernaConBandaElastica(),
        Ejercicio.nordicCurl(),
        Ejercicio.femoralTumbadoConMancuerna(),
        Ejercicio.curlFemoralConToalla(),
        Ejercicio.curlFemoralSentadoEnMaquina(),
        Ejercicio.curlFemoralDePie(),
        Ejercicio.curlFemoralTumbado(),
        Ejercicio.nordicCurlAsistidoEnPolea(),
        Ejercicio.curlFemoralTumbadoConBandaElastica(),
        Ejercicio.curlFemoralDePieConBandaElastica(),
        Ejercicio.pesoMuertoRumano(),
        Ejercicio.pesoMuertoAUnaPierna(),
        Ejercicio.buenosDias(),
        Ejercicio.pesoMuertoPiernasRigidasConMancuernas(),
        Ejercicio.pesoMuertoRumanoConMancuernas(),
        Ejercicio.pesoMuertoAUnaPiernaConMancuernas(),
        Ejercicio.hiperExtensionesReversas(),
        Ejercicio.hiperextensionesReversasEnMaquina(),
        Ejercicio.pullThroughPiernasRigidasEnPolea(),
         Ejercicio.pesoMuertoRumanoConBandaElastica(),
        Ejercicio.pesoMuertoAUnaPiernaConBandaElastica(),
        Ejercicio.buenosDiasConBandaElastica(),
        Ejercicio.extensionDeCaderaPiernasRigidasConBandaElastica(),
        Ejercicio.pesoMuertoSumo(),
        Ejercicio.sentadillaSumo(),
        
        Ejercicio.sentadillaSumoConMancuernaEntreBancos(),
        Ejercicio.sentadillaSumoEnMultipower(),
         Ejercicio.sentadillaSumoConMancuerna(),
         Ejercicio.sentadillaSumoEnPolea(),
         Ejercicio.sentadillaSumoConBandasElasticas(),
         Ejercicio.hipThrust(),
        Ejercicio.puenteDeGluteosConBarra(),
        
        Ejercicio.hipThrustEnMaquina(),
        Ejercicio.hipThrustPesoCorporal(),
        Ejercicio.hipThrustConBandaElastica(),
        Ejercicio.hipThrustDeRodillasConBandaElastica(),
         Ejercicio.frogHipThrust(),
        Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteo(),
        Ejercicio.puenteDeGluteosAUnaPierna(),
        Ejercicio.extensionDeGluteoAUnaPierna(),
        Ejercicio.patadaDeGluteoConBandaElastica(),
        Ejercicio.hipThrustAUnaPierna(),
        Ejercicio.sentadillaBulgaraEnfasisGluteo(),
        
        Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteoGym(),
        
        Ejercicio.patadaDeGluteoConPesoCorporal(),
        Ejercicio.hiperextensionesReversasEnMultipower(),
        Ejercicio.patadaDeGluteoEnMaquina(),
        Ejercicio.patadaDeGluteoEnPolea(),
        Ejercicio.pullThroughEnPolea(),
        Ejercicio.abduccionDeGluteoConPesoCorporal(),
          Ejercicio.abduccionDeGluteoConCaderaExtendida(),
           Ejercicio.abduccionDeGluteoConBarra(),
          
          Ejercicio.abduccionesDeGluteoEnMaquina(),
          Ejercicio.abduccionDeGluteoEnMaquina(),
          Ejercicio.aduccionDeGluteoEnPolea(),
          Ejercicio.abduccionDeGluteoConGomaElastica(),
          Ejercicio.abduccionDeGluteoConGomaElasticaTumbado(),
          Ejercicio.abduccionDeGluteoConGomaElasticaDeRodillas(),
          Ejercicio.pasosLateralesConBandaElastica(),
          Ejercicio.aduccionesEnMaquina(),
          Ejercicio.aduccionDeGluteoEnPolea(),
          Ejercicio.aduccionDeGluteoConGomaElastica(),
          Ejercicio.aduccionDeGluteoConPesoCorporal(),
          Ejercicio.remoAlMentonConBarraRecta(),
        Ejercicio.encogimientosDeTrapecioConBarra(),
        Ejercicio.remoAlMentonConMancuerna(),
        Ejercicio.encogimientosDeTrapecioConMancuerna(),
        Ejercicio.encogimientosDeTrapecioEnMultipower(),
        Ejercicio.remoAlMentonEnMultipower(),
        Ejercicio.remoAlMentonEnPolea(),
        Ejercicio.encogimientosDeTrapecioEnPolea(),
        Ejercicio.remoAlMentonConBandaElastica(),
        Ejercicio.encogimientosDeTrapecioConBandaElastica(),
         Ejercicio.gemeloDePieConBarra(),
          Ejercicio.gemeloDePieConMancuerna(),
          Ejercicio.gemeloDePieConMancuernaAUnaPierna(),
          Ejercicio.gemeloDePie(),
          Ejercicio.gemeloDePieEnMultipower(),
          Ejercicio.gemeloEnMaquina(),
          Ejercicio.gemeloEnPrensaInclinada(),
          Ejercicio.gemeloDePieConCargaExterna(),
          Ejercicio.gemeloDePieConBandasElasticas(),
          Ejercicio.gemeloDePieConBandasElasticasAUnaPierna(),
          Ejercicio.gemeloSentadoConBandasElasticas(),
          Ejercicio.gemeloSentadoConBarra(),
          Ejercicio.gemeloSentadoConMancuernas(),
          Ejercicio.gemeloSentado(),
          Ejercicio.gemeloSentadoEnMultipower(),
          Ejercicio.gemeloSentadoConCargaExterna(),
          Ejercicio.gemeloDePieConBandasElasticas(),
          Ejercicio.gemeloDePieConBandasElasticasAUnaPierna(),
          Ejercicio.ruedaAbdominalConBarra(),
          Ejercicio.encogimientosAbdominales(),
          Ejercicio.encogimientosAbdominalesColgado(),
          Ejercicio.encogimientosAbdominalesEnFondos(),
          Ejercicio.encogimientosAbdominalesEnMaquina(),
          Ejercicio.absRoller(),
          Ejercicio.encogimientosAbdominalesEnPolea(),
          Ejercicio.ruedaAbdominal(),
          Ejercicio.planchaAbdominal(),
          Ejercicio.encogimientosAbdominalesColgadoConTorsion(),
        Ejercicio.encogimientosAbdominalesConTorsion(),
        Ejercicio.planchaLateral(),
        Ejercicio.pressPallof(),
        Ejercicio.lenador(),
        Ejercicio.lenadorConElasticos(),
        Ejercicio.pressPallofConBandaElastica(),
];
Ejercicio ejercicioSeleccionado;
MesocicloEntrenamiento mesocicloEntrenamiento;
Patron patron;
buscarEjercicio(String nombreEjercicio){
  ejercicioSeleccionado=null;
 listaEjercicios.forEach((ejercicio) {
   if (ejercicio.nombre==nombreEjercicio)
  { ejercicioSeleccionado=ejercicio;
   print('ejercicio seleccionado ${ejercicioSeleccionado.nombre}');}
 });

}

  List<BlogModel> blogList = List<BlogModel>();
  bool isEjercicio=false;
  bool isNombre = false;
  bool isSeries=false;
  bool isReps = false;
  bool isRir = false;
  bool isTd = false;
  bool isComentario=false;
  String comentario;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateList();
  }

  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: displaySize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: isSmallScreen(context)
                  ? Container()
                  : AutoSizeText(
                      "Gestión de clientes",
                      style: TextStyle(fontSize: 40),
                    ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: displaySize.width < 1200 ? 2 : 3,
              crossAxisSpacing: 10,
              childAspectRatio:isSmallScreen(context)?0.9: 1.3,
              padding: EdgeInsets.all(5),
              children: <Widget>[
                ...List<Widget>.generate(blogList.length, (int index) {
                  return GestureDetector(
                    onTap: () async{
                     
 
//  List<String> listaMusculos= ['Pecho','Espalda','Hombro Frontal','Hombro Lateral','Hombro Posterior','Biceps','Triceps','Cuadriceps','Femoral','Gluteo','Trapecio','Gemelo','Abs'];
// FilePickerCross myFile = await FilePickerCross.importFromStorage(
//   type: FileTypeCross.any,       // Available: `any`, `audio`, `image`, `video`, `custom`. Note: not available using FDE
//   fileExtension: '.txt, .md'     // Only if FileTypeCross.custom . May be any file extension like `.dot`, `.ppt,.pptx,.odp`
// );
// print(myFile.path);

//     var bytes = myFile.toUint8List();
//     var excel = Excel.decodeBytes(bytes);
//       Sheet sheetObject = excel['Hoja 3'];
//       int rowindex=3;
//       int columnindex=3;
//       listaMusculos.forEach((musculo) { 
//       listaEjercicios.forEach((ejercicio) {
//         if (ejercicio.musculosTrabajados['Primario1']==musculo){
//           print(ejercicio.nombre);
//   var cell = sheetObject.cell(CellIndex.indexByColumnRow(columnIndex:columnindex,rowIndex:rowindex));
//  cell.value = ejercicio.nombre; 
//   rowindex=rowindex+1;

//   }
 
 
//  }); 
//  rowindex=3;
//  columnindex=columnindex+1;
 
//  });
//   excel.encode().then((excel_bytes) {
//    final blob = html.Blob([excel_bytes]);
//    final url = html.Url.createObjectUrlFromBlob(blob);
//    final anchor = html.document.createElement('a') as html.AnchorElement
//      ..href = url
//      ..style.display = 'none'
//      ..download = 'Prueba.xlsx';
//    html.document.body.children.add(anchor);

//    // download the file
//    anchor.click();

//    // cleanup
//    // html.document.body.children.remove(anchor);
//    // html.Url.revokeObjectUrl(url);
//  });



FilePickerCross myFile = await FilePickerCross.importFromStorage(
  type: FileTypeCross.any,       // Available: `any`, `audio`, `image`, `video`, `custom`. Note: not available using FDE
  fileExtension: '.txt, .md'     // Only if FileTypeCross.custom . May be any file extension like `.dot`, `.ppt,.pptx,.odp`
);
print(myFile.path);

    var bytes = myFile.toUint8List();
    var excel = Excel.decodeBytes(bytes);
    int hoja=0;
    print(excel.tables.length);
    int hojas = excel.tables.length-1;
    if (hojas==2) {
      mesocicloEntrenamiento=MesocicloEntrenamiento.mesocicloVacio2Dias();
    } else if (hojas==3) {
      mesocicloEntrenamiento=MesocicloEntrenamiento.mesocicloVacio3Dias();
    } else if (hojas==4) {
      mesocicloEntrenamiento=MesocicloEntrenamiento.mesocicloVacio4Dias();
    } else if (hojas==5) {
      mesocicloEntrenamiento=MesocicloEntrenamiento.mesocicloVacio5Dias();
    } else if (hojas==6) {
      mesocicloEntrenamiento=MesocicloEntrenamiento.mesocicloVacio6Dias();
    }
    for (var table in excel.tables.keys) {

      print(table); //sheet Name
       Sheet sheetObject = excel[table];
    
       
        int row1=0;
       
      for (var row in excel.tables[table].rows) {
       int column1=0;
        for (var item in row) {
         
          if (isEjercicio==false) {
          if (item == 'Ejercicio')
          {
            isEjercicio=true;
     
          buscarEjercicio(sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value);

          
          }

          
          }
          else if ( item=='Series' ) 
          {
            isSeries=true;
            series=Series();
            series.semana1=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value;
            series.semana2=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+2)).value;
            series.semana3=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+3)).value;
            series.semana4=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+4)).value;
        
          }
          else if ( item=='Repeticiones' ) 
          {
            isReps=true;
            repeticiones=Repeticiones();
            repeticiones.semana1=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value.toString();
            repeticiones.semana2=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+2)).value.toString();
            repeticiones.semana3=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+3)).value.toString();
            repeticiones.semana4=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+4)).value.toString();
         
          }
          else if ( item=='RIR' ) 
          {
            isRir=true;
            rir=Rir();
            rir.semana1=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value.toString();
            rir.semana2=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+2)).value.toString();
            rir.semana3=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+3)).value.toString();
            rir.semana4=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+4)).value.toString();
      
          }
          else if ( item=='Tiempo de descanso' ) 
          {
            isTd=true;
            tiempoDeDescanso=TiempoDeDescanso();
            tiempoDeDescanso.semana1=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value;
            tiempoDeDescanso.semana2=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+2)).value;
            tiempoDeDescanso.semana3=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+3)).value;
            tiempoDeDescanso.semana4=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+4)).value;
         
          }
          else if ( item=='Comentario' ) 
          {
            
            isComentario=true;
            comentario=sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value;
            
        
          }
         
          column1=column1+1;
        }
       if (isEjercicio && isSeries && isReps && isRir && isTd && isComentario)
       {
         patron=Patron(
           ejercicioSeleccionado: ejercicioSeleccionado,
           comentario: comentario,
         configuracion: Configuracion(series: series,repeticiones: repeticiones,rir: rir,tiempoDeDescanso: tiempoDeDescanso));
         isEjercicio=false;
         isSeries=false;
         isReps=false;
         isRir=false;
         isTd=false;
         isComentario=false;
        
         mesocicloEntrenamiento.diasEntrenamiento[hoja].patrones.add(patron);
        
       }
        row1=row1+1;
      }
      hoja=hoja+1;

    }
 mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
   print(diaE.nombreentrenamiento);

   diaE.patrones.forEach((element) {
            
           print(element.ejercicioSeleccionado.nombre);
           print(element.comentario);
         });
 });
 
 
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: displaySize.width / 2,
                              child: AutoSizeText(
                                blogList[index].name,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            Image.network(blogList[index].image),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }

  void generateList() {
    blogList.add(BlogModel(
        "Movie Time",
        "https://lh3.googleusercontent.com/0SeQhdfj6r6WoFMUyHSqAPQjs-ypwp5jnyjeROC5cTtSHjpcMIhp0NeVWw7dzxRWACIv=s180-rw",
        "https://play.google.com/store/apps/details?id=com.rawat.ashish.movietime"));
    blogList.add(BlogModel(
        "News Web",
        "https://lh3.googleusercontent.com/trIn-8zRZNY_3J9vtYv9TxzIHig47yGBQtuih_mV_z_ul-O6N4fST_H9QqCVSfyLzcY=s180-rw",
        "https://play.google.com/store/apps/details?id=com.rawat.ashish.newsweb"));
  }
}
