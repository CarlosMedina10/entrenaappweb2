import 'dart:math';

import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:entrenaapp/repository/repo_principal.dart';

 


  
  

class EstructuracionApi {
String userID;

PrincipalRepository principalRepository;
EstructuracionApi(this.userID,this.principalRepository);


   MesocicloEntrenamiento _mesocicloEntrenamiento;
  
  List<MesocicloEntrenamiento> mesociclosEntrenamiento;
   MesocicloEntrenamiento get mesocicloEntrenamiento {
    return _mesocicloEntrenamiento;

}
 setMesociclo(){
   _mesocicloEntrenamiento=null;
 }
 
 filtrarMaterial(List<dynamic> materialDisponible,List<dynamic> materialDisponible2,MesocicloEntrenamiento mesociclo,int userFase,){
  List<dynamic> materialDisponibleFinal;

  if (materialDisponible==null || materialDisponible.isEmpty) 
  //Cambiar android
  materialDisponibleFinal=['gym'];
  else materialDisponibleFinal=materialDisponible+materialDisponible2;
  mesociclo.materialDisponible=materialDisponibleFinal;


  
 
 
 mesociclo.diasEntrenamiento.forEach((diaE) {


   
   diaE.patrones.forEach((patron) {
    
  if (patron.configuraciones!=null) {
  
    patron.configuracion= patron.configuraciones.listaConfiguraciones[principalRepository.userVolume];
  }
     List<String> nombre=[];
     List<String> nombre2=[];
     List<String> nombre3=[];
    patron.ejercicios.forEach((ejercicio) {
      int suma=0;
      materialDisponibleFinal.forEach((materialFinal) {
        if (materialFinal != 'bancoplano' && materialFinal !='bancoregulable'  ){
      if (ejercicio.material.contains(materialFinal) == false){
       suma=suma+1;
       
      }}

     }); 
      if (materialDisponibleFinal.contains('bancoplano') && materialDisponibleFinal.contains('bancoregulable'))
     {
     if (suma==materialDisponibleFinal.length-2)
     nombre.add(ejercicio.nombre);
     } else if (materialDisponibleFinal.contains('bancoplano') || materialDisponibleFinal.contains('bancoregulable'))
     {
      if (suma==materialDisponibleFinal.length-1)
     nombre.add(ejercicio.nombre);
     } else {
       if (suma==materialDisponibleFinal.length)
     nombre.add(ejercicio.nombre);
     }
     }); 
     
     nombre.forEach((nombre) { 
        patron.ejercicios.removeWhere((element) => element.nombre == nombre);

     });
    patron.ejercicios.forEach((ejercicio) { 
      
        if (ejercicio.material.contains('bancoplano') == true) {
        if (materialDisponibleFinal.contains('bancoplano') == false && materialDisponibleFinal.contains('bancoregulable') == false && materialDisponibleFinal.contains('gym')== false) {
             nombre3.add(ejercicio.nombre);
        }
        }
        if (ejercicio.material.contains('bancoregulable') == true) {
        if (materialDisponibleFinal.contains('bancoregulable') == false && materialDisponibleFinal.contains('gym')== false) {
             nombre3.add(ejercicio.nombre);
        }
        }


    });
     nombre3.forEach((nombre) { 
        patron.ejercicios.removeWhere((element) => element.nombre == nombre);

     });
    patron.ejercicios.forEach((ejercicio) { 
      
          if (userFase==0 && materialDisponibleFinal.contains('gym') && ejercicio.principiantes==false) {
            nombre2.add(ejercicio.nombre);
          }

    });
    nombre2.forEach((nombre2) { 
        patron.ejercicios.removeWhere((element) => element.nombre == nombre2);

     });
     
     if (patron.ejercicios.length==0) {

       patron.ejerciciosComodin.forEach((ejercicio) {
       
      materialDisponibleFinal.forEach((materialFinal) {
      if (ejercicio.material.contains(materialFinal) == true || ejercicio.material.contains('comodin') == true){
       if (patron.ejercicios.contains(ejercicio)== false)
       patron.ejercicios.add(ejercicio);
       print('ejercicio aded ${ejercicio.nombre}');
      }

     }); 
     
     
     });

      

        
     }
 
    });


 });
 print('holaaaaaa ${mesociclo.materialDisponible}');
 _mesocicloEntrenamiento=mesociclo;
  
 }



