import 'dart:async';
import 'dart:convert';
import 'package:diacritic/diacritic.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/models/HistorialEntrenamiento.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:firebase/firebase.dart';
import '../models/MesocicloEntrenamiento.dart';
import '../apis/api_entrenamiento.dart';
import '../models/Ejercicio.dart';
import 'package:url_launcher/url_launcher.dart';



class PrincipalRepository {
  final EntrenamientoApi entrenamientoApi;
 

  

  final Database database;

  PrincipalRepository(this.entrenamientoApi, 
    this.database);
  Ejercicio nuevoEjercicioSeleccionado;
  int sumaDiasCompletados = 0;
  bool actualizarBBDD = false;
// Variable de ayuda unicamente
  bool mesocicloCompletado = false;
  int userFase;
  int userVolume;
 num userBMI;
  String nombreUsuario;
  String sexo;
  // bool isUserPro;
  String userID;
  String deviceID;
 List<Map<String,String>> isInit=[];
  bool isSum = false;
 

 
  int tarjetasDeVuelta = 0;

 
  





  String locale;


 
  List<Ejercicio>  listaEjercicios = [
          Ejercicio.pressBanca(),
          Ejercicio.pressPlanoConMancuernas(),
          Ejercicio.pressPlanoConMancuernasAgarreNeutro(),
          Ejercicio.fondosDePechoEnBarra(),
          Ejercicio.fondosDePechoEnBarrasParalelas(),
          Ejercicio.pressHorizontalEnMaquinaAgarreNeutro(),
          Ejercicio.pressHorizontalEnMaquina(),
          Ejercicio.pressPlanoEnMultipower(),
          Ejercicio.flexionesPlanas(), 
          Ejercicio.pressVerticalConElasticos(),
          Ejercicio.pressPlanoConBandasElasticas(),
          Ejercicio.flexionesPlanasConElasticos(),
          Ejercicio.pressPlanoConkettlebel(),
          Ejercicio.pressPlanoConkettlebelRangoExtenso(),
          Ejercicio.pressInclinadoConBarra(),
          Ejercicio.pressInclinadoConMancuernas(),
          Ejercicio.pressInclinadoConvergente(),
          Ejercicio.pressInclinadoEnMultipower(),
          Ejercicio.pressInclinadoEnMaquina(),
          Ejercicio.flexionesDeclinadas(),
          Ejercicio.pressInclinadoConBandasElasticas(),
          Ejercicio.flexionesDeclinadasEnTrx(),
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
          Ejercicio.crucesEnTrx(),
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
          Ejercicio.remoEnTrx(),
          Ejercicio.remoConKettlebel(),
          Ejercicio.remoconBarraCodosSeparados(),
          Ejercicio.remoconBarraCodosSeparadosConApoyoEnBancoInclinado(),
          Ejercicio.remoConMancuernaCodosSeparados(),
          Ejercicio.remoConMancuernaCodosSeparadosEnBancoInclinado(),
          Ejercicio.remoAltoEnMaquina(),
          Ejercicio.remoConCodosSeparadosEnMaquina(),
          Ejercicio.remoConCodosSeparadosEnMultipower(),
          Ejercicio.remoEnPuntaAgarreAncho(),
          Ejercicio.remoConCodosSeparadosEnPoleaBaja(),
          Ejercicio.facePull(),
          Ejercicio.facePullBandaElastica(),
          Ejercicio.remoAltoConBandaElastica(),
          Ejercicio.remoConCodosSeparadosConBandaElastica(),
          Ejercicio.remoConCodosSeparadosConTRX(),
          Ejercicio.facePullConTRX(),
          Ejercicio.pullOverPoleaAlta(),
          Ejercicio.pullOverPoleaAltaTumbadoEnBancoInclinado(),
          Ejercicio.pullOverPoleaBajaTumbado(),
          Ejercicio.pullOverBarraRecta(),
          Ejercicio.pullOverConMancuerna(),
          Ejercicio.jalonDorsalProno(),
          Ejercicio.dominadasPronas(),
          Ejercicio.dominadasAsistidasEnCasaPronas(),
          Ejercicio.dominadasAsistidasPronas(),
          Ejercicio.dominadasTRX(),
          Ejercicio.remoConBarra(),
         Ejercicio.remoPendlay(),
         Ejercicio.remoConMancuernasAgarrePronoDePie(),
         Ejercicio.remoEnMultipower(),
         
         Ejercicio.remoEnPoleaBaja(),
         Ejercicio.remoEnPoleaBajaAgarreAncho(),
          Ejercicio.pressMilitarSentado(),
          Ejercicio.pressMilitarDePie(),
          Ejercicio.pressMilitarTrasnuca(),
          Ejercicio.pressDeHombroConMancuernas(),
          Ejercicio.pressDeHombroConMancuernasAgarreNeutro(),
          Ejercicio.pressArnold(),
          Ejercicio.pressDeHombroEnMaquina(),
          Ejercicio.pressMilitarEnMultipower(),
          Ejercicio.pressMilitarTrasnucaEnMultipower(),
          Ejercicio.pressMilitarEnPolea(),
          Ejercicio.pressMilitarConBandasElasticas(),
          Ejercicio.pressMilitarConKettblell(),
          Ejercicio.pressArnoldConKettblell(),
          Ejercicio.elevacionLateralTumbadoConMancuerna(),
          Ejercicio.comodinElevacionLateralTumbado(),
          Ejercicio.remoAlMentonAgarreAncho(),
          Ejercicio.elevacionLateralConBarra(),
          Ejercicio.elevacionLateralConMancuerna(),
          Ejercicio.elevacionLateralConMancuernaAUnaMano(),
          Ejercicio.elevacionLateralSentadoConMancuerna(),
          Ejercicio.elevacionesLateralesCrucifixConMancuerna(),
          Ejercicio.elevacionLateralConBandaElastica(),
          Ejercicio.elevacionLateralConBandaElasticaTecnica112(),
          Ejercicio.comodinElevacionLateral(),
           Ejercicio.elevacionLateralConMancuernaEnBancoInclinado(),
          Ejercicio.elevacionLateralEnMaquina(),
          Ejercicio.elevacionLateralEnCruceDePoleas(),
          Ejercicio.elevacionLateralEnPoleaAUnaMano(),
            Ejercicio.elevacionFrontalConBarraRecta(),
          Ejercicio.elevacionFrontalConMancuernas(),
          Ejercicio.elevacionFrontalEnPolea(),
          Ejercicio.elevacionFrontalConBandaElastica(),
          Ejercicio.elevacionFrontalConTrx(),
          Ejercicio.elevacionFrontalConKettlebell(),
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
          Ejercicio.pajaroConTrxDePie(),
          Ejercicio.pajaroConTrxTumbado(),
            Ejercicio.curlConcentradoConBarra(),
          Ejercicio.curlBancoScoot(),
          Ejercicio.curlDeBicepsEnMaquinaScott(),
          Ejercicio.curlArana(),
          Ejercicio.curlAranaConMancuernas(),
          Ejercicio.curlConcentradoConMancuerna(),
          Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna(),
          Ejercicio.curlDeBicepsEnBancoScottConMancuerna(),
          Ejercicio.curlDeBicepsMartilloEnBancoScottConMancuerna(),
          Ejercicio.curlDeBicepsTumbadoEnPoleaAlta(),
          Ejercicio.curlDeBicepsEnPoleaAltaADosManos(),
          Ejercicio.curlDeBicepsConcentradoConBandaElastica(),
          Ejercicio.curlDeBicepsConTrx(),
          Ejercicio.curlDeBicepsConTrxAUnaMano(),
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
        Ejercicio.fondosDeTricepsConTrx(),
        Ejercicio.pressCerradoConTrx(),

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
          Ejercicio.extensionDeTricepsConTrx(),
          Ejercicio.tricepsKickback(),
          Ejercicio.extensionDeTricepsTumbadoConTrx(),
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
          Ejercicio.sentadillaConTrx(),
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
        Ejercicio.sentadillaBulgaraConTrx(),
        Ejercicio.sentadillaFrontalConKettlebell(),
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
        Ejercicio.sentadillaLateralConTrx(),
        Ejercicio.zancadasConTrx(),

        Ejercicio.sentadillaAUnaPiernaConTrx(),
         Ejercicio.pistolSquatConKettlebell(),
        Ejercicio.zancadasConKettlebell(),
        

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
        Ejercicio.curlFemoralTumbadoConTrx(),
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
        Ejercicio.extensionDeCaderaPiernasRigidasConTrx(),
        Ejercicio.pesoMuertoRumanoAUnaPiernaConTrx(),
        Ejercicio.pesoMuertoSumo(),
        Ejercicio.sentadillaSumo(),
        
        Ejercicio.sentadillaSumoConMancuernaEntreBancos(),
        Ejercicio.sentadillaSumoEnMultipower(),
         Ejercicio.sentadillaSumoConMancuerna(),
         Ejercicio.sentadillaSumoEnPolea(),
         Ejercicio.sentadillaSumoConBandasElasticas(),
         Ejercicio.sentadillaSumoAUnaPiernaConTrx(),
         Ejercicio.sentadillaSumoConKettlebell(),
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
        Ejercicio.sentadillaBulgaraConBandasElasticasEnfasisGluteo(),
        
        Ejercicio.patadaDeGluteoConPesoCorporal(),
        Ejercicio.hiperextensionesReversasEnMultipower(),
        Ejercicio.patadaDeGluteoEnMaquina(),
        Ejercicio.patadaDeGluteoEnPolea(),
        Ejercicio.pullThroughEnPolea(),
        Ejercicio.pullThroughConBandaElastica(),
        Ejercicio.extensionDeCaderaConBandaElastica(),
        Ejercicio.extensionDeCaderaConTrx(),
        Ejercicio.puenteDeGluteosConTrx(),
        Ejercicio.extensionDeCaderaConKettlebell(),
        Ejercicio.abduccionDeGluteoConPesoCorporal(),
          Ejercicio.abduccionDeGluteoConCaderaExtendida(),
           Ejercicio.abduccionDeGluteoConBarra(),
          
          Ejercicio.abduccionesDeGluteoEnMaquina(),
          Ejercicio.abduccionDeGluteoEnMaquina(),
          Ejercicio.abduccionDeGluteoEnPolea(),
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
          Ejercicio.ruedaAbdominalConBarra(),
          Ejercicio.encogimientosAbdominales(),
          Ejercicio.encogimientosAbdominalesColgado(),
          Ejercicio.encogimientosAbdominalesEnFondos(),
          Ejercicio.encogimientosAbdominalesEnMaquina(),
          Ejercicio.absRoller(),
          Ejercicio.encogimientosAbdominalesEnPolea(),
          Ejercicio.ruedaAbdominal(),
          Ejercicio.planchaAbdominal(),
          Ejercicio.planchaAbdominalConTrx(),
          Ejercicio.ruedaAbdominalConTrx(),
          Ejercicio.encogimientosAbdominalesConTrx(),
          Ejercicio.encogimientosAbdominalesInvertidosConTrx(),

          Ejercicio.encogimientosAbdominalesColgadoConTorsion(),
        Ejercicio.encogimientosAbdominalesConTorsion(),
        Ejercicio.planchaLateral(),
        Ejercicio.pressPallof(),
        Ejercicio.lenador(),
        Ejercicio.lenadorConElasticos(),
        Ejercicio.pressPallofConBandaElastica(),
        Ejercicio.planchaLateralConTrx(),
        Ejercicio.kettlebellWindmill(),
        Ejercicio.pressHorizontalEnMaquina1(),
        Ejercicio.pressHorizontalEnMaquinaAgarreNeutro1(),
        Ejercicio.flexionesPliometricas1(),
        Ejercicio.wipersIsometricos1(),
        Ejercicio.jalonDorsalAgarreCerrado1(),
        Ejercicio.remoEnPuntaAgarreAncho1(),
        Ejercicio.remoAlMentonAgarreAncho1(),
        Ejercicio.elevacionLateralEnCruceDePoleas1(),
        Ejercicio.elevacionLateralEnMaquina1(),
        Ejercicio.elevacionesLateralesCrucifixConMancuerna1(),
        Ejercicio.abduccionHorizontalEnCruceDePoleas1(),
        Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna1()

];

buscarEjercicio(Ejercicio ejercicioSeleccionado){
  bool bool1=false;




 listaEjercicios.forEach((ejercicio) {
   if(ejercicio.nombreEs!=null)
   bool1=true;
   if (bool1) {
    //  print('entra aquii');
   if (removeDiacritics(ejercicio.nombreEs.replaceAll(".", "")).trim().toLowerCase()==removeDiacritics(ejercicioSeleccionado.nombreEs.replaceAll(".", "")).trim().toLowerCase() && ejercicio.patron!=null)
   {
    
   ejercicioSeleccionado.nombre=ejercicio.nombre;
   ejercicioSeleccionado.patron=ejercicio.patron;

   ejercicioSeleccionado.imagen=ejercicio.imagen;
  
  
   } } else {
   if (removeDiacritics(ejercicio.nombre.replaceAll(".", "")).trim().toLowerCase()==removeDiacritics(ejercicioSeleccionado.nombreEs.replaceAll(".", "")).trim().toLowerCase() && ejercicio.patron!=null)
   {
    
   ejercicioSeleccionado.nombre=ejercicio.nombre;
   ejercicioSeleccionado.patron=ejercicio.patron;

   ejercicioSeleccionado.imagen=ejercicio.imagen;
  
  
   }}

   bool1=false;
 });

}
String traducirGrupoMuscular(String musculo){

  if (musculo=="Pecho")
  return "_Estadisticas_Individuales.pecho".tr();
  else if (musculo=="Espalda")
  return "_Estadisticas_Individuales.espalda".tr();
  else if (musculo=="Biceps")
  return "_Estadisticas_Individuales.biceps".tr();
  else if (musculo=="Triceps")
  return "_Estadisticas_Individuales.triceps".tr();
  else if (musculo=="Hombro Lateral")
  return "_Estadisticas_Individuales.deltoides_lateral".tr();
  else if (musculo=="Hombro Frontal")
  return "_Estadisticas_Individuales.deltoides_anterior".tr();
  else if (musculo=="Hombro Posterior")
  return "_Estadisticas_Individuales.deltoides_posterior".tr();
  else if (musculo=="Cuadriceps")
  return "_Estadisticas_Individuales.cuadriceps".tr();
  else if (musculo=="Femoral")
  return "_Estadisticas_Individuales.isquios".tr();
  else if (musculo=="Gluteo")
  return "_Estadisticas_Individuales.gluteo".tr();
  else if (musculo=="Trapecio")
  return "_Estadisticas_Individuales.trapecio".tr();
  else if (musculo=="Gemelo")
  return "_Estadisticas_Individuales.gemelo".tr();
  else if (musculo=="Abs")
  return "_Estadisticas_Individuales.abs".tr();
  else return "null";
  

}
 

 
// Variable que unicamente ayuda (isSum)


