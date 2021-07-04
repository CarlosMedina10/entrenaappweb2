
import '../models/MesocicloEntrenamiento.dart';
import '../models/Ejercicio.dart';
import '../apis/api_estructuracionEntrenamiento.dart';
import 'dart:math';





class SeleccionRepository {
  
  final EstructuracionApi estructuracionApi;
  

  SeleccionRepository(this.estructuracionApi);
    int userFase;
    double userBMI;
    String sexo;
    MesocicloEntrenamiento get mesocicloEntrenamiento {
    return estructuracionApi.mesocicloEntrenamiento;
}
MesocicloEntrenamiento seleccionarEjerciciosRandom(MesocicloEntrenamiento mesocicloEntrenamiento){
print('entra aquiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii!');
int ejerciciosDeEsePatron;
int ejercicioSeleccionado;
mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
         
mesocicloEntrenamiento.diasEntrenamiento[ mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) {
ejerciciosDeEsePatron=patron.ejercicios.length;  
ejercicioSeleccionado= Random().nextInt(ejerciciosDeEsePatron);
print('$ejercicioSeleccionado');
patron.ejercicioSeleccionado = patron.ejercicios[ ejercicioSeleccionado];

});
mesocicloEntrenamiento.diasEntrenamiento[mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) {
int count=0;
Ejercicio ejercicioSeleccionado=patron.ejercicioSeleccionado;
mesocicloEntrenamiento.diasEntrenamiento[mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron1) {
 if (patron1.ejercicioSeleccionado.nombre == ejercicioSeleccionado.nombre)
 count=count+1;
});
if (count>1)
seleccionarEjerciciosRandom(mesocicloEntrenamiento);
});
});
return mesocicloEntrenamiento;

}

MesocicloEntrenamiento  guardarMusculosTrabajadosCadaDia(MesocicloEntrenamiento mesocicloEntrenamiento){
  final List<Map<String,int>> listaFrecuencia = [];
   int step;
   for (step =0  ; step <= mesocicloEntrenamiento.diasEntrenamiento.length-1; step++)
   {
   listaFrecuencia.add({
        'Pecho':0,
        'Espalda':0,
        'Biceps':0,
        'Triceps':0,
        'Hombro Lateral':0,
        'Hombro Frontal':0,
        'Hombro Posterior':0,
        'Cuadriceps':0,
        'Femoral':0,
        'Gluteo':0,
        'Trapecio':0,
        'Gemelo':0,
        'Abs':0

        
        
         });
                    
                      mesocicloEntrenamiento.diasEntrenamiento[step].patrones.forEach((patron) { 
                        listaFrecuencia[step].forEach((key, value) { 
                          if (patron.ejercicioSeleccionado.musculosTrabajados != null)
                          if (patron.ejercicioSeleccionado.musculosTrabajados['Primario1'] == key)
                          {
                            listaFrecuencia[step].update(key, (value) => value=value+1);
                         
                          
                          }
                        });

                      });

   }        
                      
                        
        
              
                    
                       int diaActual = 0;
                      
                      mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
                        listaFrecuencia[diaActual].forEach((key, value) {
                          
                          if (value>0 && diaE.musculosTrabajados.contains(key) == false) 

                          diaE.musculosTrabajados.add(key);
                        });
                       diaActual=diaActual+1;
                      }); 
                     
                        return mesocicloEntrenamiento;
                        
                        
                        //cambiar
                     }
 
 


 
}