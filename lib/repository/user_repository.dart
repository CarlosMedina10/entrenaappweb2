// Imports
import 'dart:async';
import 'dart:convert';
import 'package:entrenaapp/constants.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import 'package:entrenaapp/models/Ejercicio.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/models/Patron.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';


import 'package:firebase/firebase.dart'
    hide User, GoogleAuthProvider, FacebookAuthProvider;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_facebook_login_web/flutter_facebook_login_web.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {
  Database firebaseDatabase;
  
  // Constructor
  UserRepository(this.firebaseDatabase,);

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn;
  final FacebookLoginWeb facebookSignIn = FacebookLoginWeb();
  final FirebaseAuthOAuth _firebaseAuthOAuth = FirebaseAuthOAuth();
  String errorString;
  dynamic haParticipado;
  dynamic isUserPro;
  bool esEntrenador;
  String imgUrl;
  String sexo;
  String nombreUsuario;
  Configuracion configuracion;
  String nombreEntrenamiento;
  Series series;
  Repeticiones repeticiones;
  Rir rir;
  TiempoDeDescanso tiempoDeDescanso;
  MesocicloEntrenamiento mesocicloEntrenamiento;
  bool isEjercicio = false;
  bool isNombre = false;
  bool isSeries = false;
  bool isReps = false;
  bool isRir = false;
  bool isTd = false;
  bool isComentario = false;

  String comentario;
 List<Ejercicio>  listaEjercicios = [
          Ejercicio.pressBanca(),
          Ejercicio.pressPlanoConMancuernas(),
          
          Ejercicio.fondosDePechoEnBarra(),
          Ejercicio.fondosDePechoEnBarrasParalelas(),
          Ejercicio.pressHorizontalEnMaquinaAgarreNeutro(),
          Ejercicio.pressHorizontalEnMaquina(),
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
          Ejercicio.curlDeBicepsEnMaquinaScott(),
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

  Ejercicio ejercicioSeleccionado;

  Patron patron;
  Map<String, dynamic> listaClientes;
 List<String> tokensUsuario;
     final String serverToken =
      'AAAAcDD_suw:APA91bFZN8LoUqmSeAjydp4a_o2QU5yoZ5pJ5uQ5AXVvQTMVyTEc3K4tX-Ddi5CnHB5XJngl1ARYuSynDcCq7err1mDypgyE5srvLZJPsbo5kJMfAtoG7wZwgeTTq2ByYS2xG75xpmXG';
   obtenerTokensUsuario(String idUsuario,nombreUsuario) async {
    tokensUsuario = [];
    try {
      firebaseDatabase
          .ref('tokenPushNotifications/$idUsuario')
           .onValue.listen((e) {
             print(e.snapshot.val());
        var v1 = json.encode(e.snapshot.val());
        print(v1);
        Map<String, dynamic> v2 = json.decode(v1);
        if (v2 != null) {
          v2.forEach((key, value) {
           
           
             print(key);
             print(value['token']);
            
            tokensUsuario.add(value['token']);
           

        //     //  print(value['mobileID']);
          });
        }
        enviarNotificacion(nombreUsuario);
        // print(tokensAEnviar);
        // return tokensAEnviar;
      });
    } catch (error) {
      print('$error');
      throw (error);
    }
  }


enviarNotificacion(String nombreUsuario){
  tokensUsuario.forEach((element) async {
      print(element);
      final String token = element;
// print(token);
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'key=$serverToken',
        },
        body: jsonEncode(
          <String, dynamic>{
            'notification': <String, dynamic>{
              'body': 'Hola $nombreUsuario, acabo de subirte tu entrenamiento de este mes. Cualquier duda comentamela',
              'title': '¡Ya tienes tu entrenamiento!'
            },
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'status': 'done'
            },
            'to': token,
          },
        ),
      );
    });
  }

