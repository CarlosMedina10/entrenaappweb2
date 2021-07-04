import 'package:easy_localization/easy_localization.dart';
import '../models/MesocicloEntrenamiento.dart';
class RepoEstadisticas{
Map<String,int> calcularFrecuencia(MesocicloEntrenamiento mesocicloEntrenamiento){
      Map<String,int> frecuencia= {
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

        
        
         };
         List<String> musculosTrabajados=[];
      mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) {
        diaE.patrones.forEach((patron) {
          musculosTrabajados.add(patron.musculosTrabajados['Primario1']);
          
      



         });
         
         diaE.musculosTrabajados=musculosTrabajados.toSet().toList();
         musculosTrabajados=[];
       });
      mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
        
       
        
        (diaE.musculosTrabajados.contains('Pecho')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho']+1 ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Espalda')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda']+1,
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Biceps')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'],
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps']+1,
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Triceps')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps']+1,
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Hombro Lateral')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral']+1,
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Hombro Frontal')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal']+1,
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Hombro Posterior')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior']+1,
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Cuadriceps')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps']+1,
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Femoral')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral']+1,
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Gluteo')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo']+1,
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
          (diaE.musculosTrabajados.contains('Trapecio')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio']+1,
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
        (diaE.musculosTrabajados.contains('Gemelo')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo']+1,
            'Abs' : frecuencia['Abs'],

          } : frecuencia= frecuencia;
          (diaE.musculosTrabajados.contains('Abs')) ? frecuencia = {
            'Pecho' : frecuencia['Pecho'] ,
            'Espalda' : frecuencia['Espalda'],
            'Biceps' : frecuencia['Biceps'],
            'Triceps' : frecuencia['Triceps'],
            'Hombro Lateral' : frecuencia['Hombro Lateral'],
            'Hombro Frontal' : frecuencia['Hombro Frontal'],
            'Hombro Posterior' : frecuencia['Hombro Posterior'],
            'Cuadriceps' : frecuencia['Cuadriceps'],
            'Femoral' : frecuencia['Femoral'],
            'Gluteo' : frecuencia['Gluteo'],
            'Trapecio' : frecuencia['Trapecio'],
            'Gemelo' : frecuencia['Gemelo'],
            'Abs' : frecuencia['Abs']+1,

          } : frecuencia= frecuencia;
        
        
        });

      
   return frecuencia;

    }

  int calcularFrecuenciaGrupoMuscular(Map<String,int> frecuencia,String musculo){
     int frecuenciaMusculo;
  frecuencia.forEach((key, value) { if (key==musculo) {
  frecuenciaMusculo=value;
  }});
  return frecuenciaMusculo;
  }
  
  Map<String,int> calcularTiposDeTrabajo(MesocicloEntrenamiento mesocicloEntrenamiento,int semanaEntrenamiento){
   Map<String,int> tiposTrabajo= {
       'Fuerza':0,
        'Hipertrofia':0,
        'Estres Metabolico':0,
       };
 int series ;

 mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
         
mesocicloEntrenamiento.diasEntrenamiento[ mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) { 

if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4;
   }
if (patron.musculosTrabajados['Primario1'] != 'Abs') {
if (patron.configuracion.trabajo == 1){
  tiposTrabajo= {
    'Fuerza':tiposTrabajo['Fuerza']+series,
    'Hipertrofia':tiposTrabajo['Hipertrofia'] ,
    'Estres Metabolico':tiposTrabajo['Estres Metabolico'] ,};
    
    
    
    
    } else tiposTrabajo=tiposTrabajo;

if (patron.configuracion.trabajo == 2){
  tiposTrabajo= {
    'Fuerza':tiposTrabajo['Fuerza'],
    'Hipertrofia':tiposTrabajo['Hipertrofia']+series ,
    'Estres Metabolico':tiposTrabajo['Estres Metabolico'] ,};
    
    
    
    
    } else tiposTrabajo=tiposTrabajo;

if (patron.configuracion.trabajo == 3){
  tiposTrabajo= {
    'Fuerza':tiposTrabajo['Fuerza'],
    'Hipertrofia':tiposTrabajo['Hipertrofia'] ,
    'Estres Metabolico':tiposTrabajo['Estres Metabolico']+series ,};
    
    
    
    
    } else tiposTrabajo=tiposTrabajo;

}

});

});

