
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:entrenaapp/repository/repo_principal.dart';

import '../models/Ejercicio.dart';
import '../models/MesocicloEntrenamiento.dart';


class CreacionRepository {
final PrincipalRepository principalRepository;

CreacionRepository (this.principalRepository,);

String userID;
List<Map<String,Configuracion>> listaDeConfiguracionesUsuario =[];


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
      
       

];

 List<String>  listaEjerciciosString = [
//  Ejercicio.pressBanca().nombre,
//           Ejercicio.pressPlanoConMancuernas().nombre,
          
//           Ejercicio.fondosDePechoEnBarra().nombre,
//           Ejercicio.fondosDePechoEnBarrasParalelas().nombre,
//           Ejercicio.pressVerticalEnMaquinaAgarreNeutro().nombre,
//           Ejercicio.pressVerticalEnMaquina().nombre,
//           Ejercicio.pressPlanoEnMultipower().nombre,
//           Ejercicio.pesoMuerto().nombre,
//           Ejercicio.pesoMuertoHexagonal().nombre,
//           Ejercicio.pesoMuertoAgarreSnatch().nombre,
//           Ejercicio.rackPull().nombre,
          
//           Ejercicio.pesoMuertoEnMultipower().nombre,

];

borrarConfiguracion(String id) async{
 
// principalRepository.database.reference().child('${principalRepository.entrenamientoApi.userID}/configuracionesUsuario/$id').remove();
// Map<String,Configuracion> eliminar;
// listaDeConfiguracionesUsuario.forEach((element) {
//   print(element.keys.first);
  
//   if (element.values.first.id==id) {
//     eliminar=element;
//  }
                                           
// });
//  listaDeConfiguracionesUsuario.removeAt(listaDeConfiguracionesUsuario.indexOf(eliminar)); 

 
 }

 cargarConfiguraciones() {
  //  principalRepository.database.reference().child('${principalRepository.entrenamientoApi.userID}/configuracionesUsuario').
    
   
  //   once().then((DataSnapshot snapshot) {
  //    if (snapshot.value != null) 
  //   {print('${snapshot.value}');
  //  var v1=json.encode( snapshot.value);

  //    Map<String,dynamic> v2=json.decode(v1);
  //    listaDeConfiguracionesUsuario=[];
  //    v2.forEach((key, value) {
  //      Map<String,Configuracion> configuracion;
  //    Configuracion config = Configuracion.fromJson(value['configuracion']);
  //    config.id= key;
  //     configuracion={value['nombreConfiguracion'].toString() :  config };
  //     print(value['configuracion']);
  //     listaDeConfiguracionesUsuario.add(configuracion);
  //    });
     
  //    } else {  
  //      print('no hay configuraciones');
  //      listaDeConfiguracionesUsuario=[];}
  //    });
     }

     
filtrarMaterial(List<dynamic> materialDisponible){
List<String> nombre3=[];
List<String> nombre=[];
listaEjercicios.forEach((ejercicio) {
      int suma=0;
      materialDisponible.forEach((materialFinal) {
        if (materialFinal != 'bancoplano' && materialFinal !='bancoregulable'  ){
      if (ejercicio.material.contains(materialFinal) == false){
       suma=suma+1;
       
      }}

     }); 
     if (materialDisponible.contains('bancoplano') && materialDisponible.contains('bancoregulable'))
     {
     if (suma==materialDisponible.length-2)
     nombre.add(ejercicio.nombre);
     } else if (materialDisponible.contains('bancoplano') || materialDisponible.contains('bancoregulable'))
     {
      if (suma==materialDisponible.length-1)
     nombre.add(ejercicio.nombre);
     } else {
       if (suma==materialDisponible.length)
     nombre.add(ejercicio.nombre);
     }
     }); 
     
     nombre.forEach((nombre) { 
        listaEjercicios.removeWhere((element) => element.nombre == nombre);

     });


listaEjercicios.forEach((ejercicio) {

if (ejercicio.material.contains('bancoplano') == true) {
        if (materialDisponible.contains('bancoplano') == false && materialDisponible.contains('bancoregulable') == false && materialDisponible.contains('gym')== false) {
             nombre3.add(ejercicio.nombre);
        }
        }
        if (ejercicio.material.contains('bancoregulable') == true) {
        if (materialDisponible.contains('bancoregulable') == false && materialDisponible.contains('gym')== false) {
             nombre3.add(ejercicio.nombre);
        }
        }



 });
nombre3.forEach((nombre) { 
        listaEjercicios.removeWhere((element) => element.nombre == nombre);

     });



}


crearListaString(String musculoSeleccionado){
  listaEjercicios.forEach((ejercicio) {
      
         if (ejercicio.musculosTrabajados['Primario1'] == musculoSeleccionado)
           listaEjerciciosString.add(ejercicio.nombre);

      });
}
Ejercicio ejercicioSeleccionado;

buscarEjercicio(String nombreEjercicio){
  ejercicioSeleccionado=null;
 listaEjercicios.forEach((ejercicio) {
   if (ejercicio.nombre==nombreEjercicio)
   ejercicioSeleccionado=ejercicio;
   print('ejercicio seleciionado $ejercicioSeleccionado');
 });

}


eliminarEjercicio(MesocicloEntrenamiento mesocicloEntrenamiento, int numeroDia,numeroEjercicio){
 mesocicloEntrenamiento.diasEntrenamiento[numeroDia].patrones.remove(mesocicloEntrenamiento.diasEntrenamiento[numeroDia].patrones[numeroEjercicio]);

}

Configuracion  crearConfiguracion(Series series,Repeticiones repeticiones,Rir rir,TiempoDeDescanso tiempoDeDescanso, int trabajo){
Configuracion configuracion = Configuracion();

configuracion.series=series;
configuracion.repeticiones=repeticiones;
configuracion.rir=rir;
configuracion.tiempoDeDescanso=tiempoDeDescanso;
configuracion.trabajo=trabajo;
return configuracion;
}



Patron crearPatron(Configuracion configuracion,String comentario){
 Patron nuevoPatronCreado=Patron();
 nuevoPatronCreado.configuracion= configuracion;
 nuevoPatronCreado.ejercicioSeleccionado=ejercicioSeleccionado;
 nuevoPatronCreado.ejercicios=[ejercicioSeleccionado];
 nuevoPatronCreado.musculosTrabajados=ejercicioSeleccionado.musculosTrabajados;
 nuevoPatronCreado.objetivo='';
 nuevoPatronCreado.comentario=comentario;
return nuevoPatronCreado;


}
 List<String> getSuggestions(String query) {

 
   if (listaEjerciciosString.isEmpty) {
     listaEjercicios.forEach((element) {
       listaEjerciciosString.add(element.nombre);
     });
   }
  
  
  
    List<String> matches = List();
    matches.addAll(listaEjerciciosString);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}