Future<String> cargarMesociclo(String idClienteSeleccionado) async {
    try {
    FilePickerResult file = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['xlsx', ],
        );
      print(file.files.single.path);
      nombreEntrenamiento = file.files.single.name;
      print(file.files.single.name.replaceRange(
          file.files.single.name.length - 5, file.files.single.name.length, ''));

      var bytes = file.files.single.bytes;
      var excel = Excel.decodeBytes(bytes);
      int hoja = 0;
      print(excel.tables.length);
      int hojas = excel.tables.length - 1;
      if (hojas == 2) {
        mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio2Dias();
      } else if (hojas == 3) {
        mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio3Dias();
      } else if (hojas == 4) {
        mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio4Dias();
      } else if (hojas == 5) {
        mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio5Dias();
      } else if (hojas == 6) {
        mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio6Dias();
      }

      mesocicloEntrenamiento.nombreMesociclo = file.files.single.name
          .replaceRange(file.files.single.name.length - 5, file.files.single.name.length, '');
      mesocicloEntrenamiento.fechaInicio = DateTime.now().toIso8601String();
      for (var table in excel.tables.keys) {
        print(table); //sheet Name
        Sheet sheetObject = excel[table];

        int row1 = 0;

        for (var row in excel.tables[table].rows) {
          int column1 = 0;
          for (var item in row) {
            if (isEjercicio == false) {
              if (item == 'Ejercicio') {
                isEjercicio = true;

                buscarEjercicio(sheetObject
                    .cell(CellIndex.indexByColumnRow(
                        columnIndex: column1, rowIndex: row1 + 1))
                    .value);
              }
            } else if (item == 'Series') {
              isSeries = true;
              series = Series();
              series.semana1 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 1))
                  .value;
              series.semana2 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 2))
                  .value;
              series.semana3 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 3))
                  .value;
              series.semana4 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 4))
                  .value;
            } else if (item == 'Repeticiones') {
              isReps = true;
              repeticiones = Repeticiones();
              repeticiones.semana1 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 1))
                  .value
                  .toString();
              repeticiones.semana2 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 2))
                  .value
                  .toString();
              repeticiones.semana3 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 3))
                  .value
                  .toString();
              repeticiones.semana4 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 4))
                  .value
                  .toString();
            } else if (item == 'RIR') {
              isRir = true;
              rir = Rir();
              rir.semana1 =
                  'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1, rowIndex: row1 + 1)).value.toString()}';
              rir.semana2 =
                  'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1, rowIndex: row1 + 2)).value.toString()}';
              rir.semana3 =
                  'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1, rowIndex: row1 + 3)).value.toString()}';
              rir.semana4 =
                  'RIR ${sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: column1, rowIndex: row1 + 4)).value.toString()}';
            } else if (item == 'Tiempo de descanso') {
              isTd = true;
              tiempoDeDescanso = TiempoDeDescanso();
              tiempoDeDescanso.semana1 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 1))
                  .value;
              tiempoDeDescanso.semana2 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 2))
                  .value;
              tiempoDeDescanso.semana3 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 3))
                  .value;
              tiempoDeDescanso.semana4 = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 4))
                  .value;
            } else if (item == 'Comentario') {
              isComentario = true;
              comentario = sheetObject
                  .cell(CellIndex.indexByColumnRow(
                      columnIndex: column1, rowIndex: row1 + 1))
                  .value;
            }

            column1 = column1 + 1;
          }
          if (isEjercicio &&
              isSeries &&
              isReps &&
              isRir &&
              isTd &&
              isComentario) {
            int trabajo;
            if (repeticiones.semana1.length > 1 &&
                int.tryParse(repeticiones.semana1[1]) != null) {
              if (repeticiones.semana1.length >= 3) {
                if (int.parse(repeticiones.semana1
                        .replaceRange(2, repeticiones.semana1.length, '')) >
                    15)
                  trabajo = 3;
                else
                  trabajo = 2;
              } else if (int.parse(repeticiones.semana1) > 15)
                trabajo = 3;
              else
                trabajo = 2;
            } else if (int.parse(repeticiones.semana1[0]) > 5)
              trabajo = 2;
            else
              trabajo = 1;

            patron = Patron(
                ejercicioSeleccionado: ejercicioSeleccionado,
                musculosTrabajados: ejercicioSeleccionado.musculosTrabajados,
                comentario: comentario,
                configuracion: Configuracion(
                    series: series,
                    repeticiones: repeticiones,
                    rir: rir,
                    tiempoDeDescanso: tiempoDeDescanso,
                    trabajo: trabajo));
            isEjercicio = false;
            isSeries = false;
            isReps = false;
            isRir = false;
            isTd = false;
            isComentario = false;

            mesocicloEntrenamiento.diasEntrenamiento[hoja].patrones.add(patron);
          }
          row1 = row1 + 1;
        }
        hoja = hoja + 1;
      }
      mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
        List<String> musculosTrabajados = [];

        diaE.patrones.forEach((patron) {
          patron.ejercicioSeleccionado.musculosTrabajados.forEach((key, value) {
            print(key);
            if (key == 'Primario1') {
              print(value);

              //  if (ejercicioSeleccionado.musculosTrabajados['Primario1']==value)

              musculosTrabajados.add(
                  patron.ejercicioSeleccionado.musculosTrabajados['Primario1']);
            }
          });
          diaE.musculosTrabajados = musculosTrabajados.toSet().toList();
        });

        print(diaE.nombreentrenamiento);
        print(diaE.musculosTrabajados);
        print(diaE.musculosTrabajados.toSet().toList());

        diaE.patrones.forEach((element) {
          print(element.ejercicioSeleccionado.nombre);
          print(element.comentario);
        });
      });

      await guardarEnBBDD(
          idClienteSeleccionado, mesocicloEntrenamiento);
    return mesocicloEntrenamiento.nombreMesociclo;
    } catch (error) {
      throw (error);
    
      // _showDialog();
    }
  }

  buscarEjercicio(String nombreEjercicio) {
    ejercicioSeleccionado = null;
    listaEjercicios.forEach((ejercicio) {
      if (ejercicio.nombre == nombreEjercicio) {
        ejercicioSeleccionado = ejercicio;
        print('ejercicio seleccionado ${ejercicioSeleccionado.nombre}');
      }
    });
  }
  getPurchaserInfo(String userID, ) async {

 
 String url = 'https://api.revenuecat.com/v1/subscribers/$userID';
    try {
   var purchaserInfo =   await http.get(Uri.parse(url), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer sk_LOnONfxsicGXLXdXBzMyzzueGmQBV"
      });

      print(purchaserInfo.body);
  } catch (error) {
      throw error;
    }
  }
   getSession(String sessionID, ) async {

 
 String url = 'https://api.stripe.com/v1/checkout/sessions/$sessionID';
    try {
   var session =   await http.get(Uri.parse(url), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $secretKey"
      });
       print(session.body);
       print('biennnnnnnn');
Map<String,dynamic> body = json.decode(session.body);
 
   print(body['subscription']);
   deleteSuscription(body['subscription']);
      
  } catch (error) {
      throw error;
    }
  }
   deleteSuscription(String suscriptionID, ) async {

 
 String url = 'https://api.stripe.com/v1/subscriptions/$suscriptionID';
    try {
     await http.delete(Uri.parse(url), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $secretKey"
      });

    print('todo biennnnn');
  } catch (error) {
      throw error;
    }
  }
  userPremiumStripe(String userID,sessionId ) async {

    String url = 'https://api.revenuecat.com/v1/receipts';
    try {
      await http.post(Uri.parse(url), 
       body: json.encode({"fetch_token":sessionId,"app_user_id":userID }),
      headers: {
        "Content-Type": "application/json",
        "X-Platform":"stripe",
        "Authorization": "Bearer sk_LOnONfxsicGXLXdXBzMyzzueGmQBV"
      });
      getSession(sessionId);
  } catch (error) {
      throw error;
    }
  }
  darPremiumGratuito(String userID, {bool isYear = false}) async {
    String url =
        "https://api.revenuecat.com/v1/subscribers/$userID/entitlements/suscripcion_mensual/promotional";
    String url2 = 'https://api.revenuecat.com/v1/subscribers/$userID';
    try {
      await http.get(Uri.parse(url2), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer sk_LOnONfxsicGXLXdXBzMyzzueGmQBV"
      });

      await http.post(Uri.parse(url),
          body: json.encode({"duration": (isYear) ? "lifetime" : "monthly"}),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer sk_LOnONfxsicGXLXdXBzMyzzueGmQBV"
          });
    } catch (error) {
      throw error;
    }
  }

  inscribirseEnElSorteo(String nombreUsuario) {
    DatabaseReference ref1 = firebaseDatabase.ref('zzzzzzzzzzsorteo');
    DatabaseReference ref2 = firebaseDatabase.ref(getUserID());
    Map<String, String> inscripcion = {
      'nombreUsuario': nombreUsuario,
      'idUsuario': getUserID()
    };
    ref1.push(inscripcion);
    ref2.update({'userPro': true, 'haParticipadoSorteoFC': true});
  }

  guardarEnBBDD(
      String idUsuario, MesocicloEntrenamiento mesocicloEntrenamiento) {
    DatabaseReference ref = firebaseDatabase.ref('$idUsuario/mesociclos');

    ref.push(mesocicloEntrenamiento.toJson());
  }