return tiposTrabajo;
} 

Map<String,int> calcularTiposDeTrabajoPorGrupoMuscular(MesocicloEntrenamiento mesocicloEntrenamiento,String musculo){
   Map<String,int> tiposTrabajo= {
       'Fuerza':0,
        'Hipertrofia':0,
        'Estres Metabolico':0,
       };

int sumaSeries;
 mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
         
mesocicloEntrenamiento.diasEntrenamiento[ mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) { 
 if ( patron.configuracion.serieDescendente==2 || patron.configuracion.restPause==2 || patron.configuracion.superserie==2)
 sumaSeries=(patron.configuracion.series.semana1+patron.configuracion.series.semana2+patron.configuracion.series.semana3+patron.configuracion.series.semana4)*2;
else if ( patron.configuracion.serieDescendente==3 || patron.configuracion.restPause==3 || patron.configuracion.superserie==3)
 sumaSeries=(patron.configuracion.series.semana1+patron.configuracion.series.semana2+patron.configuracion.series.semana3+patron.configuracion.series.semana4)*3;
else if ( patron.configuracion.serieDescendente==4 || patron.configuracion.restPause==4 )
 sumaSeries=(patron.configuracion.series.semana1+patron.configuracion.series.semana2+patron.configuracion.series.semana3+patron.configuracion.series.semana4)*4;
else if ( patron.configuracion.serieDescendente==5 || patron.configuracion.restPause==5 )
 sumaSeries=(patron.configuracion.series.semana1+patron.configuracion.series.semana2+patron.configuracion.series.semana3+patron.configuracion.series.semana4)*5;
else if ( patron.configuracion.serieDescendente==6 || patron.configuracion.restPause==6 )
 sumaSeries=(patron.configuracion.series.semana1+patron.configuracion.series.semana2+patron.configuracion.series.semana3+patron.configuracion.series.semana4)*6;
else
sumaSeries=patron.configuracion.series.semana1+patron.configuracion.series.semana2+patron.configuracion.series.semana3+patron.configuracion.series.semana4;


// if (semanaEntrenamiento==1) {
//      series=patron.configuracion.series.semana1;
//    } else if (semanaEntrenamiento==2)
//    {series=patron.configuracion.series.semana2;
//    } else if (semanaEntrenamiento==3)
//    {series=patron.configuracion.series.semana3;
//    } else if (semanaEntrenamiento==4)
//    {series=patron.configuracion.series.semana4;
//    }
if (patron.musculosTrabajados['Primario1']==musculo || patron.musculosTrabajados['Primario2']==musculo) {
if (patron.configuracion.trabajo == 1){
  tiposTrabajo= {
    'Fuerza':tiposTrabajo['Fuerza']+sumaSeries,
    'Hipertrofia':tiposTrabajo['Hipertrofia'] ,
    'Estres Metabolico':tiposTrabajo['Estres Metabolico'] ,};
    
    
    
    
    } else tiposTrabajo=tiposTrabajo;

if (patron.configuracion.trabajo == 2){
  tiposTrabajo= {
    'Fuerza':tiposTrabajo['Fuerza'],
    'Hipertrofia':tiposTrabajo['Hipertrofia']+sumaSeries,
    'Estres Metabolico':tiposTrabajo['Estres Metabolico'] ,};
    
    
    
    
    } else tiposTrabajo=tiposTrabajo;

if (patron.configuracion.trabajo == 3){
  tiposTrabajo= {
    'Fuerza':tiposTrabajo['Fuerza'],
    'Hipertrofia':tiposTrabajo['Hipertrofia'] ,
    'Estres Metabolico':tiposTrabajo['Estres Metabolico']+sumaSeries};
    
    
    
    
    } }
    
    
    
    else tiposTrabajo=tiposTrabajo;

});

});
print('$tiposTrabajo');
return tiposTrabajo;
} 
  
   List<Map<String,dynamic>> calcularEjerciciosQueTrabajanGrupoMuscular(MesocicloEntrenamiento mesocicloEntrenamiento,String musculo,int primOsecun){
   
 List<Map<String,dynamic>> ejerciciosList=[];
Map<String,dynamic> ejerciciosMap;
 mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
    // Map<String,dynamic> ejerciciosMap1;
         List<String> ejercicios = [];
mesocicloEntrenamiento.diasEntrenamiento[ mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) { 

if (primOsecun == 1) {
if (patron.musculosTrabajados['Primario1']==musculo || patron.musculosTrabajados['Primario2']==musculo)  {
ejercicios.add(patron.ejercicioSeleccionado.nombre);


} } else  if (patron.musculosTrabajados['Secundario1'] == musculo || patron.musculosTrabajados['Secundario2'] == musculo) {
ejercicios.add(patron.ejercicioSeleccionado.nombre);


}
});
ejerciciosMap={'${mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)}': ejercicios} ;
ejerciciosList.add(ejerciciosMap);
print('$ejerciciosList');

});

