import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:device_info/device_info.dart';
import 'package:devicelocale/devicelocale.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/widgets.dart';
import 'package:get_version/get_version.dart';

import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:bloc/bloc.dart';
import 'package:entrena_app_2/models/MesocicloEntrenamiento.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '../../Repositorios/repo_principal.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:io';

import '../../push_notifications.dart';
part 'paginaprincipal_event.dart';
part 'paginaprincipal_state.dart';

class PaginaprincipalBloc
    extends Bloc<PaginaprincipalEvent, PaginaprincipalState> {
  final PrincipalRepository _principalRepository;
  PaginaprincipalBloc(this._principalRepository) : super(CargandoDatos(true));

  @override
  void onTransition(
      Transition<PaginaprincipalEvent, PaginaprincipalState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  Stream<PaginaprincipalState> mapEventToState(
    PaginaprincipalEvent event,
  ) async* {
    if (event is UserStarted) {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      var build;

      if (Platform.isIOS) {
        build = await deviceInfoPlugin.iosInfo;
      } else {
        build = await deviceInfoPlugin.androidInfo;
      }
      // await Future.delayed(Duration(seconds: 5));
      final FirebaseMessaging firebaseMessaging = FirebaseMessaging();

      // bool existe=false;
      _principalRepository.entrenamientoApi.obtenerUserID(event.userID);
      _principalRepository.entrenamientoApi.obtenerToken(event.idToken);
      _principalRepository.getEmail();
      _principalRepository.getFirebaseUser();
      //   await _principalRepository.database.reference().child('tokenPushNotifications').keepSynced(true);
      //   await _principalRepository.obtenerTokensUser();

      //   _principalRepository.mobilesIdUser.forEach((element) async{
      //     if (element==build.androidId)
      //     {
      //       existe=true;
      //    _principalRepository.crearToken(await firebaseMessaging.getToken(),build.androidId);

      //     }
      //   });

      // //   String token= await firebaseMessaging.getToken();
      // //   print(token);
      //   if (existe==false)

      try {
        _principalRepository.projectVersion = await GetVersion.projectVersion;
        await Purchases.setup('XHoVKMeTCfDDUFqSEQLHtOCFFCtyboZJ',
            appUserId: event.userID);
        PurchaserInfo _purchaserInfo = await Purchases.getPurchaserInfo();
          print(_purchaserInfo.entitlements.active);
        if (_purchaserInfo.entitlements.active
                .containsKey("suscripcion_mensual") ||
            _purchaserInfo.entitlements.active
                .containsKey("suscripcion_trimestral") ||
            _purchaserInfo.entitlements.active
                .containsKey("suscripcion_semestral") ||
            _purchaserInfo.entitlements.active
                .containsKey("suscripcion_anual") ||
            _purchaserInfo.entitlements.active
                .containsKey("suscripcion_mensual_p_g") ||
            _purchaserInfo.entitlements.active
                .containsKey("suscripcion_anual_p_g")
                ) {
          _principalRepository.isUserPro = true;
          print('isPRO');
        } else {
          _principalRepository.isUserPro = false;

          print('no es PRO');
          await _principalRepository.obtenerUserPro();
          if (_principalRepository.userPro == true)
            _principalRepository.actualizarUserPro(false);
        }
        _principalRepository.offerings = await Purchases.getOfferings();

        _principalRepository.crearToken(await firebaseMessaging.getToken(),
            (Platform.isIOS) ? build.identifierForVendor : build.androidId);

       
        if (Platform.isIOS) {
          _principalRepository.deviceID = build.identifierForVendor;
        } else {
          _principalRepository.deviceID = build.androidId;
        }
       
        _principalRepository.locale = await Devicelocale.currentLocale;
        
        
        await _principalRepository.obtenerDatosDeLaBBDD();
      print('${_principalRepository.entrenamientoApi.userID}');
        print('${_principalRepository.deviceID} ggggg');
        _principalRepository.database.reference().child('${_principalRepository.entrenamientoApi.userID}').update({
      'últimaConexión': DateTime.now().toString(),
    });
        Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
        final SharedPreferences prefs = await _prefs;

        final String imagenesPromo = (prefs.getString('imagenesPromo') ?? '');

        if (imagenesPromo == '') {
          print('entra aquiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii');
          // Solo lo haremos si esos vectores no se encuentran en el dispositivo

          // imagenes.forEach((element) async{
          Reference storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/1-min.jpg');
          dynamic downloadUrl = await storageReference1.getDownloadURL();
          Map<String, String> imagenesPromo = {'1': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/2-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'2': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/3-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'3': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/4-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'4': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/5-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'5': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/6-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'6': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/7-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'7': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/8-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'8': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          String imagenesPromo1 =
              json.encode(_principalRepository.imagenesPromocionales);

          prefs.setString("imagenesPromo", imagenesPromo1);

//  });

        }
        final String comentariosPromo =
            (prefs.getString('comentariosPromo') ?? '');

        if (comentariosPromo == '') {
        Reference storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R1.PNG');
          dynamic downloadUrl = await storageReference1.getDownloadURL();
          Map<String, String> comentariosPromo = {'R1': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R2.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R2': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R3.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R3': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R4.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R4': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R5.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R5': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R6.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R6': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R7.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R7': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R8.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R8': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R9.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R9': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          String comentariosPromo1 =
              json.encode(_principalRepository.comentariosPromocionales);
          print(comentariosPromo1);
          prefs.setString("comentariosPromo", comentariosPromo1);
        }

        if (_principalRepository
            .historialEntrenamiento.historialEntrenamiento.isEmpty) {
          await _principalRepository.obtenerUsersPromoCodes();
          print('${_principalRepository.promoCodes}');
//         String username = 'carlos10zrg@gmail.com';
//   String password = 'udlajota';

//  final byteData = await rootBundle.load('assets/Mesociclo.pdf');
//                     final file = File('${(await getTemporaryDirectory()).path}/assets/Mesociclo.pdf');

//                     File createdFile = await file.create(recursive: true);
//                     if (await createdFile.exists())
//                    { print('$file');
//                       await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
//                    }

//   final smtpServer = gmail(username, password);
//   // Use the SmtpServer class to configure an SMTP server:
//   // final smtpServer = SmtpServer('smtp.domain.com');
//   // See the named arguments of SmtpServer for further configuration
//   // options.

//   // Create our message.
//   final message = Message()
//     ..from = Address(username, 'Carlos Medina Franca')
//     ..recipients.add('${_principalRepository.email}')
//      ..recipients.add('carlos10zrg@gmail.com')
//     // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
//     // ..bccRecipients.add(Address('bccAddress@example.com'))
//     ..subject = 'Bienvenido a EntrenaAPP'
//     ..attachments.add(FileAttachment(file))

//     // ..text = 'Verificar compras de ${principalRepository.entrenamientoApi.userID}'
//     ..html = "<h1>Test</h1>\n<p>Hey! Verificar compras de ${_principalRepository.entrenamientoApi.userID}</p>";

//   try {
//     final sendReport = await send(message, smtpServer);
//     print('Message sent: ' + sendReport.toString());
//   } on MailerException catch (e) {
//     print('$e');
//     print('Message not sent.');
//     for (var p in e.problems) {
//       print('Problem: ${p.code}: ${p.msg}');
//     }
//   }
          _principalRepository.puntosActuales = 0;
          await _principalRepository.guardarPuntos(500);
          if (_principalRepository.haVistoPromoCarlos == false) {
            // String imagenes = json.encode(widget.principalRepository.isInit);

            //   prefs.setString("imagenes", imagenes);

            prefs.setString("promo1", 'true');
            yield UserViendoPromo(isNewUser: true);
          } else
            yield UserPaginaPrincipal(false, false, true, false, false, false);
        } else {
          if (_principalRepository.haVistoPromoCarlos == false &&
              !_principalRepository.isUserPro) {
            print('entra aquiii1');
            event.pushNotificationService.initialise();
            prefs.setString("promo1", 'true');
            yield UserViendoPromo();
          } else if (_principalRepository.haVistoPromoPremium == false &&
              !_principalRepository.isUserPro) {
            print('entra aquiii2');
            event.pushNotificationService.initialise();

            prefs.setString("promoPremium1", 'true');
            String fechaUltima = DateTime.now().toUtc().toIso8601String();
            prefs.setString("fechaUltima", fechaUltima);

            yield UserViendoPromoPremium();
          } else {
            String fechaUltima = (prefs.getString('fechaUltima') ?? '');
            if (fechaUltima != '') {
              var one = DateTime.parse(fechaUltima).toUtc();

              var two = DateTime.now().toUtc();

              
              if (two.difference(one).inDays >= 7) {
                prefs.remove('promo1');
                prefs.remove('promoPremium1');
                prefs.remove('fechaUltima');
              }
            }

            event.pushNotificationService.initialise();
            if (!_principalRepository.isUserPro) {
              var rng = new Random();
              int numeroAleatorio = rng.nextInt(6);
              
              if (numeroAleatorio == 2) _principalRepository.cargarAnuncio();
            }
            yield UserPaginaPrincipal(
                false,
                false,
                false,
                false,
                _principalRepository
                    .historialEntrenamiento
                    .historialEntrenamiento[_principalRepository
                            .historialEntrenamiento
                            .historialEntrenamiento
                            .length -
                        1]
                    .semanaCompletada,
                _principalRepository
                    .historialEntrenamiento
                    .historialEntrenamiento[_principalRepository
                            .historialEntrenamiento
                            .historialEntrenamiento
                            .length -
                        1]
                    .mesocicloCompletado);
          }
        }
      } catch (e) {
        print(e);

        if ((e.toString().contains('NetworkError')) ||
            (e.toString().contains('BILLING_UNAVAILABLE'))) {
       _principalRepository.locale = await Devicelocale.currentLocale;   
          await _principalRepository.obtenerUserPro();
          print('${_principalRepository.userPro} ggfsgs');
          
          (_principalRepository.userPro) ? _principalRepository.isUserPro = true : _principalRepository.isUserPro = false;
          
          
          if (_principalRepository.userPro ||
              e.toString().contains('BILLING_UNAVAILABLE')) {
            
            await _principalRepository.obtenerDatosDeLaBBDD();
  _principalRepository.database.reference().child('${_principalRepository.entrenamientoApi.userID}').update({
      'últimaConexión': DateTime.now().toString(),
    });
        Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
        final SharedPreferences prefs = await _prefs;

        final String imagenesPromo = (prefs.getString('imagenesPromo') ?? '');

        if (imagenesPromo == '') {
          print('entra aquiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii');
          // Solo lo haremos si esos vectores no se encuentran en el dispositivo

          // imagenes.forEach((element) async{
          Reference storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/1-min.jpg');
          dynamic downloadUrl = await storageReference1.getDownloadURL();
          Map<String, String> imagenesPromo = {'1': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/2-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'2': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/3-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'3': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/4-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'4': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/5-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'5': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/6-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'6': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/7-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'7': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          storageReference1 = FirebaseStorage.instance
              .ref()
              .child('fotosPromocionales/8-min.jpg');
          downloadUrl = await storageReference1.getDownloadURL();
          imagenesPromo = {'8': downloadUrl};
          _principalRepository.imagenesPromocionales.add(imagenesPromo);

          String imagenesPromo1 =
              json.encode(_principalRepository.imagenesPromocionales);

          prefs.setString("imagenesPromo", imagenesPromo1);

//  });

        }
        final String comentariosPromo =
            (prefs.getString('comentariosPromo') ?? '');

        if (comentariosPromo == '') {
        Reference storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R1.PNG');
          dynamic downloadUrl = await storageReference1.getDownloadURL();
          Map<String, String> comentariosPromo = {'R1': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R2.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R2': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R3.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R3': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R4.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R4': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R5.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R5': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R6.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R6': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R7.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R7': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R8.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R8': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          storageReference1 =
              FirebaseStorage.instance.ref().child('fotosPromocionales/R9.PNG');
          downloadUrl = await storageReference1.getDownloadURL();
          comentariosPromo = {'R9': downloadUrl};
          _principalRepository.comentariosPromocionales.add(comentariosPromo);

          String comentariosPromo1 =
              json.encode(_principalRepository.comentariosPromocionales);
          print(comentariosPromo1);
          prefs.setString("comentariosPromo", comentariosPromo1);
        }
            //  _principalRepository.deviceID = await DeviceId.getID;

            if (_principalRepository
                .historialEntrenamiento.historialEntrenamiento.isEmpty) {
              await _principalRepository.obtenerUsersPromoCodes();
              print('${_principalRepository.promoCodes}');
//         String username = 'carlos10zrg@gmail.com';
//   String password = 'udlajota';

//  final byteData = await rootBundle.load('assets/Mesociclo.pdf');
//                     final file = File('${(await getTemporaryDirectory()).path}/assets/Mesociclo.pdf');

//                     File createdFile = await file.create(recursive: true);
//                     if (await createdFile.exists())
//                    { print('$file');
//                       await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
//                    }

//   final smtpServer = gmail(username, password);
//   // Use the SmtpServer class to configure an SMTP server:
//   // final smtpServer = SmtpServer('smtp.domain.com');
//   // See the named arguments of SmtpServer for further configuration
//   // options.

//   // Create our message.
//   final message = Message()
//     ..from = Address(username, 'Carlos Medina Franca')
//     ..recipients.add('${_principalRepository.email}')
//      ..recipients.add('carlos10zrg@gmail.com')
//     // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
//     // ..bccRecipients.add(Address('bccAddress@example.com'))
//     ..subject = 'Bienvenido a EntrenaAPP'
//     ..attachments.add(FileAttachment(file))

//     // ..text = 'Verificar compras de ${principalRepository.entrenamientoApi.userID}'
//     ..html = "<h1>Test</h1>\n<p>Hey! Verificar compras de ${_principalRepository.entrenamientoApi.userID}</p>";

//   try {
//     final sendReport = await send(message, smtpServer);
//     print('Message sent: ' + sendReport.toString());
//   } on MailerException catch (e) {
//     print('$e');
//     print('Message not sent.');
//     for (var p in e.problems) {
//       print('Problem: ${p.code}: ${p.msg}');
//     }
//   }
              _principalRepository.puntosActuales = 0;
              await _principalRepository.guardarPuntos(100);
              yield UserPaginaPrincipal(
                  false, false, true, false, false, false);
            } else {
              // await _principalRepository.obtenerPuntos();
              yield UserPaginaPrincipal(
                  false,
                  false,
                  false,
                  false,
                  _principalRepository
                      .historialEntrenamiento
                      .historialEntrenamiento[_principalRepository
                              .historialEntrenamiento
                              .historialEntrenamiento
                              .length -
                          1]
                      .semanaCompletada,
                  _principalRepository
                      .historialEntrenamiento
                      .historialEntrenamiento[_principalRepository
                              .historialEntrenamiento
                              .historialEntrenamiento
                              .length -
                          1]
                      .mesocicloCompletado);
            }
          } else
            yield ErrorState(true, false, false, false, false, false);
        } else {
          // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
          // final SharedPreferences prefs = await _prefs;
          // prefs.clear();
          _principalRepository.guardarError(
              e.toString(), _principalRepository.entrenamientoApi.userID, _principalRepository.projectVersion);
          // await _principalRepository.enviarCorreoErrorACarlos(
          //     e.toString(), _principalRepository.entrenamientoApi.userID);

          yield ErrorState(false, true, false, false, false, false);
        }
      }

//       }

//        catch (error) {
// yield ErrorState(true,false,false,false);
// print(error);

//       }

    }
    if (event is UserAAcabadoDeVerPromo) {
      if (event.isNewUser == false)
        yield UserPaginaPrincipal(
            false,
            false,
            false,
            false,
            _principalRepository
                .historialEntrenamiento
                .historialEntrenamiento[_principalRepository
                        .historialEntrenamiento.historialEntrenamiento.length -
                    1]
                .semanaCompletada,
            _principalRepository
                .historialEntrenamiento
                .historialEntrenamiento[_principalRepository
                        .historialEntrenamiento.historialEntrenamiento.length -
                    1]
                .mesocicloCompletado);
      else
        yield UserPaginaPrincipal(false, false, true, false, false, false);
    }
    if (event is UserQuiereIrASalaDeChats) {
    
      yield CargandoDatos(false);
      await Future.delayed(Duration(milliseconds: 100));
      yield UserSalaChat(
          nombreSala: event.nombreSala,
          asuntoSala: event.asuntoSala,
          nombreCreador: event.nombreCreador,
          idCreador: event.idCreador,
          costePuntos: event.costePuntos,
          charlaPremium: event.charlaPremium,
          permitirAudio: event.permitirAudio,
          permitirCamara: event.permitirCamara,
          fechaInicio: event.fechaInicio);
    }
    if (event is UserQuiereVerPro) {
      yield UserViendoSiEsPro(event.isUserPro);
    }
    if (event is UserQuiereReevaluarse) {
      yield UserPaginaPrincipal(false, false, false, false, false, false,
          isReevaluate: true);
    }
    if (event is UserQuiereIrAComunidad) {
      yield UserViendoComunidad();
    }
    if (event is UserVaAVerPromoPremium) {
      yield UserViendoPromoPremium();
    }
    if (event is UserVaAVerPromoRedesSociales) {
      yield UserViendoPromoRedesSociales();
    }
    if (event is UserQuiereEliminarCuenta) {
      yield UserPaginaPrincipal(false, false, false, false, false, false,
          userEliminandoCuenta: true);
    }
    if (event is UserEliminaCuenta) {
      // ERROR_REQUIRES_RECENT_LOGIN
      // try {

      await _principalRepository.database
          .reference()
          .child('${_principalRepository.entrenamientoApi.userID}')
          .remove();
      await _principalRepository.database
          .reference()
          .child('promoCodes/${_principalRepository.entrenamientoApi.userID}')
          .remove();
      _principalRepository.firebaseUser.delete();
      yield UserPaginaPrincipal(false, false, false, false, false, false,
          userEliminaCuenta: true);

      // }
      // catch (error){

      //   if (error.toString().contains('ERROR_REQUIRES_RECENT_LOGIN'))
      //   {
      //        yield ErrorState(false,false,false,false,true);
      //   } else
      //    yield ErrorState(false,false,false,true,false);

      // }
    }

    if (event is UserNoEliminaCuenta ||
        event is UserQuiereVolverAPaginaPrincipal) {
      yield UserPaginaPrincipal(
        false,
        false,
        false,
        false,
        false,
        false,
      );
    }
    if (event is UserQuiereVerEstadisticas) {
      yield CargandoDatos(false);
      try {
        if (!_principalRepository.isUserPro)
          await _principalRepository.guardarPuntos(-10);
        yield UserViendoEstadisticas(event.mesocicloEntrenamiento,
            event.semanaEntrenamiento, event.tipo);
      } catch (error) {
        yield ErrorState(false, false, false, false, true, false);
      }
    }
    if (event is UserQuiereEditarPerfil) {
      yield UserEditandoPerfil();
    }
    if (event is UserShowSnackBarNotification) {
      print(event.fechaInicio);
      yield MostrandoSnackBar(
        event.nombreSala,
        event.asuntoSala,
        event.nombreCreador,
        event.idCreador,
        event.costePuntos,
        event.permitirAudio,
        event.permitirCamara,
        event.fechaInicio,
        charlaPremium: event.charlaPremium,
      );
    }
    if (event is UserQuiereConfigurar) {
      // Habra que guardar el userFase en la BBDD
      if (_principalRepository.userFase == null || event.isReevaluate == true) {
        // Aqui es donde guardaremos en la BBDD el dato de la fase y del bmi
        _principalRepository.userBMI = event.bmi;
        _principalRepository.sexo = event.sexo;
        if (event.puntuacionExperiencia == 0) {
          _principalRepository.userFase = 0;
        } else if (event.puntuacionFinal < 5) {
          _principalRepository.userFase = 1;
        } else
          _principalRepository.userFase = 3;
      } else if (_principalRepository.userFase < 3) {
        _principalRepository.isSum = true;
        _principalRepository.userFase = _principalRepository.userFase + 1;
      } else
        _principalRepository.userFase = _principalRepository.userFase;

      yield UserConfigurando(
          event.isUserInit,
          event.puntuacionFinal,
          _principalRepository.userFase,
          _principalRepository.userBMI,
          _principalRepository.sexo);
    }

//      if (event is UserPasaAverExplicacion)

//      yield UserViendoExplicacion();
// if (event is UserPasaACalcularIMC)

//      yield UserViendoIMC();

//      if (event is UserHaciendoExamen)

//      yield UserViendoExamen();

//      if (event is UserHaAcabadoExamen)

//      yield UserViendoPuntuacion(event.marks);

    if (event is UserHaAcabadoDeConfigurarNuevoEntrenamiento) {
      // _principalRepository.entrenamientoApi.addMesociclo(event.mesocicloEntrenamiento);

      yield UserPaginaPrincipal(true, false, false, false, false, false);
    }

    if (event is UserNoQuiereConfigurarNuevoEntrenamiento) {
      if (_principalRepository.isSum == true) {
        //isSum es una variable de ayuda
        _principalRepository.isSum = false;
        _principalRepository.userFase = _principalRepository.userFase - 1;
      }
      yield UserPaginaPrincipal(false, false, false, false, false, false);
    }

    if (event is UserQuiereVisualizar) {
      // Aqui cambiaremos en la BBDD el valor de semana completada, en caso de que sea verdadero, lo pasaremos a false.
      if (_principalRepository
              .historialEntrenamiento
              .historialEntrenamiento[_principalRepository
                      .historialEntrenamiento.historialEntrenamiento.length -
                  1]
              .semanaCompletada ==
          true)
        _principalRepository
            .historialEntrenamiento
            .historialEntrenamiento[_principalRepository
                    .historialEntrenamiento.historialEntrenamiento.length -
                1]
            .semanaCompletada = false;
      final MesocicloEntrenamiento mesocicloActual = _principalRepository
          .historialEntrenamiento.historialEntrenamiento.last;
      yield UserVisualizando(mesocicloActual);
    }

    if (event is UserQuiereVisualizarHistorial)
      yield UserVisualizandoHistorial(_principalRepository);

    if (event is UserHaAcabadoDeVisualizarHistorial)
      yield UserPaginaPrincipal(false, false, false, false, false, false);
    if (event is UserQuiereSalirDeLaSalaDeChats) {
      _principalRepository.datosUsuariosReunion = [];
      yield UserPaginaPrincipal(false, false, false, false, false, false);
    }
    if (event is UserHaAcabadoDeVisualizarEstadisticas)
      yield UserPaginaPrincipal(false, false, false, false, false, false);

    if (event is UserHaAcabadoDeVisualizar) {
      if (event.actualizarBBDD) {
        yield CargandoDatos(false);
        final MesocicloEntrenamiento mesocicloActual = _principalRepository
            .historialEntrenamiento.historialEntrenamiento.last;
        try {
          await _principalRepository.entrenamientoApi
              .actualizarEntrenamientoCompletado(mesocicloActual.id, mesocicloActual);
          yield UserPaginaPrincipal(false, event.entrenamientoCompletado, false,
              false, event.semanaCompletada, event.mesocicloCompletado);
        } catch (error) {
          yield ErrorState(false, false, true, false, false, false);
        }
      } else
        yield UserPaginaPrincipal(false, event.entrenamientoCompletado, false,
            false, event.semanaCompletada, event.mesocicloCompletado);
    }
    if (event is UserAcabaDeActualizarSemana) {
      yield CargandoDatos(false);
      try {
        await _principalRepository.entrenamientoApi
            .actualizarSemana(event.semanaEntrenamiento - 1);
        yield UserPaginaPrincipal(false, false, false, true, false, false);
      } catch (error) {
        yield ErrorState(false, false, false, true, false, false);
      }
      // Cargariamos la semana actual en la BBDD.
      //  _principalRepository.historialEntrenamiento.historialEntrenamiento[_principalRepository.historialEntrenamiento.historialEntrenamiento.length-1].semanaActual=event.semanaEntrenamiento-1;

    }
  }
}