// FUNCIONES DEL SORTEO {
  Future comprobandoPremium() async {
    DatabaseReference ref = firebaseDatabase.ref(getUserID());

    ref.child('userPro').once('value').then((value) {
      DataSnapshot result = value.snapshot;
      print('entraaaaaaaa');
      print(result.toString());
      print(result.exists());
      print(result.toJson());
      isUserPro = result.val();
    });
  }

  Future comprobandoInscripcion() async {
    DatabaseReference ref = firebaseDatabase.ref(getUserID());

    await ref.child('haParticipadoSorteoFC').once('value').then((value) {
      DataSnapshot result = value.snapshot;

     haParticipado = result.val();   });
  }

// }


// COMPROBANDO BLOC {
Future cargandoDatos() async{
DatabaseReference ref = firebaseDatabase.ref(getUserID());
    await ref.child('nombreUsuario').once('value').then((value) async{

      print('${value.snapshot.val()} gggggggggg');
    if (value.snapshot.val()!=null)
      nombreUsuario=value.snapshot.val();
   
else {
   String displayName=  await getName();
   if (displayName != null && displayName!=''){
          
          nombreUsuario = displayName;}
        else {
          String email =await getUser();
          if (email != null){
         
          nombreUsuario = email;}
        else
          nombreUsuario = 'Nombre desconocido';
        }
}
    });
   await ref.child('sexo').once('value').then((value) async{
         sexo = value.snapshot.val();
         ref.child('imagen').once('value').then((value) async{
      String imgUrl2=await getPhoto();
if (value.snapshot.val() != null)
          imgUrl = value.snapshot.val();
        else 
        if (imgUrl2!=null) {
        imgUrl= imgUrl2;
       } else { imgUrl ='No';

       }
      
    });
    });
    
 

      
}

  Future verSiEsEntrenador() async {
    DatabaseReference ref =
        firebaseDatabase.ref('ZZentrenadores/${getUserID()}');

    await ref.once('value').then((value) async{
      print('${value.snapshot.val()} kkkk');
      DataSnapshot result = value.snapshot;

      if (result != null) {
        DatabaseReference ref =
            firebaseDatabase.ref('ZZentrenadores/${getUserID()}/Clientes');

      await  ref.once('value').then((value) {
          print(value.snapshot.val());

          listaClientes = value.snapshot.val();

          esEntrenador = true;
        });
      } else
        esEntrenador = false;

    
    });

  }