return ejerciciosList;
}
  
  
  Map<String,int> calcularNumeroDeSeriesTrabajoPrimario(MesocicloEntrenamiento mesocicloEntrenamiento, int semanaEntrenamiento){
   Map<String,int> nSeries= {
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
        'Abs':0 };
 int series;
  


   
 mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
         
mesocicloEntrenamiento.diasEntrenamiento[ mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) {
  
  // comprobamos si es superserie de los mismos musculos (2) y entonces sumamos el doble de series
  if (patron.configuracion.restPause==2 || patron.configuracion.serieDescendente==2 || patron.configuracion.superserie==2)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*2;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*2;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*2;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*2;
   }

  } else if (patron.configuracion.restPause==3 || patron.configuracion.serieDescendente==3 || patron.configuracion.superserie==3)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*3;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*3;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*3;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*3;
   } }else if (patron.configuracion.restPause==4 || patron.configuracion.serieDescendente==4)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*4;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*4;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*4;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*4;
   } }else if (patron.configuracion.restPause==5 || patron.configuracion.serieDescendente==5)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*5;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*5;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*5;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*5;
   }

  } else if (patron.configuracion.restPause==6 || patron.configuracion.serieDescendente==6)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*6;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*6;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*6;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*6;
   }

  } else {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4;
   }

  }
  
  patron.musculosTrabajados.containsValue('Pecho') ? (patron.musculosTrabajados['Primario1']=='Pecho' || patron.musculosTrabajados['Primario2']=='Pecho') ? nSeries= {
    'Pecho':nSeries['Pecho']+series,
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Hombro Lateral') ? (patron.musculosTrabajados['Primario1']=='Hombro Lateral' || patron.musculosTrabajados['Primario2']=='Hombro Lateral') ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral']+series ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  patron.musculosTrabajados.containsValue('Hombro Frontal') ? (patron.musculosTrabajados['Primario1']=='Hombro Frontal') || (patron.musculosTrabajados['Primario2']=='Hombro Frontal') ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal']+series ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  patron.musculosTrabajados.containsValue('Triceps') ? (patron.musculosTrabajados['Primario1']=='Triceps' || patron.musculosTrabajados['Primario2']=='Triceps') ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps']+series,
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
     'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Hombro Posterior') ? (patron.musculosTrabajados['Primario1']=='Hombro Posterior' || patron.musculosTrabajados['Primario2']=='Hombro Posterior') ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior']+series, 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

      patron.musculosTrabajados.containsValue('Biceps') ? ((patron.musculosTrabajados['Primario1']=='Biceps') || (patron.musculosTrabajados['Primario2']=='Biceps'))  ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps']+series, 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  
  patron.musculosTrabajados.containsValue('Espalda') ? ((patron.musculosTrabajados['Primario1']=='Espalda') || (patron.musculosTrabajados['Primario2']=='Espalda')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda']+series, 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Cuadriceps') ? ((patron.musculosTrabajados['Primario1']=='Cuadriceps') || (patron.musculosTrabajados['Primario2']=='Cuadriceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps']+series, 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
   

   patron.musculosTrabajados.containsValue('Femoral') ? ((patron.musculosTrabajados['Primario1']=='Femoral') || (patron.musculosTrabajados['Primario2']=='Femoral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral']+series, 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Gluteo') ? ((patron.musculosTrabajados['Primario1']=='Gluteo') || (patron.musculosTrabajados['Primario2']=='Gluteo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo']+series,
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Trapecio') ? ((patron.musculosTrabajados['Primario1']=='Trapecio') || (patron.musculosTrabajados['Primario2']=='Trapecio')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio']+series,
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  patron.musculosTrabajados.containsValue('Gemelo') ? ((patron.musculosTrabajados['Primario1']=='Gemelo') || (patron.musculosTrabajados['Primario2']=='Gemelo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo']+series,
    'Abs': nSeries['Abs'], 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  
patron.musculosTrabajados.containsValue('Abs') ? ((patron.musculosTrabajados['Primario1']=='Abs') || (patron.musculosTrabajados['Primario2']=='Abs')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'],
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
     'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs']+series, 
    
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  
 }); 
 });

 return nSeries;




  }
