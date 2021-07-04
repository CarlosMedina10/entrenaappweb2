
import 'package:easy_localization/easy_localization.dart';
class DeteccionRepository{
String tiempoDeEntrenamiento;
double bmi;
String sexo;
double obtenerPuntosPorExperiencia(String tiempoDeEntrenamiento) {

                                        
                                       
                                       
                                        
if (tiempoDeEntrenamiento == "_Explicacion.0_2_meses".tr()) 
  return 0;
else if (tiempoDeEntrenamiento == "_Explicacion.2_6_meses".tr()) 
 return 1;
else if (tiempoDeEntrenamiento ==  "_Explicacion.6_meses_1_año".tr()) 
return 2;
else if (tiempoDeEntrenamiento == "_Explicacion.1_2_años".tr()) 
return 3;
else if (tiempoDeEntrenamiento == "_Explicacion.2_5_años".tr()) 
return 4;
else if (tiempoDeEntrenamiento == "_Explicacion.+_5_años".tr()) 
return 5;
}

}