
import 'package:entrenaappweb/models/Ejercicio.dart';
import 'package:entrenaappweb/models/MesocicloEntrenamiento.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:entrenaappweb/models/Configuracion.dart';
import 'package:entrenaappweb/models/Patron.dart';
import 'package:excel/excel.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
class CargarEntrenamiento extends StatefulWidget {
 final String idToken;
 final Map<String,dynamic> listaClientes;
 CargarEntrenamiento(this.idToken,this.listaClientes);

  @override
  _CargarEntrenamientoState createState() => _CargarEntrenamientoState();
}

class _CargarEntrenamientoState extends State<CargarEntrenamiento> {

 Configuracion configuracion;
 String nombreEntrenamiento;
  Series series;
  Repeticiones repeticiones;
  Rir rir;
  TiempoDeDescanso tiempoDeDescanso;
  MesocicloEntrenamiento mesocicloEntrenamiento;
  bool isEjercicio=false;
  bool isNombre = false;
  bool isSeries=false;
  bool isReps = false;
  bool isRir = false;
  bool isTd = false;
  bool isComentario=false;
  bool entrenamientoCargado=false;
  String comentario;
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

Patron patron;
  Future cargarMesociclo() async{
   FilePickerCross myFile = await FilePickerCross.importFromStorage(
  type: FileTypeCross.custom,       // Available: `any`, `audio`, `image`, `video`, `custom`. Note: not available using FDE
  fileExtension: '.xlsx'     // Only if FileTypeCross.custom . May be any file extension like `.dot`, `.ppt,.pptx,.odp`
);
print(myFile.path);
nombreEntrenamiento=myFile.fileName;
print(myFile.fileName.replaceRange(myFile.fileName.length-5,myFile.fileName.length,''));
   
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

     mesocicloEntrenamiento.nombreMesociclo=myFile.fileName.replaceRange(myFile.fileName.length-5,myFile.fileName.length,'');
     mesocicloEntrenamiento.fechaInicio= DateTime.now().toIso8601String();
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
            rir.semana1= 'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+1)).value.toString()}';
            rir.semana2= 'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+2)).value.toString()}';
            rir.semana3= 'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+3)).value.toString()}';
            rir.semana4= 'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1,rowIndex: row1+4)).value.toString()}';
      
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
           musculosTrabajados: ejercicioSeleccionado.musculosTrabajados,
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
   List<String> musculosTrabajados = [];
   
   diaE.patrones.forEach((patron) {
   
    patron.ejercicioSeleccionado.musculosTrabajados.forEach((key,value) {
    print(key);
    if (key=='Primario1'){
      print(value);
      print(ejercicioSeleccionado.musculosTrabajados['Primario1']);
     if (ejercicioSeleccionado.musculosTrabajados['Primario1']==value)
     
     
     musculosTrabajados.add(ejercicioSeleccionado.musculosTrabajados['Primario1']);
   
    
    
    }
    });
    
   });
   diaE.musculosTrabajados=musculosTrabajados.toSet().toList();

   print(diaE.nombreentrenamiento);
   print(diaE.musculosTrabajados);
   print(diaE.musculosTrabajados.toSet().toList());

   diaE.patrones.forEach((element) {
            
           print(element.ejercicioSeleccionado.nombre);
           print(element.comentario);
         });
 });
 
 }
 Future guardarEnBBDD(MesocicloEntrenamiento mesocicloEntrenamiento,String idCliente) async{

final url = 'https://entrenaapp2-12fbe.firebaseio.com/$idCliente/mesociclos.json?auth=${widget.idToken}';
    try{  await http.post(url, body: 
     json.encode(
    mesocicloEntrenamiento.toJson()
    ),
    );
   
 
 
  
 
  
}  catch (error) {
      print(error);
      throw error;
    }
    }
buscarEjercicio(String nombreEjercicio){
  ejercicioSeleccionado=null;
 listaEjercicios.forEach((ejercicio) {
   if (ejercicio.nombre==nombreEjercicio)
  { ejercicioSeleccionado=ejercicio;
   print('ejercicio seleccionado ${ejercicioSeleccionado.nombre}');}
 });

}
List<String> listaNombreClientes = [];
Map<String,String> clienteSeleccionado;
@override
  void initState() {
  
  widget.listaClientes.forEach((key, value) {
   
    listaNombreClientes.add(value);

  });
  print(listaNombreClientes);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return    Scaffold(
      body: (entrenamientoCargado==false) ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
               child: new DropdownButton<String>(
                                        isExpanded: true,
                                        hint: Container(
                                      
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text('Seleccionar',
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize:
                                                      (MediaQuery.of(context)
                                                                  .size
                                                                  .width <
                                                              500)
                                                          ? 16
                                                          : 24,
                                                  fontWeight: FontWeight.w500,
                                                ))),
                                        items:listaNombreClientes
                                            .map((nombre) => DropdownMenuItem(
                                                  value: nombre,
                                                  child: Text(
                                                    '$nombre',
                                                    style: TextStyle(
                                                      color: Colors.grey[300],
                                                      fontSize: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width <
                                                              500)
                                                          ? 16
                                                          : 24,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                        onChanged: (value) {
                                        widget.listaClientes.forEach((key, value1) {
                                          if (value1==value)
                                          setState(() {
                                            clienteSeleccionado={key:value1};
                                          });
                                          
                                        });
                                        print(clienteSeleccionado.values.first);
                                        print(clienteSeleccionado.keys.first);
                                        },
                                        value: (clienteSeleccionado!=null) ? clienteSeleccionado.values.first : null,
                                      ),
             ),

            SizedBox(height:5),
            RaisedButton(
              onPressed: () async{
              
              await cargarMesociclo();
              setState(() {
                entrenamientoCargado=true;
              });
              await guardarEnBBDD(mesocicloEntrenamiento,clienteSeleccionado.keys.first);
              },
              child: Text('Cargar Entrenamiento'),
            ),
          ],
        ),
      ) : Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           Icon(FontAwesomeIcons.solidFileExcel,size: 50,color:Colors.green),
           SizedBox(height:5),
           Text(nombreEntrenamiento)
          ]
        )
        // RaisedButton(
        //   onPressed: () async{
        //   await cargarMesociclo();
         
        //   await guardarEnBBDD(mesocicloEntrenamiento);
        //   },
        //   child: Text('Cargar Entrenamiento'),
        // ),
      ) ,
    );
  }
}