int filtrarSeries(Map<String,int> nSeries,String musculo){

  
  int series;
  nSeries.forEach((key, value) { if (key==musculo) {
  series=value;
  }});
  return series;

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
  else return "";
  

}
Map<String,int> calcularNumeroDeSeriesTrabajoSecundario(MesocicloEntrenamiento mesocicloEntrenamiento,int semanaEntrenamiento){
   Map<String,int> nSeries= {
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
        'Abs':0 };
int series;
        mesocicloEntrenamiento.diasEntrenamiento.forEach((diaE) { 
         mesocicloEntrenamiento.diasEntrenamiento[ mesocicloEntrenamiento.diasEntrenamiento.indexOf(diaE)].patrones.forEach((patron) {
   if (patron.configuracion.restPause==2 || patron.configuracion.serieDescendente==2)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*2;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*2;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*2;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*2;
   }

  } else if (patron.configuracion.restPause==3 || patron.configuracion.serieDescendente==3)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*3;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*3;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*3;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*3;
   } }else if (patron.configuracion.restPause==4 || patron.configuracion.serieDescendente==4)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*4;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*4;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*4;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*4;
   } }else if (patron.configuracion.restPause==5 || patron.configuracion.serieDescendente==5)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*5;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*5;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*5;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*5;
   }

  } else if (patron.configuracion.restPause==6 || patron.configuracion.serieDescendente==6)
  
  {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1*6;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2*6;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3*6;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4*6;
   }

  } else {
    if (semanaEntrenamiento==1) {
     series=patron.configuracion.series.semana1;
   } else if (semanaEntrenamiento==2)
   {series=patron.configuracion.series.semana2;
   } else if (semanaEntrenamiento==3)
   {series=patron.configuracion.series.semana3;
   } else if (semanaEntrenamiento==4)
   {series=patron.configuracion.series.semana4;
   }

  }


  patron.musculosTrabajados.containsValue('Pecho') ? ((patron.musculosTrabajados['Secundario1']=='Pecho')||(patron.musculosTrabajados['Secundario2']=='Pecho')) ? nSeries= {
    'Pecho':nSeries['Pecho']+series,
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

     patron.musculosTrabajados.containsValue('Pecho') ? ((patron.musculosTrabajados['Secundario3']=='Pecho')||(patron.musculosTrabajados['Secundario4']=='Pecho')) ? nSeries= {
    'Pecho':nSeries['Pecho']+series,
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Pecho') ? ((patron.musculosTrabajados['Secundario5']=='Pecho')||(patron.musculosTrabajados['Secundario6']=='Pecho')) ? nSeries= {
    'Pecho':nSeries['Pecho']+series,
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Hombro Lateral') ? ((patron.musculosTrabajados['Secundario1']=='Hombro Lateral')||(patron.musculosTrabajados['Secundario2']=='Hombro Lateral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral']+series ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Hombro Lateral') ? ((patron.musculosTrabajados['Secundario3']=='Hombro Lateral')||(patron.musculosTrabajados['Secundario4']=='Hombro Lateral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral']+series ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Hombro Lateral') ? ((patron.musculosTrabajados['Secundario5']=='Hombro Lateral')||(patron.musculosTrabajados['Secundario6']=='Hombro Lateral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral']+series ,
    'Hombro Frontal':nSeries['Hombro Frontal'] ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
     'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Hombro Frontal') ? ((patron.musculosTrabajados['Secundario1']=='Hombro Frontal')||(patron.musculosTrabajados['Secundario2']=='Hombro Frontal')) ? nSeries= {
   'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal']+series ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : 
    
    
    
    nSeries=nSeries : nSeries=nSeries ;


  patron.musculosTrabajados.containsValue('Hombro Frontal') ? ((patron.musculosTrabajados['Secundario3']=='Hombro Frontal')||(patron.musculosTrabajados['Secundario4']=='Hombro Frontal')) ? nSeries= {
   'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal']+series ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : 
    
    
    
    nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Hombro Frontal') ? ((patron.musculosTrabajados['Secundario5']=='Hombro Frontal')||(patron.musculosTrabajados['Secundario6']=='Hombro Frontal')) ? nSeries= {
   'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal']+series ,
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : 
    
    
    
    nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Triceps') ? ((patron.musculosTrabajados['Secundario1']=='Triceps')||(patron.musculosTrabajados['Secundario2']=='Triceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps']+series , 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  

  patron.musculosTrabajados.containsValue('Triceps') ? ((patron.musculosTrabajados['Secundario3']=='Triceps')||(patron.musculosTrabajados['Secundario4']=='Triceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps']+series , 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Triceps') ? ((patron.musculosTrabajados['Secundario5']=='Triceps')||(patron.musculosTrabajados['Secundario6']=='Triceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps']+series , 
    'Hombro Posterior': nSeries['Hombro Posterior'], 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Hombro Posterior') ? ((patron.musculosTrabajados['Secundario1']=='Hombro Posterior')||(patron.musculosTrabajados['Secundario2']=='Hombro Posterior')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior']+series , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  
  patron.musculosTrabajados.containsValue('Hombro Posterior') ? ((patron.musculosTrabajados['Secundario3']=='Hombro Posterior')||(patron.musculosTrabajados['Secundario4']=='Hombro Posterior')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior']+series , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Hombro Posterior') ? ((patron.musculosTrabajados['Secundario5']=='Hombro Posterior')||(patron.musculosTrabajados['Secundario6']=='Hombro Posterior')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior']+series , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'],
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Biceps') ? ((patron.musculosTrabajados['Secundario1']=='Biceps')||(patron.musculosTrabajados['Secundario2']=='Biceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps']+series, 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
   

   patron.musculosTrabajados.containsValue('Biceps') ? ((patron.musculosTrabajados['Secundario3']=='Biceps')||(patron.musculosTrabajados['Secundario4']=='Biceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps']+series, 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Biceps') ? ((patron.musculosTrabajados['Secundario5']=='Biceps')||(patron.musculosTrabajados['Secundario6']=='Biceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps']+series, 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Espalda') ? ((patron.musculosTrabajados['Secundario1']=='Espalda')||(patron.musculosTrabajados['Secundario2']=='Espalda')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda']+series, 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  

    patron.musculosTrabajados.containsValue('Espalda') ? ((patron.musculosTrabajados['Secundario3']=='Espalda')||(patron.musculosTrabajados['Secundario4']=='Espalda')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda']+series, 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Espalda') ? ((patron.musculosTrabajados['Secundario5']=='Espalda')||(patron.musculosTrabajados['Secundario6']=='Espalda')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda']+series, 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Cuadriceps') ? ((patron.musculosTrabajados['Secundario1']=='Cuadriceps')||(patron.musculosTrabajados['Secundario2']=='Cuadriceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps']+series, 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  

  patron.musculosTrabajados.containsValue('Cuadriceps') ? ((patron.musculosTrabajados['Secundario3']=='Cuadriceps')||(patron.musculosTrabajados['Secundario4']=='Cuadriceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps']+series, 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;


    patron.musculosTrabajados.containsValue('Cuadriceps') ? ((patron.musculosTrabajados['Secundario5']=='Cuadriceps')||(patron.musculosTrabajados['Secundario6']=='Cuadriceps')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps']+series, 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
    patron.musculosTrabajados.containsValue('Femoral') ? ((patron.musculosTrabajados['Secundario1']=='Femoral')||(patron.musculosTrabajados['Secundario2']=='Femoral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral']+series, 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

      patron.musculosTrabajados.containsValue('Femoral') ? ((patron.musculosTrabajados['Secundario3']=='Femoral')||(patron.musculosTrabajados['Secundario4']=='Femoral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral']+series, 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Femoral') ? ((patron.musculosTrabajados['Secundario5']=='Femoral')||(patron.musculosTrabajados['Secundario6']=='Femoral')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral']+series,
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
    patron.musculosTrabajados.containsValue('Gluteo') ? ((patron.musculosTrabajados['Secundario1']=='Gluteo')||(patron.musculosTrabajados['Secundario2']=='Gluteo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo']+series,
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
    patron.musculosTrabajados.containsValue('Gluteo') ? ((patron.musculosTrabajados['Secundario3']=='Gluteo')||(patron.musculosTrabajados['Secundario4']=='Gluteo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo']+series,
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
    patron.musculosTrabajados.containsValue('Gluteo') ? ((patron.musculosTrabajados['Secundario5']=='Gluteo')||(patron.musculosTrabajados['Secundario6']=='Gluteo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo']+series,
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
    patron.musculosTrabajados.containsValue('Trapecio') ? ((patron.musculosTrabajados['Secundario1']=='Trapecio')||(patron.musculosTrabajados['Secundario2']=='Trapecio')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio']+series,
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

   patron.musculosTrabajados.containsValue('Trapecio') ? ((patron.musculosTrabajados['Secundario3']=='Trapecio')||(patron.musculosTrabajados['Secundario4']=='Trapecio')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio']+series,
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
   
   patron.musculosTrabajados.containsValue('Trapecio') ? ((patron.musculosTrabajados['Secundario5']=='Trapecio')||(patron.musculosTrabajados['Secundario6']=='Trapecio')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio']+series,
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

     patron.musculosTrabajados.containsValue('Gemelo') ? ((patron.musculosTrabajados['Secundario1']=='Gemelo')||(patron.musculosTrabajados['Secundario2']=='Gemelo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gluteo' : nSeries['Gluteo'],
    'Trapecio' : nSeries['Trapecio'],
    'Gemelo': nSeries['Gemelo']+series,
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

    patron.musculosTrabajados.containsValue('Gemelo') ? ((patron.musculosTrabajados['Secundario3']=='Gemelo')||(patron.musculosTrabajados['Secundario4']=='Gemelo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gemelo': nSeries['Gemelo']+series,
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;


  patron.musculosTrabajados.containsValue('Gemelo') ? ((patron.musculosTrabajados['Secundario5']=='Gemelo')||(patron.musculosTrabajados['Secundario6']=='Gemelo')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gemelo': nSeries['Gemelo']+series,
    'Abs': nSeries['Abs'], 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;

  patron.musculosTrabajados.containsValue('Abs') ? ((patron.musculosTrabajados['Secundario1']=='Abs')||(patron.musculosTrabajados['Secundario2']=='Abs')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs']+series, 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ;
  patron.musculosTrabajados.containsValue('Abs') ? ((patron.musculosTrabajados['Secundario3']=='Abs')||(patron.musculosTrabajados['Secundario4']=='Abs')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs']+series, 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ; 

  patron.musculosTrabajados.containsValue('Abs') ? ((patron.musculosTrabajados['Secundario5']=='Abs')||(patron.musculosTrabajados['Secundario6']=='Abs')) ? nSeries= {
    'Pecho':nSeries['Pecho'],
    'Hombro Lateral':nSeries['Hombro Lateral'] ,
    'Hombro Frontal':nSeries['Hombro Frontal'],
    'Triceps': nSeries['Triceps'], 
    'Hombro Posterior': nSeries['Hombro Posterior'] , 
    'Biceps': nSeries['Biceps'], 
    'Espalda': nSeries['Espalda'], 
    'Cuadriceps': nSeries['Cuadriceps'], 
    'Femoral': nSeries['Femoral'], 
    'Gemelo': nSeries['Gemelo'],
    'Abs': nSeries['Abs']+series, 
    
    
    
    } : nSeries=nSeries : nSeries=nSeries ; 
 });
        });

 return nSeries;




  } 
   int calcularMaxF(Map<String,int> f,){
    int max=0;
     

    f.forEach((key, value) { (value>max) ? max=value : max=max;});
   
    
    return max;

  }
  int calcularMaximo(Map<String,int> nSeries,sSeries){
    int max1=0;
     int max2=0;

    nSeries.forEach((key, value) { (value>max1) ? max1=value : max1=max1;});
    print('$max1 1111');
     sSeries.forEach((key, value) { (value>max2) ? max2=value : max2=max2;});
     print('$max2 22222');
    if (max1>=max2)
    return max1; else
    return max2;

  }
  
  }