 entrenamientoDeCero(DateTime fechaInicio,int numeroDias,List prioridad,List<dynamic> materialDisponible,materialDisponible2){
 List<dynamic> materialDisponibleFinal;
 if (materialDisponible==null || materialDisponible.isEmpty) 
  //Cambiar android
  materialDisponibleFinal=['gym'];
  else materialDisponibleFinal=materialDisponible+materialDisponible2;
 
   if (numeroDias==2)  
  _mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio2Dias();
  else if (numeroDias==3)  
  _mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio3Dias();
  else if (numeroDias==4)  
  _mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio4Dias();
  else if (numeroDias==5)  
  _mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio5Dias();
  else if (numeroDias==6)  
  _mesocicloEntrenamiento = MesocicloEntrenamiento.mesocicloVacio6Dias();

  _mesocicloEntrenamiento.fechaInicio=fechaInicio.toIso8601String();
  _mesocicloEntrenamiento.musculosPrioritarios= prioridad;
  _mesocicloEntrenamiento.materialDisponible=materialDisponibleFinal;

 }

 validacion(DateTime fechaInicio,int numeroDias,List<dynamic> materialDisponible,List<dynamic> materialDisponible2, String sexo , List<dynamic> prioridad, int userFase,double userBMI,{isFromVerOtraEstructura=false,MesocicloEntrenamiento mesocicloActual,String volume}) async{
   


   print(volume);
   print('volumen guardado');
   principalRepository.guardarUserVolume(volume);

   _mesocicloEntrenamiento=null;
   if (userFase==0) {
    //  if( userBMI > 25)
     if (numeroDias==2)
     _mesocicloEntrenamiento = MesocicloEntrenamiento.dosDiasPrincipiante0(); 

     if (numeroDias==3)
     _mesocicloEntrenamiento = MesocicloEntrenamiento.tironEmpujePiernaPrincipiante0(); 

     if (numeroDias==4)

      _mesocicloEntrenamiento = MesocicloEntrenamiento.torsoPiernaPrincipiante0();

      if (numeroDias==5)

       _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasCompensadoPrincipiante0();
      
    if (numeroDias==6)

       _mesocicloEntrenamiento = MesocicloEntrenamiento.seisDiasPrincipiante0();
     
  //    else _mesocicloEntrenamiento = MesocicloEntrenamiento.tironEmpujePierna();

   }
    if (userFase==1) {
      
      if (numeroDias==2)
      _mesocicloEntrenamiento = MesocicloEntrenamiento.dosDiasPrincipiante1(); 
     
     if (numeroDias==3)
      _mesocicloEntrenamiento = MesocicloEntrenamiento.tironEmpujePiernaPrincipiante1();

      if (numeroDias==4)

      _mesocicloEntrenamiento = MesocicloEntrenamiento.torsoPiernaPrincipiante1();

      if (numeroDias==5)

       _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasCompensadoPrincipiante1();

       if (numeroDias==6)

       _mesocicloEntrenamiento = MesocicloEntrenamiento.seisDiasPrincipiante1();
     

   }
    else if (userFase==2) {
       
     if (numeroDias==2)
     _mesocicloEntrenamiento = MesocicloEntrenamiento.dosDias1(); 
     
     if (numeroDias==3)
      
     _mesocicloEntrenamiento = MesocicloEntrenamiento.tironEmpujePierna();

      if (numeroDias==4)

      _mesocicloEntrenamiento=MesocicloEntrenamiento.torsoPierna();

      if (numeroDias==5)

     _mesocicloEntrenamiento=MesocicloEntrenamiento.cincoDiasCompensado();

       if (numeroDias==6)

       _mesocicloEntrenamiento=MesocicloEntrenamiento.seisDiasCompensado();
     

   }
    
   else if  (userFase==3) {
   
     // Todos los entrenamientos para hombres
 if (numeroDias==2) { 
 if ( prioridad.isEmpty) {

   bool isCorrect=false;
      mesociclosEntrenamiento=[MesocicloEntrenamiento.dosDias1(),MesocicloEntrenamiento.dosDias2(),];
      int entrenamientoSeleccionado;
      var rng = new Random();
      int entrenamientoActual;
      if(isFromVerOtraEstructura == true) {
        mesociclosEntrenamiento.forEach((element) {
        if(element.nombreMesociclo == mesocicloActual.nombreMesociclo)
        {
          entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
        }

      });
      if (entrenamientoActual < mesociclosEntrenamiento.length-1) {
        entrenamientoSeleccionado=entrenamientoActual+1;
      } else {
        entrenamientoSeleccionado=0;
      }
      } else {
      
      mesociclosEntrenamiento.forEach((element) {
          if (principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.isEmpty==false) {
        if(element.nombreMesociclo == principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento[principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.length-1].nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
    
        }}
      });
        while (isCorrect!=true) {
        entrenamientoSeleccionado= rng.nextInt(mesociclosEntrenamiento.length);
     
        if( entrenamientoSeleccionado!=entrenamientoActual)
        isCorrect=true;
        }
      }
        _mesocicloEntrenamiento = mesociclosEntrenamiento[entrenamientoSeleccionado];

 }

 }

     if (numeroDias==3) {

       // Todos los entrenamientos de 3 dias 
   
   if ( prioridad.isEmpty) {
     // Aqui dentro tenemos todos los entrenamientos de 3 dias con trabajo compensado para hombres 
      

        // Entrenamiento de 3 dias con disponibilidad de gym. (compensado)(hombres)
      bool isCorrect=false;
      mesociclosEntrenamiento=[MesocicloEntrenamiento.tironEmpujePierna(),MesocicloEntrenamiento.tironEmpujePierna2(),MesocicloEntrenamiento.tironEmpujePierna3()];
      int entrenamientoSeleccionado;
      var rng = new Random();
      int entrenamientoActual;
      if(isFromVerOtraEstructura == true) {
        mesociclosEntrenamiento.forEach((element) {
        if(element.nombreMesociclo == mesocicloActual.nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
        print('$entrenamientoActual jajajajajajjajajajajajajajaja');
        }

      });
      if (entrenamientoActual < mesociclosEntrenamiento.length-1) {
        entrenamientoSeleccionado=entrenamientoActual+1;
      } else {
        entrenamientoSeleccionado=0;
      }
      } else {
      mesociclosEntrenamiento.forEach((element) {
        if (principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.isEmpty==false) {
        if(element.nombreMesociclo == principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento[principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.length-1].nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
       
        } }
      });
        while (isCorrect!=true) {
        entrenamientoSeleccionado= rng.nextInt(mesociclosEntrenamiento.length);
       
        if( entrenamientoSeleccionado!=entrenamientoActual)
        isCorrect=true;
        }
      }
        _mesocicloEntrenamiento = mesociclosEntrenamiento[entrenamientoSeleccionado];

      

       

      
      
   
      
      } else if ((prioridad.contains('tren inferior')) && prioridad.length==1 ){

        _mesocicloEntrenamiento=MesocicloEntrenamiento.tresDiasPrioridadTrenInferior();
      } else if ((prioridad.contains('tren superior')) && prioridad.length==1 ){

        _mesocicloEntrenamiento=MesocicloEntrenamiento.tresDiasPrioridadTrenSuperior();
      }
      

      
      
      
      
      }

       if (numeroDias==4){
         if ( prioridad.isEmpty) {
           
            bool isCorrect=false;
      mesociclosEntrenamiento=[MesocicloEntrenamiento.torsoPierna(),MesocicloEntrenamiento.cuatroDiasCompensado(),MesocicloEntrenamiento.cuatroDiasCompensado2()];
      int entrenamientoSeleccionado;
      var rng = new Random();
      int entrenamientoActual;
      if(isFromVerOtraEstructura == true) {
        
        mesociclosEntrenamiento.forEach((element) {
        if(element.nombreMesociclo == mesocicloActual.nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
      
        }

      });
      if (entrenamientoActual < mesociclosEntrenamiento.length-1) {
        entrenamientoSeleccionado=entrenamientoActual+1;
      } else {
        entrenamientoSeleccionado=0;
      }
      } else {
      mesociclosEntrenamiento.forEach((element) {
          if (principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.isEmpty==false) {
        if(element.nombreMesociclo == principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento[principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.length-1].nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
       
        } }
      });
        while (isCorrect!=true) {
        entrenamientoSeleccionado= rng.nextInt(mesociclosEntrenamiento.length);
     
        if( entrenamientoSeleccionado!=entrenamientoActual)
        isCorrect=true;
        }
      }
        _mesocicloEntrenamiento = mesociclosEntrenamiento[entrenamientoSeleccionado];
           
         }    else if ((prioridad.contains('pecho')) && prioridad.length==1 ){
       _mesocicloEntrenamiento = MesocicloEntrenamiento.cuatroDiasPrioridadPecho();
      
       
       } else if ((prioridad.contains('espalda')) && prioridad.length==1 ){
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cuatroDiasPrioridadEspalda();
       } 
       else if ((prioridad.contains('gluteo')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cuatroDiasPrioridadGluteo();
       }  else if ((prioridad.contains('cuadriceps')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cuatroDiasPrioridadCuadriceps(); 
      }
       else if ((prioridad.contains('biceps')) && (prioridad.contains('triceps')) && prioridad.length==2 ){
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cuatroDiasPrioridadBrazos();
          
       } else if ((prioridad.contains('hombros')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cuatroDiasPrioridadHombros();
       }
        
       }

        if (numeroDias==5){
         if ( prioridad.isEmpty) {
           
           
            bool isCorrect=false;
      mesociclosEntrenamiento=[MesocicloEntrenamiento.cincoDiasCompensado(),MesocicloEntrenamiento.cincoDiasCompensado2(),MesocicloEntrenamiento.cincoDiasCompensado3()];
      int entrenamientoSeleccionado;
      var rng = new Random();
      int entrenamientoActual;
      if(isFromVerOtraEstructura == true) {
        
        mesociclosEntrenamiento.forEach((element) {
        if(element.nombreMesociclo == mesocicloActual.nombreMesociclo)
        {
          
          entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
      
        }

      });
      if (entrenamientoActual < mesociclosEntrenamiento.length-1) {
        entrenamientoSeleccionado=entrenamientoActual+1;
      } else {
        entrenamientoSeleccionado=0;
      }
      } else {
      mesociclosEntrenamiento.forEach((element) {
        if (principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.isEmpty==false) {
        if(element.nombreMesociclo == principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento[principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.length-1].nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
       
        } 
        } 
      });
        while (isCorrect!=true) {
        entrenamientoSeleccionado= rng.nextInt(mesociclosEntrenamiento.length);
    
        if( entrenamientoSeleccionado!=entrenamientoActual)
        isCorrect=true;
        }
      }
        _mesocicloEntrenamiento = mesociclosEntrenamiento[entrenamientoSeleccionado];


          
           
         } 
         else if ((prioridad.contains('pecho')) && prioridad.length==1 ){
       _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasPrioridadPecho();
      
       
       }
      else if ((prioridad.contains('espalda')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasPrioridadEspalda();
         }
      else if ((prioridad.contains('gluteo')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasPrioridadGluteo();
         } 
      else if ((prioridad.contains('cuadriceps')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasPrioridadCuadriceps();
         }

      else if ((prioridad.contains('hombros')) && prioridad.length==1 ) {
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasPrioridadHombros();
         }
      

     

       else if ((prioridad.contains('biceps')) && (prioridad.contains('triceps')) && prioridad.length==2 )
         _mesocicloEntrenamiento = MesocicloEntrenamiento.cincoDiasPrioridadBrazos();
          
       }
      if (numeroDias==6) {
      if ( prioridad.isEmpty) {
             bool isCorrect=false;
      mesociclosEntrenamiento=[MesocicloEntrenamiento.seisDiasCompensado(),MesocicloEntrenamiento.seisDiasCompensado2()];
      int entrenamientoSeleccionado;
      var rng = new Random();
      int entrenamientoActual;
      if(isFromVerOtraEstructura == true) {
       
        mesociclosEntrenamiento.forEach((element) {
        
        if(element.nombreMesociclo == mesocicloActual.nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
      
        }

      });
      if (entrenamientoActual < mesociclosEntrenamiento.length-1) {
        entrenamientoSeleccionado=entrenamientoActual+1;
      } else {
        entrenamientoSeleccionado=0;
      }
      } else {
      mesociclosEntrenamiento.forEach((element) {
          if (principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.isEmpty==false) {
        if(element.nombreMesociclo == principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento[principalRepository.entrenamientoApi.historialEntrenamiento.historialEntrenamiento.length-1].nombreMesociclo)
        {entrenamientoActual= mesociclosEntrenamiento.indexOf(element);
        
        }}
      });
        while (isCorrect!=true) {
        entrenamientoSeleccionado= rng.nextInt(mesociclosEntrenamiento.length);
     
        if( entrenamientoSeleccionado!=entrenamientoActual)
        isCorrect=true;
        }
      }
        _mesocicloEntrenamiento = mesociclosEntrenamiento[entrenamientoSeleccionado];


          
           
         } 
      
       else if (prioridad.contains('pecho') && prioridad.contains('hombros') && prioridad.length==2 ){
       _mesocicloEntrenamiento = MesocicloEntrenamiento.seisDiasPrioridadPechoHombro();
      }
       else if (prioridad.contains('espalda') && prioridad.contains('biceps') && prioridad.contains('triceps') && prioridad.length==3 ){
       _mesocicloEntrenamiento = MesocicloEntrenamiento.seisDiasPrioridadEspaldaBrazos();
      }
      else if (prioridad.contains('cuadriceps') && prioridad.contains('femoral') && prioridad.contains('gluteo') && prioridad.length==3 ){
       _mesocicloEntrenamiento = MesocicloEntrenamiento.seisDiasPrioridadTrenInferior();
      }
   }
   }
      
      
      

      if (_mesocicloEntrenamiento != null) 
     { _mesocicloEntrenamiento.fechaInicio=fechaInicio.toIso8601String();
      _mesocicloEntrenamiento.musculosPrioritarios= prioridad;
      print('${_mesocicloEntrenamiento.musculosPrioritarios}');
    filtrarMaterial( materialDisponible,materialDisponible2, _mesocicloEntrenamiento,userFase);
     }
      // else if (numeroDias==4) {
      //   _mesocicloEntrenamiento = _mesocicloEntrenamiento.tironEmpujePierna;
       
      // } 
      // else if (numeroDias==5) {
      //    _mesocicloEntrenamiento = MesocicloEntrenamiento.tironEmpujePiernaTironEmpuje;
     
      // } 
    //  else _mesocicloEntrenamiento=null; 
    }
      





}