// }


 List<String>  listaEjerciciosString = [


];
crearListaString(String musculoSeleccionado){
  listaEjercicios.forEach((ejercicio) {
      
         if (ejercicio.musculosTrabajados['Primario1'] == musculoSeleccionado)
           listaEjerciciosString.add(ejercicio.nombre);

      });
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
  // SignInWithGoogle
  Future<User> signInWithGoogle() async {
    _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    _googleSignIn.signInSilently();
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  }

  Future<User> signInWithFb() async {
    FacebookLoginResult result = await facebookSignIn.logIn([
      'email',
    ]);
    final AuthCredential credential =
        FacebookAuthProvider.credential(result.accessToken.token);
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  }

  Future<User> signInWithApple() async {
    // 1. perform the sign-in request
    final user = await _firebaseAuthOAuth
        .openSignInFlow("apple.com", ["email"], {"locale": "en"});
    return user;
  }

  // SignInWithCredentials
  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  // SignUp - Registro
  Future<void> signUp(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  // SignOut
  Future<void> signOut() async {
    return ([
      await _firebaseAuth.signOut(),
      await _googleSignIn.signOut(),
      await facebookSignIn.logOut()
    ]);
  }

  // Esta logueado?
  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  // Obtener usuario
  Future<String> getUser() async {
    return _firebaseAuth.currentUser.email;
  }

  Future<String> getName() async {
    return _firebaseAuth.currentUser.displayName;
  }

  Future<String> getPhoto() async {
    return _firebaseAuth.currentUser.photoURL;
  }

  String getUserID() {
    return _firebaseAuth.currentUser.uid;
  }

  Future<String> getToken() async {
    return await _firebaseAuth.currentUser.getIdToken();
  }

  Future<User> getFirebaseUser() async {
    return _firebaseAuth.currentUser;
  }

  sendPaswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (error) {
      throw error;
    }
  }
}