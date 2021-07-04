

import 'package:entrenaapp/models/HistorialEntrenamiento.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:firebase/firebase.dart';

class EntrenamientoApi {
  Database database;
  EntrenamientoApi(this.database);

  HistorialEntrenamiento _historialEntrenamiento = HistorialEntrenamiento();

  HistorialEntrenamiento get historialEntrenamiento {
    return _historialEntrenamiento;
  }

  String userID;
  String idToken;

  MesocicloEntrenamiento mesocicloEntrenamiento;
  obtenerUserID(String idUser) {
    userID = idUser;
    print('$userID   jhjhhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjh');
  }



  
  Future<void> actualizarMesociclo(
      String id, MesocicloEntrenamiento newMesociclo) async {
    // final mesocicloIndex = _historialEntrenamiento.historialEntrenamiento
    //     .indexWhere((mesociclo) => mesociclo.id == id);

    // try {
    //   database.reference().child('$userID/mesociclos').update({
    //     '$id': newMesociclo.toJson(),
    //   });

    //   _historialEntrenamiento.historialEntrenamiento[mesocicloIndex] =
    //       newMesociclo;
    // } catch (error) {
    //   print('$error');
    //   throw (error);
    // }
  }

   Future<void> actualizarEntrenamientoCompletado(
      String id, MesocicloEntrenamiento newMesociclo) async {
    // final mesocicloIndex = _historialEntrenamiento.historialEntrenamiento
    //     .indexWhere((mesociclo) => mesociclo.id == id);

    // try {
    //   database.reference().child('$userID/mesociclos/$id').update({
    //     'numeroDiasCompletados': newMesociclo.numeroDiasCompletados,
    //     'mesocicloCompletado': (newMesociclo.mesocicloCompletado==true) ? newMesociclo.mesocicloCompletado : null,
    //     'semanaActual': (newMesociclo.semanaActual!=null) ? newMesociclo.semanaActual : null,
    //     'diasEntrenamiento': (newMesociclo.diasEntrenamiento!=null) ? newMesociclo.diasEntrenamiento.map((v) => v.toJson()).toList() : null
    //   });

    //   _historialEntrenamiento.historialEntrenamiento[mesocicloIndex] =
    //       newMesociclo;
    // } catch (error) {
    //   print('$error');
    //   throw (error);
    // }
  }

  Future<void> actualizarSemana(int semana) async {
    // final mesocicloIndex =
    //     _historialEntrenamiento.historialEntrenamiento.length - 1;
    // final id = _historialEntrenamiento
    //     .historialEntrenamiento[
    //         _historialEntrenamiento.historialEntrenamiento.length - 1]
    //     .id;

    // try {
    //   await database.reference().child('$userID/mesociclos/$id').update({
    //     'semanaActual': semana,
    //   });

    //   _historialEntrenamiento
    //       .historialEntrenamiento[mesocicloIndex].semanaActual = semana;
    // } catch (error) {
    //   throw error;
    // }
  }

 

  Future<void> actualizarComentario(
      String comentario, int numeroDia, numeroEjercicio, semana) async {
   
    // final id = _historialEntrenamiento
    //     .historialEntrenamiento[
    //         _historialEntrenamiento.historialEntrenamiento.length - 1]
    //     .id;

    // database
    //     .reference()
    //     .child(
    //         '$userID/mesociclos/$id/diasEntrenamiento/$numeroDia/patrones/$numeroEjercicio/ejercicioSeleccionado/comentarios')
    //     .update({'semana ${semana + 1}': comentario});

    // if (semana == 0) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .comentarios
    //       .semana1 = comentario;
    // } else if (semana == 1) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .comentarios
    //       .semana2 = comentario;
    // } else if (semana == 2) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .comentarios
    //       .semana3 = comentario;
    // } else if (semana == 3) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .comentarios
    //       .semana4 = comentario;
    // }
 
  }