  guardarConfiguracionUsuario(
      String nombreConfiguracion, Configuracion configuracion) {
    // database
    //     .reference()
    //     .child('${entrenamientoApi.userID}/configuracionesUsuario')
    //     .push()
    //     .set({
    //   'nombreConfiguracion': nombreConfiguracion,
    //   'configuracion': configuracion.toJson()
    // });
  }





 










  


 



  



cargarVideo() async {
    if (await canLaunch("https://www.youtube.com/watch?v=AMLIXDzrNnI")) {
      await launch("https://www.youtube.com/watch?v=AMLIXDzrNnI");
    }
  }

  

  // nos coloca todos los datos que no provienen de la base de datos
  completarMesociclo(MesocicloEntrenamiento mesociclo){


        List<String> nombre=[];
     List<String> nombre2=[];
     List<String> nombre3=[];
    List<Patron> patrones = [Patron.empujeHorizontal(Configuracion.config2intermedio),Patron.empujeInclinado(Configuracion.config2intermedio),Patron.empujeDeclinado(Configuracion.config2intermedio),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config2intermedio),Patron.aduccionHorizontal(Configuracion.config2intermedio),Patron.aduccionDeHombroYAduccionHorizontal(Configuracion.config2intermedio),Patron.visagraCadera(Configuracion.config2intermedio),Patron.aduccionDeHombro(Configuracion.config2intermedio),Patron.extensionDeHombroFlexionDeCodo(Configuracion.config2intermedio),Patron.apximacionDeEscapulas(Configuracion.config2intermedio),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.config2intermedio),Patron.aduccionYExtensionDeHombro(Configuracion.config2intermedio),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config2intermedio),Patron.empujeVertical(Configuracion.config2intermedio),Patron.flexionDeHombro(Configuracion.config2intermedio),Patron.hombroLateralTensionConstante(Configuracion.config2intermedio),Patron.hombroLateralAcortamiento(Configuracion.config2intermedio),Patron.hombroLateralEstiramiento(Configuracion.config2intermedio),Patron.abduccionHorizontal(Configuracion.config2intermedio), Patron.bicepsHombroFlexion(Configuracion.config2intermedio),Patron.bicepsHombroAnatomico(Configuracion.config2intermedio),Patron.bicepsHombroExtension(Configuracion.config2intermedio),Patron.empujeCerrado(Configuracion.config2intermedio),Patron.tricepsHombroFlexion(Configuracion.config2intermedio),Patron.tricepsHombroExtension(Configuracion.config2intermedio),Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.config2intermedio),Patron.extensionDeRodillaPesada(Configuracion.config2intermedio),Patron.extensionDeRodillaLigera(Configuracion.config2intermedio),Patron.flexionDeRodilla(Configuracion.config2intermedio),Patron.extensionDeCaderaRodillaFija(Configuracion.config2intermedio),Patron.extensionDeCaderaConCargaAxial(Configuracion.config2intermedio),Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.config2intermedio),Patron.extensionDeCaderaLigero(Configuracion.config2intermedio),Patron.abduccionDeCadera(Configuracion.config2intermedio),Patron.aduccionDeCadera(Configuracion.config2intermedio),Patron.trapecio(Configuracion.config2intermedio),Patron.gemeloRodillaExtendida(Configuracion.config2intermedio),Patron.gemeloRodillaFlexionada(Configuracion.config2intermedio),Patron.flexionDeColumna(Configuracion.config2intermedio),Patron.rotacionDeTronco(Configuracion.config2intermedio)                           ];
              
              
              mesociclo.numeroDias = mesociclo.diasEntrenamiento.length * 4;
             
              mesociclo.diasEntrenamiento.forEach((diaE) {
             
              if (diaE.patrones.isNotEmpty)
               diaE.patrones.forEach((patron) {
                
              
                //  listaEjercicios.forEach((ejercicio) {
                
                   
                //    if (ejercicio.nombre==patron.ejercicioSeleccionado.nombre)
                //    {
               
                   if(int.tryParse(patron.configuracion.repeticiones.semana1[0])!=null) {
                   if (patron.configuracion.repeticiones.semana1.length > 1 &&
                            int.tryParse(patron.configuracion.repeticiones.semana1[1]) != null) {
                          if (patron.configuracion.repeticiones.semana1.length >= 3) {
                            if (int.parse(patron.configuracion.repeticiones.semana1.replaceRange(
                                    2, patron.configuracion.repeticiones.semana1.length, '')) >
                                15)
                              patron.configuracion.trabajo = 3;
                            else
                              patron.configuracion.trabajo = 2;
                          } else if (int.parse(patron.configuracion.repeticiones.semana1) > 15)
                            patron.configuracion.trabajo = 3;
                          else
                            patron.configuracion.trabajo = 2;
                        } else if (int.parse(patron.configuracion.repeticiones.semana1[0]) > 5)
                          patron.configuracion.trabajo = 2;
                        else
                          patron.configuracion.trabajo = 1; } else patron.configuracion.trabajo=3;
                     
                   buscarEjercicio(patron.ejercicioSeleccionado);
                  //  }
                  // });
                  
                 if (patron.ejercicios==null && patron.musculosTrabajados==null) {
 
                 
                  patrones.forEach((element) { 
                    
                    if(element.numeroPatron == patron.ejercicioSeleccionado.patron) {
                      if (patron.ejercicioSeleccionado.nombreEs=='Remo supino con mancuernas con apoyo en banco inclinado')
                      print('entraaaaa');
                      patron.objetivo=element.objetivo;
                      patron.musculosTrabajados=element.musculosTrabajados;
                     
                     
                     
                      patron.ejercicios=element.ejercicios;
                     
                      patron.ejerciciosComodin=element.ejerciciosComodin;
                      if (mesociclo.materialDisponible==null){ 
                        mesociclo.materialDisponible=['gym','barra','mancuernas','elasticos','polea','bancoplano','bancoregulable','dominadas','paralelas'];
                      }
                    patron.ejercicios.forEach((ejercicio) {
               
 
      int suma=0;
      
      mesociclo.materialDisponible.forEach((materialFinal) {
       
        if (materialFinal != 'bancoplano' && materialFinal !='bancoregulable'){
      if (ejercicio.material.contains(materialFinal) == false){
       suma=suma+1;
       
      }}

     }); 
      if (mesociclo.materialDisponible.contains('bancoplano') && mesociclo.materialDisponible.contains('bancoregulable'))
     {
     if (suma==mesociclo.materialDisponible.length-2)
     nombre.add(ejercicio.nombre);
     } else if (mesociclo.materialDisponible.contains('bancoplano') || mesociclo.materialDisponible.contains('bancoregulable'))
     {
      if (suma==mesociclo.materialDisponible.length-1)
     nombre.add(ejercicio.nombre);
     } else {
       if (suma==mesociclo.materialDisponible.length)
     nombre.add(ejercicio.nombre);
     }
     }); 
     
     nombre.forEach((nombre) { 
       
        patron.ejercicios.removeWhere((element) => element.nombre == nombre);
   
      

     });

     
    patron.ejercicios.forEach((ejercicio) { 
      
        if (ejercicio.material.contains('bancoplano') == true) {
        if (mesociclo.materialDisponible.contains('bancoplano') == false && mesociclo.materialDisponible.contains('bancoregulable') == false && mesociclo.materialDisponible.contains('gym')== false) {
             nombre3.add(ejercicio.nombre);
        }
        }
        if (ejercicio.material.contains('bancoregulable') == true) {
        if (mesociclo.materialDisponible.contains('bancoregulable') == false && mesociclo.materialDisponible.contains('gym')== false) {
             nombre3.add(ejercicio.nombre);
        }
        }


    });
     nombre3.forEach((nombre) { 

        patron.ejercicios.removeWhere((element) => element.nombre == nombre);

     });

       if (patron.ejercicioSeleccionado.nombreEs=='Remo supino con mancuernas con apoyo en banco inclinado'){
                         patron.ejercicios.forEach((element) {print(element.nombreEs);});
                       }
    patron.ejercicios.forEach((ejercicio) { 
      
          if (userFase==0 && mesociclo.materialDisponible.contains('gym') && ejercicio.principiantes==false) {
            nombre2.add(ejercicio.nombre);
          }

    });
    nombre2.forEach((nombre2) { 
        patron.ejercicios.removeWhere((element) => element.nombre == nombre2);

     });
     
     
     if (patron.ejercicios.length==0) {

       patron.ejerciciosComodin.forEach((ejercicio) {
      
      mesociclo.materialDisponible.forEach((materialFinal) {

      if (ejercicio.material.contains(materialFinal) == true || ejercicio.material.contains('comodin') == true){
       if (patron.ejercicios.contains(ejercicio)== false)
       patron.ejercicios.add(ejercicio);
      }

     }); 
     
     
     });

      

        
     }
                      }
                    });
                 
                 } });
               
               });

               
  }

  // nos recoje de la base de datos el último mesociclo y le pone los datos necesarios

   obtenerUltimoMesociclo() async{
      MesocicloEntrenamiento mesocicloEntrenamiento = 
                                          historialEntrenamiento
                                          .historialEntrenamiento[
                                                  historialEntrenamiento
                                                  .historialEntrenamiento
                                                  .length -
                                              1];
                                  String id=mesocicloEntrenamiento.id;
                                  print(mesocicloEntrenamiento.id);
        //             await database
        //   .reference()
        //   .child('${entrenamientoApi.userID}/mesociclos/$id')
        //   .once()
        //   .then((DataSnapshot snapshot) {
        //     print(snapshot.value);
        //  var v1 = json.encode(snapshot.value);

        //   Map<String, dynamic> v2 = json.decode(v1);
        //   MesocicloEntrenamiento mesocicloEntrenamiento;
        //           mesocicloEntrenamiento = MesocicloEntrenamiento.fromJson(v2);
        //         completarMesociclo(mesocicloEntrenamiento);
        //                     historialEntrenamiento
        //                                   .historialEntrenamiento[
        //                                     historialEntrenamiento
        //                                           .historialEntrenamiento
        //                                           .length -
        //                                       1] =   mesocicloEntrenamiento;
        //           mesocicloEntrenamiento.id=id;
        //           print('${mesocicloEntrenamiento.id} aaaaaaaaaaarrrrrrrrrrrrggggggggggggggggg');
                                             
                  
        //   });
   }
  Future<void> obtenerDatosDeLaBBDD() async {
    // try {
 print('entraaaaaa');

      DatabaseReference ref = database.ref('W8BP78bU2oSUsOkiJvQTFLicseg1');

  await  ref.child('mesociclos').once('value').then((value) {
    DataSnapshot result = value.snapshot;
    print('okkkkkkkkkkk');
    print(result.val());
        List<String> list = [];
        List<String> list2 = [];
        Map<String, dynamic> v3 = {};
        entrenamientoApi.historialEntrenamiento.historialEntrenamiento = [];
        if (result != null) {
          var v1 = json.encode(result.val());

          Map<String, dynamic> v2 = json.decode(v1);

          v2.forEach((key, value) {
            list.add(key);
          });

          list.forEach((element) {
            list2.add(element.toLowerCase());
          });

          list2.sort((a, b) => a.compareTo(b));

          list2.forEach((element) {
            v2.forEach((key, value) {
              if (element == key.toLowerCase()) {
                Map<String, dynamic> v4 = {key: value};

                v3.addAll(v4);
              }
            });
          });

          // v3.forEach((mesocicloId, mesocicloData) {
          //   entrenamientoApi.mesocicloEntrenamiento=MesocicloEntrenamiento.fromJson(mesocicloData);
          //   entrenamientoApi.mesocicloEntrenamiento.id= mesocicloId;
          //  entrenamientoApi.historialEntrenamiento.historialEntrenamiento.add(entrenamientoApi.mesocicloEntrenamiento);
          // //  print ('${historialEntrenamiento.historialEntrenamiento[0].nombreMesociclo}');
          // });

          List<MesocicloEntrenamiento> mesociclos = [];
       

          if (v3 != null) {
            v3.forEach((key, value) {
              MesocicloEntrenamiento mesociclo;
              mesociclo = MesocicloEntrenamiento.fromJson(value);
              mesociclo.id = key;
              
  
            
              mesociclo.diasEntrenamiento.forEach((element) {
                if (element.patrones == null) {
                  element.patrones = [];
                  element.musculosTrabajados = [];
                }
              });

              mesociclos.add(mesociclo);
            });
          }
          mesociclos.sort((a, b) {
            if (a.fechaInicio != null && b.fechaInicio != null)
              return b.fechaInicio.compareTo(a.fechaInicio);
            else
              return a.id.compareTo(b.id);
          });

          mesociclos.forEach((element) {
            print(element.nombreMesociclo);
             completarMesociclo(element);   
            entrenamientoApi.historialEntrenamiento.historialEntrenamiento
                .add(element);
            
          });
        }
         DatabaseReference ref = database.ref('W8BP78bU2oSUsOkiJvQTFLicseg1');

   
    });
await ref.child('sexo').once('value').then((value) {

      DataSnapshot result = value.snapshot;
    print('$result ffffffffffffffffff');
        if (result != null)
          sexo = result.val();
        else
          sexo = 'Hombre';
      });
     
  await ref.child('userBmi').once('value').then((value) {

      DataSnapshot result = value.snapshot;
  
        if (result!= null) userBMI = result.val();
      });   

   await ref.child('userFase').once('value').then((value) {

      DataSnapshot result = value.snapshot;
  
        if (result!= null) userFase = result.val();
      });

   await ref.child('userVolume').once('value').then((value) {

      DataSnapshot result = value.snapshot;
  
       (result!= null) ? userVolume = result.val() : userVolume = 3;
      });
    //  await database
    //       .reference()
    //       .child('${entrenamientoApi.userID}/userBmi')
    //       .once()
    //       .then((DataSnapshot snapshot) {
    //     if (snapshot.value != null) userBMI = snapshot.value;
    //   });

    
    //   await database
    //       .reference()
    //       .child('${entrenamientoApi.userID}/userFase')
    //       .once()
    //       .then((DataSnapshot snapshot) {
    //     if (snapshot.value != null) userFase = snapshot.value;
    //   });
   
    //   await database
    //       .reference()
    //       .child('${entrenamientoApi.userID}/userVolume')
    //       .once()
    //       .then((DataSnapshot snapshot) {
    //     if (snapshot.value != null)
    //       userVolume = snapshot.value;
    //     else
    //       userVolume = 3;
    //   });
      

     

      
      
    // } catch (error) {
    //   print('$error');
    //   throw (error);
    // }
  }

  Future guardarEnBBDD(MesocicloEntrenamiento mesocicloEntrenamiento,
      {String idUser}) async {
    String userIdBueno;

    (idUser != null)
        ? userIdBueno = idUser
        : userIdBueno = entrenamientoApi.userID;
    print('$userIdBueno');

    // try {
     
    //     database
    //         .reference()
    //         .child('$userIdBueno/mesociclos')
    //         .push()
    //         .set(mesocicloEntrenamiento.toJson());
     
    //   print('Acabaaaaaaaa');
    //   await database
    //       .reference()
    //       .child('${entrenamientoApi.userID}/mesociclos')
    //       .once()
    //       .then((DataSnapshot snapshot) {
    //     List<String> list = [];
    //     List<String> list2 = [];
    //     Map<String, dynamic> v3 = {};
    //     entrenamientoApi.historialEntrenamiento.historialEntrenamiento = [];
    //     if (snapshot.value != null) {
    //       var v1 = json.encode(snapshot.value);

    //       Map<String, dynamic> v2 = json.decode(v1);

    //       v2.forEach((key, value) {
    //         list.add(key);
    //       });

    //       list.forEach((element) {
    //         list2.add(element.toLowerCase());
    //       });

    //       list2.sort((a, b) => a.compareTo(b));

    //       list2.forEach((element) {
    //         v2.forEach((key, value) {
    //           if (element == key.toLowerCase()) {
    //             Map<String, dynamic> v4 = {key: value};

    //             v3.addAll(v4);
    //           }
    //         });
    //       });

    //       List<MesocicloEntrenamiento> mesociclos = [];
    //       if (v3 != null) {
    //         v3.forEach((key, value) {
    //           MesocicloEntrenamiento mesociclo;
    //           mesociclo = MesocicloEntrenamiento.fromJson(value);
    //           mesociclo.id = key;
             

    //           mesociclo.numeroDias = mesociclo.diasEntrenamiento.length * 4;
    //           mesociclo.diasEntrenamiento.forEach((element) {
    //             if (element.patrones == null) {
    //               element.patrones = [];
    //               element.musculosTrabajados = [];
    //             }
    //           });
    //            completarMesociclo(mesociclo);
              
    //           mesociclos.add(mesociclo);
    //         });
    //       }
    //       mesociclos.sort((a, b) {
    //         if (a.fechaInicio != null && b.fechaInicio != null)
    //           return a.fechaInicio.compareTo(b.fechaInicio);
    //         else
    //           return null;
    //       });

    //       mesociclos.forEach((element) {
    //         entrenamientoApi.historialEntrenamiento.historialEntrenamiento
    //             .add(element);
    //       });
    //     }
    //   });
    // } catch (error) {
    //   print(error);
    //   if (error.toString().contains('TimeoutException') == true) {
    //     List<MesocicloEntrenamiento> mesociclos = [];
    //     entrenamientoApi.historialEntrenamiento.historialEntrenamiento = [];
    //     database
    //         .reference()
    //         .child('${entrenamientoApi.userID}/mesociclos')
    //         .onChildAdded
    //         .listen((event) {
    //       if (event.snapshot.value != null) {
    //         var v1 = json.encode(event.snapshot.value);

    //         Map<String, dynamic> v2 = json.decode(v1);

    //         MesocicloEntrenamiento mesociclo;
    //         mesociclo = MesocicloEntrenamiento.fromJson(v2);

    //         mesociclo.id = event.snapshot.key;

    //         mesociclo.numeroDias = mesociclo.diasEntrenamiento.length * 4;
    //         mesociclo.diasEntrenamiento.forEach((element) {
    //           if (element.patrones == null) {
    //             element.patrones = [];
    //             element.musculosTrabajados = [];
    //           }
    //         });
    //         print('${mesociclo.id}');
    //         print('${mesociclo.fechaInicio}');
    //         mesociclos.add(mesociclo);

    //         mesociclos.sort((a, b) {
    //           if (a.fechaInicio != null && b.fechaInicio != null)
    //             return a.fechaInicio.compareTo(b.fechaInicio);
    //           else
    //             return null;
    //         });
    //       }
    //     });
    //     await Future.delayed(Duration(seconds: 10));
    //     mesociclos.forEach((element) {
    //       print(element.id + 'jjjjj');
    //       entrenamientoApi.historialEntrenamiento.historialEntrenamiento
    //           .add(element);
    //     });
    //     print(entrenamientoApi
    //             .historialEntrenamiento.historialEntrenamiento.length -
    //         1);
    //     final id = entrenamientoApi
    //         .historialEntrenamiento
    //         .historialEntrenamiento[entrenamientoApi
    //                 .historialEntrenamiento.historialEntrenamiento.length -
    //             1]
    //         .id;
    //     print(id + 'por finnnn');
    //     database
    //         .reference()
    //         .child('${entrenamientoApi.userID}/mesociclos/$id')
    //         .remove();
    //   }
    //   throw error;
    // }
  }

  Future<void> eliminarMesociclo(int numeroMesociclo) async {
    // final id = entrenamientoApi
    //     .historialEntrenamiento.historialEntrenamiento[numeroMesociclo].id;

    // print('$id');
    // await Future.delayed(Duration(milliseconds: 200));
    // database
    //     .reference()
    //     .child('${entrenamientoApi.userID}/mesociclos/$id')
    //     .remove();

    // entrenamientoApi.historialEntrenamiento.historialEntrenamiento
    //     .removeAt(numeroMesociclo);
  }

  Future guardarUserFase(int userFaseActual) async {
    // database.reference().child('${entrenamientoApi.userID}').update({
    //   'userFase': userFaseActual,
    // });

    // userFase = userFaseActual;
  }
 bool validarFecha(DateTime fecha) {
  
  
if (entrenamientoApi.historialEntrenamiento.historialEntrenamiento.isNotEmpty) {
   String ultimaFecha=entrenamientoApi.historialEntrenamiento.historialEntrenamiento[entrenamientoApi.historialEntrenamiento.historialEntrenamiento.length-1].fechaInicio;
    
    if (fecha.difference(DateTime.parse(ultimaFecha)).inSeconds>=0){
   
    return true; 
    
    }
    else {

      return false;
    
    } } else return true;
 }
  Future guardarUserVolume(String volume, {bool isBack = false}) async {


    // if (volume ==
    //    "_Cuestionario.demasiadas_agujetas".tr()) {
    //   if (userVolume > 0) {
    //     if (!isBack)
    //       userVolume = userVolume - 1;
    //     else
    //       userVolume = userVolume + 1;
    //   }
    // }
    // if (volume ==
    //     "_Cuestionario.no_mejora_rendimiento".tr()) {
    //   if (userVolume > 0) {
    //     if (!isBack)
    //       userVolume = userVolume - 1;
    //     else
    //       userVolume = userVolume + 1;
    //   }
    // }
    // if (volume == "_Cuestionario.dos_anteriores".tr()) {
    //   if (userVolume > 1) {
    //     if (!isBack)
    //       userVolume = userVolume - 2;
    //     else
    //       userVolume = userVolume + 2;
    //   } else if (userVolume == 1) {
    //     if (!isBack)
    //       userVolume = userVolume - 1;
    //     else
    //       userVolume = userVolume + 1;
    //   }
    // }
    // if (volume == "_Cuestionario.trabajo_optimo".tr())
    //   userVolume = userVolume;
    // if (volume ==
    //     "_Cuestionario.no_maxima_congestion".tr()) {
    //   if (userVolume < 6) {
    //     if (!isBack)
    //       userVolume = userVolume + 1;
    //     else
    //       userVolume = userVolume - 1;
    //   }
    // }
    // if (volume ==
    //     "_Cuestionario.apenas_sentia_trabajo".tr()) {
    //   if (userVolume < 5) {
    //     if (!isBack)
    //       userVolume = userVolume + 2;
    //     else
    //       userVolume = userVolume - 2;
    //   } else if (userVolume == 5) {
    //     if (!isBack)
    //       userVolume = userVolume + 1;
    //     else
    //       userVolume = userVolume - 1;
    //   }
    // }

    // print('$userVolume 0000000001111111111');
    // if (volume!=null) 
    // database.reference().child('${entrenamientoApi.userID}').update({
    //   'userVolume': userVolume,
    // });
  }

  Future guardarUserSexo(String userSexo) async {
    // database.reference().child('${entrenamientoApi.userID}').update({
    //   'sexo': userSexo,
    // });

    // sexo = userSexo;
  }

  Future guardarUserBMI(double userBmiActual) async {
    // database.reference().child('${entrenamientoApi.userID}').update({
    //   'userBmi': userBmiActual,
    // });

    // userBMI = userBmiActual;
  }

  
  Future guardarError(String error, usuario,projectVersion) async {
    // database
    //     .reference()
    //     .child('ZZZZZZerrores')
    //     .push()
    //     .set({'error': error, 'usuario': usuario, 'projectVersion':projectVersion});

    
  }

  

  cambiarEjercicioSeleccionado(
      int numeroDia, numeroEjercicio, String ejercicioSeleccionado) {
    historialEntrenamiento
        .historialEntrenamiento[
            historialEntrenamiento.historialEntrenamiento.length - 1]
        .diasEntrenamiento[numeroDia]
        .patrones[numeroEjercicio]
        .ejercicios
        .forEach((ej) {
      if (ej.nombre == ejercicioSeleccionado) {
        nuevoEjercicioSeleccionado = ej;
      }
    });

    print(nuevoEjercicioSeleccionado.nombre);
  }

  Future<void> cambiarEjercicio(
      int numeroDia, numeroEjercicio, Ejercicio newEjercicio) async {
  

    // final id = historialEntrenamiento
    //     .historialEntrenamiento[
    //         historialEntrenamiento.historialEntrenamiento.length - 1]
    //     .id;

    // try {
    //   database
    //       .reference()
    //       .child(
    //           '${entrenamientoApi.userID}/mesociclos/$id/diasEntrenamiento/$numeroDia/patrones/$numeroEjercicio')
    //       .update({
    //     'ejercicioSeleccionado': newEjercicio.toJson(),
    //   });

    //   historialEntrenamiento
    //       .historialEntrenamiento[
    //           historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado = newEjercicio;
    //   historialEntrenamiento
    //       .historialEntrenamiento[
    //           historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado.apuntescarga=Apuntescarga(semana1: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ], semana2: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ], semana3: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ], semana4: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ]);
    //   historialEntrenamiento
    //       .historialEntrenamiento[
    //           historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado.apuntesreps=Apuntesreps(semana1: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ], semana2: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ], semana3: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ], semana4: [
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no',
    //         'no'
    //       ]);
    //     historialEntrenamiento
    //       .historialEntrenamiento[
    //           historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado.comentarios=Comentarios(
    //         semana1: 'null', semana2: 'null', semana3: 'null', semana4: 'null');
    //   buscarEjercicio(historialEntrenamiento
    //       .historialEntrenamiento[
    //           historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado);
    // } catch (error) {
    //   print(error);
    //   throw error;
    // }
  }

 
 HistorialEntrenamiento get historialEntrenamiento {
    return entrenamientoApi.historialEntrenamiento;
  }
}