  Future<void> actualizarCargayRepeticiones(String carga, repeticiones,
      int numeroDia, numeroEjercicio, semana, serie) async {
  
    // final id = _historialEntrenamiento
    //     .historialEntrenamiento[
    //         _historialEntrenamiento.historialEntrenamiento.length - 1]
    //     .id;

    // bool error = false;

    // database
    //     .reference()
    //     .child(
    //         '$userID/mesociclos/$id/diasEntrenamiento/$numeroDia/patrones/$numeroEjercicio/ejercicioSeleccionado/apuntescarga/semana ${semana + 1}')
    //     .update({
    //   '$serie': carga,
    // }).catchError((e) {
    //   error = true;
    //   print(error);
    // });
    // if (error == false) {
    //   print('ha entrado aquii');
    //   if (semana == 0) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntescarga
    //         .semana1[serie] = carga;
    //   } else if (semana == 1) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntescarga
    //         .semana2[serie] = carga;
    //   } else if (semana == 2) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntescarga
    //         .semana3[serie] = carga;
    //   } else if (semana == 3) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntescarga
    //         .semana4[serie] = carga;
    //   }
    // }
    // database
    //     .reference()
    //     .child(
    //         '$userID/mesociclos/$id/diasEntrenamiento/$numeroDia/patrones/$numeroEjercicio/ejercicioSeleccionado/apuntesreps/semana ${semana + 1}')
    //     .update({
    //   '$serie': repeticiones,
    // }).catchError((error) {
    //   print('$error ppp2');
    // });
    // if (error == false) {
    //   if (semana == 0) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntesreps
    //         .semana1[serie] = repeticiones;
    //   } else if (semana == 1) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntesreps
    //         .semana2[serie] = repeticiones;
    //   } else if (semana == 2) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntesreps
    //         .semana3[serie] = repeticiones;
    //   } else if (semana == 3) {
    //     _historialEntrenamiento
    //         .historialEntrenamiento[
    //             _historialEntrenamiento.historialEntrenamiento.length - 1]
    //         .diasEntrenamiento[numeroDia]
    //         .patrones[numeroEjercicio]
    //         .ejercicioSeleccionado
    //         .apuntesreps
    //         .semana4[serie] = repeticiones;
    //   }
    // }

  
  }



  Future<void> actualizarCarga(
      String carga, int numeroDia, numeroEjercicio, semana, serie) async {
    
    // final id = _historialEntrenamiento
    //     .historialEntrenamiento[
    //         _historialEntrenamiento.historialEntrenamiento.length - 1]
    //     .id;

    // database
    //     .reference()
    //     .child(
    //         '$userID/mesociclos/$id/diasEntrenamiento/$numeroDia/patrones/$numeroEjercicio/ejercicioSeleccionado/apuntescarga/semana ${semana + 1}')
    //     .update({
    //   '$serie': carga,
    // });

    // if (semana == 0) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .apuntescarga
    //       .semana1[serie] = carga;
    // } else if (semana == 1) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .apuntescarga
    //       .semana2[serie] = carga;
    // } else if (semana == 2) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .apuntescarga
    //       .semana3[serie] = carga;
    // } else if (semana == 3) {
    //   _historialEntrenamiento
    //       .historialEntrenamiento[
    //           _historialEntrenamiento.historialEntrenamiento.length - 1]
    //       .diasEntrenamiento[numeroDia]
    //       .patrones[numeroEjercicio]
    //       .ejercicioSeleccionado
    //       .apuntescarga
    //       .semana4[serie] = carga;
    // }
 
  }

  
  Future<void> actualizarRepeticiones(String repeticiones, int numeroDia,
      numeroEjercicio, semana, serie) async {
    
  //   final id = _historialEntrenamiento
  //       .historialEntrenamiento[
  //           _historialEntrenamiento.historialEntrenamiento.length - 1]
  //       .id;

  //   print(id);
  //   // try {
  //   database
  //       .reference()
  //       .child(
  //           '$userID/mesociclos/$id/diasEntrenamiento/$numeroDia/patrones/$numeroEjercicio/ejercicioSeleccionado/apuntesreps/semana ${semana + 1}')
  //       .update({
  //     '$serie': repeticiones,
  //   });

  //   if (semana == 0) {
  //     _historialEntrenamiento
  //         .historialEntrenamiento[
  //             _historialEntrenamiento.historialEntrenamiento.length - 1]
  //         .diasEntrenamiento[numeroDia]
  //         .patrones[numeroEjercicio]
  //         .ejercicioSeleccionado
  //         .apuntesreps
  //         .semana1[serie] = repeticiones;
  //   } else if (semana == 1) {
  //     _historialEntrenamiento
  //         .historialEntrenamiento[
  //             _historialEntrenamiento.historialEntrenamiento.length - 1]
  //         .diasEntrenamiento[numeroDia]
  //         .patrones[numeroEjercicio]
  //         .ejercicioSeleccionado
  //         .apuntesreps
  //         .semana2[serie] = repeticiones;
  //   } else if (semana == 2) {
  //     _historialEntrenamiento
  //         .historialEntrenamiento[
  //             _historialEntrenamiento.historialEntrenamiento.length - 1]
  //         .diasEntrenamiento[numeroDia]
  //         .patrones[numeroEjercicio]
  //         .ejercicioSeleccionado
  //         .apuntesreps
  //         .semana3[serie] = repeticiones;
  //   } else if (semana == 3) {
  //     _historialEntrenamiento
  //         .historialEntrenamiento[
  //             _historialEntrenamiento.historialEntrenamiento.length - 1]
  //         .diasEntrenamiento[numeroDia]
  //         .patrones[numeroEjercicio]
  //         .ejercicioSeleccionado
  //         .apuntesreps
  //         .semana4[serie] = repeticiones;
  //   }

   
    
  }

}
