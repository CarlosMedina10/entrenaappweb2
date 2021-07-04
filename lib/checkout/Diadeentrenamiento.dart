
import 'package:diacritic/diacritic.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:entrenaapp/models/Configuracion.dart';
import '../models/Patron.dart';




class DiaEntrenamiento {

  // static DiaEntrenamiento diaEmpuje= DiaEntrenamiento(patrones: [Patron.empujeInclinado,Patron.flexiondeHombroyAduccionHorizontal,Patron.empujeHorizontal,Patron.hombroLateralAcortamiento,Patron.hombroLateralEstiramiento,Patron.tricepsHombroExtension],nombreentrenamiento: 'Día de Empuje',imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaTiron= DiaEntrenamiento(patrones: [Patron.visagraCadera,Patron.extensionHombro,Patron.aducciondeHombro,Patron.aproximacionEscapular,Patron.abduccionHorizontal,Patron.bicepsHombroAnatomico],nombreentrenamiento: 'Día de Tiron',imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaPierna= DiaEntrenamiento(patrones: [Patron.genericoPierna,Patron.extensionRodillaPesado,Patron.extensionRodillaLigero,Patron.curlFemoral,Patron.extensionDeCaderaLigero,Patron.abduccionDecadera],nombreentrenamiento: 'Día de Pierna',imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaEmpuje2= DiaEntrenamiento(patrones: [Patron.empujeVertical,Patron.flexiondeHombroyAduccionHorizontal,Patron.empujeHorizontal,Patron.hombroLateralTensionConstante],nombreentrenamiento: 'Día de Empuje2',imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaBrazosPotente= DiaEntrenamiento(patrones: [Patron.bicepsHombroAnatomico,Patron.tricepsHombroAnatomico],nombreentrenamiento: 'Día de Tiron2',imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaTorso1= DiaEntrenamiento(patrones: [Patron.empujeVertical,Patron.empujeHorizontal,Patron.extensionHombro,Patron.aproximacionEscapular,Patron.bicepsHombroAnatomico,Patron.tricepsHombroFlexion],nombreentrenamiento: 'Día de Torso 1',imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaTorso2=DiaEntrenamiento(patrones: [Patron.visagraCadera,Patron.aducciondeHombro,Patron.empujeInclinado,Patron.flexiondeHombroyAduccionHorizontal,Patron.hombroLateralTensionConstante],nombreentrenamiento: 'Día de Torso 2',imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  List<Patron> patrones;
  String nombreentrenamiento;
  String imagenrepresentacionentrenamiento;
  CompletadoEntrenamiento entrenamientoCompletado ;
  List<String> musculosTrabajados;

  DiaEntrenamiento(
      {this.patrones,
      this.nombreentrenamiento,
      this.imagenrepresentacionentrenamiento,this.entrenamientoCompletado,this.musculosTrabajados });
  // static DiaEntrenamiento diaEmpuje= DiaEntrenamiento(patrones: [Patron.empujeInclinado,Patron.flexiondeHombroyAduccionHorizontal,Patron.empujeHorizontal,Patron.hombroLateralAcortamiento,Patron.hombroLateralEstiramiento,Patron.tricepsHombroExtension],nombreentrenamiento: 'Día de Empuje',imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaTiron= DiaEntrenamiento(patrones: [Patron.visagraCadera,Patron.extensionHombro,Patron.aducciondeHombro,Patron.aproximacionEscapular,Patron.abduccionHorizontal,Patron.bicepsHombroAnatomico],nombreentrenamiento: 'Día de Tiron',imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaPierna= DiaEntrenamiento(patrones: [Patron.genericoPierna,Patron.extensionRodillaPesado,Patron.extensionRodillaLigero,Patron.curlFemoral,Patron.extensionDeCaderaLigero,Patron.abduccionDecadera],nombreentrenamiento: 'Día de Pierna',imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaEmpuje2= DiaEntrenamiento(patrones: [Patron.empujeVertical,Patron.flexiondeHombroyAduccionHorizontal,Patron.empujeHorizontal,Patron.hombroLateralTensionConstante],nombreentrenamiento: 'Día de Empuje2',imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaBrazosPotente= DiaEntrenamiento(patrones: [Patron.bicepsHombroAnatomico,Patron.tricepsHombroAnatomico],nombreentrenamiento: 'Día de Tiron2',imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaTorso1= DiaEntrenamiento(patrones: [Patron.empujeVertical,Patron.empujeHorizontal,Patron.extensionHombro,Patron.aproximacionEscapular,Patron.bicepsHombroAnatomico,Patron.tricepsHombroFlexion],nombreentrenamiento: 'Día de Torso 1',imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );
  // static DiaEntrenamiento diaTorso2=DiaEntrenamiento(patrones: [Patron.visagraCadera,Patron.aducciondeHombro,Patron.empujeInclinado,Patron.flexiondeHombroyAduccionHorizontal,Patron.hombroLateralTensionConstante],nombreentrenamiento: 'Día de Torso 2',imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',entrenamientoCompletado: CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false) );

  String transformNombreDia(nombreDia){

    if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Torso".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_torso".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Torso 1".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso day 1".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [1.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Torso 2".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso day 2".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [2.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna".replaceAll(".", "")).trim().toLowerCase())  || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna 1".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day 1".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna 2".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day 2".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Empuje".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_empuje".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Empuje 1".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push day 1".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Empuje 2".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push day 2".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Empuje 3".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push day 3".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [3.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Tirón".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_tiron".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Tirón 1".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull day 1".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Tirón 2".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull day 2".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna (Enfasis cuádriceps)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day (quadriceps emphasis)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_cuadriceps".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna 2 (Enfasis cuádriceps)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day 2 (quadriceps emphasis)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna_2_enfasis_cuadriceps".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna (Enfasis Femoral/Glúteo) + Hombro lateral".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day (Femoral / Gluteal Emphasis) + Lateral shoulder".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_femoral_gluteo".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pecho".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Chest day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pecho".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Espalda".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Back day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_espalda".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Hombro".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Shoulder day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_hombro".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pierna 2 (Enfasis Glúteo)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg day 2(Gluteal emphasis)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_gluteo".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Arms day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_brazos".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Empuje (Prioridad Hombros)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push day (Shoulders priority)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_empuje_prioridad_hombros".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Hombro y Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Shoulder and Arms Day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_hombro_y_brazos".tr();
    else if ((removeDiacritics(removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase().replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Femoral + Espalda".replaceAll(".", "")).trim().toLowerCase() ) || (removeDiacritics(removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase().replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Femoral/Espalda".replaceAll(".", "")).trim().toLowerCase() ) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Hamstrings + Back Day".replaceAll(".", "")).trim().toLowerCase())) 
    return "_Dia_Entrenamiento_Model.dia_de_femoral_y_espalda".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Pecho + Hombro + Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Chest + Shoulder + Arms Day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_pecho_hombro_y_brazos".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Femoral/Glúteo".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Femoral/Gluteal day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_femoral_gluteo".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Espalda/Pecho/Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Back/Chest/Arms Day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_espalda_pecho_brazos".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día de Cuádriceps".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Quadriceps day".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia_de_cuadriceps".tr();
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día 1".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Day 1".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia".tr(args:[1.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día 2".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Day 2".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia".tr(args:[2.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día 3".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Day 3".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia".tr(args:[3.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día 4".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Day 4".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia".tr(args:[4.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día 5".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Day 5".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia".tr(args:[5.toString()]);
    else if ((removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Día 6".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreDia.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Day 6".replaceAll(".", "")).trim().toLowerCase()))
    return "_Dia_Entrenamiento_Model.dia".tr(args:[6.toString()]);
    else return nombreDia;




  }

  
  factory DiaEntrenamiento.diaTorsoPrincipiante2d() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.config4principiante),Patron.aduccionHorizontal(Configuracion.config5principiante),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config4principiante),Patron.aduccionYExtensionDeHombro(Configuracion.config5principiante),Patron.bicepsHombroAnatomico(Configuracion.config5principiante),Patron.tricepsHombroFlexion(Configuracion.config5principiante),Patron.hombroLateralTensionConstante(Configuracion.config6principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPiernaPrincipiante2d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config4principiante),Patron.extensionDeRodillaLigera1(Configuracion.config5principiante),Patron.extensionDeRodillaLigera2(Configuracion.config10principiante),Patron.flexionDeRodilla(Configuracion.config10principiante),Patron.gemeloRodillaExtendida(Configuracion.config10principiante),Patron.rotacionDeTronco(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }

  // 2 Días Principiante 1
  factory DiaEntrenamiento.diaTorsoPrincipiante12d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config3intermedio),Patron.aduccionDeHombro(Configuracion.config5intermedio),Patron.empujeHorizontal(Configuracion.config3intermedio),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config5intermedio),Patron.hombroLateralAcortamiento(Configuracion.config1010intermedio),Patron.bicepsHombroFlexion(Configuracion.config1010principiante),Patron.tricepsHombroFlexion(Configuracion.config1010principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  
   factory DiaEntrenamiento.diaPiernaPrincipiante12d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config2intermedio),Patron.extensionDeRodillaLigera1(Configuracion.config4intermedio),Patron.extensionDeRodillaLigera2(Configuracion.config6intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.gemeloRodillaExtendida(Configuracion.config10intermedio),Patron.rotacionDeTronco(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }

  // Tiron Empuje Pierna Principiante 


  factory DiaEntrenamiento.diaEmpujePrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.config4principiante),Patron.empujeHorizontal(Configuracion.config5principiante),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config6principiante),Patron.hombroLateralAcortamiento(Configuracion.config6principiante),Patron.hombroLateralTensionConstante(Configuracion.config10principiante),Patron.tricepsHombroFlexion(Configuracion.config10principiante),Patron.flexionDeColumna(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTironPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config4principiante),Patron.aduccionYExtensionDeHombro(Configuracion.config5principiante),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.config6principiante),Patron.abduccionHorizontal(Configuracion.config10principiante),Patron.bicepsHombroFlexion(Configuracion.config10principiante),Patron.rotacionDeTronco(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPiernaPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config4principiante),Patron.extensionDeRodillaLigera(Configuracion.config6principiante),Patron.flexionDeRodilla(Configuracion.config6principiante),Patron.extensionDeCaderaLigero(Configuracion.config6principiante),Patron.abduccionDeCadera(Configuracion.config8principiante),Patron.gemeloRodillaExtendida(Configuracion.config6principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  
// Tiron Empuje Pierna Principiante nivel 1
  
  factory DiaEntrenamiento.diaEmpujePrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.config2intermedio),Patron.empujeInclinado(Configuracion.config4intermedio),Patron.aduccionDeHombroYAduccionHorizontal(Configuracion.config5intermedio),Patron.hombroLateralTensionConstante(Configuracion.config5intermedio),Patron.hombroLateralEstiramiento(Configuracion.config7intermedio),Patron.tricepsHombroFlexion(Configuracion.config7intermedio),Patron.flexionDeColumna(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTironPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config2intermedio),Patron.aduccionDeHombro(Configuracion.config5intermedio),Patron.apximacionDeEscapulas(Configuracion.config6intermedio),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.config10intermedio),Patron.abduccionHorizontal(Configuracion.config10intermedio),Patron.bicepsHombroFlexion(Configuracion.config7intermedio),Patron.rotacionDeTronco(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPiernaPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config2intermedio),Patron.extensionDeCaderaRodillaFija(Configuracion.config4intermedio),Patron.extensionDeRodillaLigera(Configuracion.config5intermedio),Patron.extensionDeRodillaLigera(Configuracion.config6intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.gemeloRodillaExtendida(Configuracion.config10intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  


  // TORSO-PIERNA PRINCIPIANTE nivel 0
    factory DiaEntrenamiento.diaTorso1Principiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.config4principiante),Patron.aduccionHorizontal(Configuracion.config5principiante),Patron.extensionDeHombroFlexionDeCodo(Configuracion.config5principiante),Patron.apximacionDeEscapulas(Configuracion.config10principiante),Patron.bicepsHombroAnatomico(Configuracion.config5principiante),Patron.tricepsHombroFlexion(Configuracion.config5principiante),Patron.hombroLateralTensionConstante(Configuracion.config6principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

  factory DiaEntrenamiento.diaTorso2Principiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config4principiante),Patron.aduccionDeHombro(Configuracion.config6principiante),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config6principiante),Patron.hombroLateralAcortamiento(Configuracion.config7Principiante),Patron.bicepsHombroFlexion(Configuracion.config7Principiante),Patron.tricepsHombroExtension(Configuracion.config7Principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  
   factory DiaEntrenamiento.diaPierna1Principiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config4principiante),Patron.extensionDeRodillaLigera1(Configuracion.config5principiante),Patron.extensionDeRodillaLigera2(Configuracion.config10principiante),Patron.flexionDeRodilla(Configuracion.config10principiante),Patron.gemeloRodillaExtendida(Configuracion.config10principiante),Patron.rotacionDeTronco(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPierna2Principiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.config4principiante),Patron.extensionDeCaderaRodillaFija(Configuracion.config5principiante),Patron.flexionDeRodilla(Configuracion.config6principiante),Patron.extensionDeRodillaLigera(Configuracion.config6principiante),Patron.gemeloRodillaFlexionada(Configuracion.config8principiante),Patron.flexionDeColumna(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

  // TORSO-PIERNA PRINCIPIANTE nivel 1
    factory DiaEntrenamiento.diaTorso1Principiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.config2intermedio),Patron.empujeInclinado(Configuracion.config3intermedio),Patron.aduccionHorizontal(Configuracion.config5intermedio),Patron.extensionDeHombroFlexionDeCodo(Configuracion.config4intermedio),Patron.apximacionDeEscapulas(Configuracion.config6intermedio),Patron.hombroLateralTensionConstante(Configuracion.config10intermedio),Patron.bicepsHombroAnatomico(Configuracion.config555intermedio),Patron.tricepsHombroExtension(Configuracion.config555intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

  factory DiaEntrenamiento.diaTorso2Principiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config3intermedio),Patron.aduccionDeHombro(Configuracion.config5intermedio),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config66intermedio),Patron.hombroLateralAcortamiento(Configuracion.config1010intermedio),Patron.bicepsHombroFlexion(Configuracion.config1010principiante),Patron.tricepsHombroFlexion(Configuracion.config1010principiante),],nombreentrenamiento:  "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  
   factory DiaEntrenamiento.diaPierna1Principiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config2intermedio),Patron.extensionDeRodillaLigera1(Configuracion.config5intermedio),Patron.extensionDeRodillaLigera2(Configuracion.config6intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.gemeloRodillaExtendida(Configuracion.config10intermedio),Patron.rotacionDeTronco(Configuracion.config9intermedio)],nombreentrenamiento:  "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPierna2Principiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.config3intermedio),Patron.extensionDeCaderaRodillaFija(Configuracion.config4intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.extensionDeRodillaLigera(Configuracion.config6intermedio),Patron.gemeloRodillaFlexionada(Configuracion.config10intermedio),Patron.flexionDeColumna(Configuracion.config9intermedio)],nombreentrenamiento:  "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }






 // 5 Dias compensado principiante 
   factory DiaEntrenamiento.diaPierna15dPrincipiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config4principiante),Patron.extensionDeRodillaLigera(Configuracion.config6principiante),Patron.flexionDeRodilla(Configuracion.config6principiante),Patron.extensionDeCaderaLigero(Configuracion.config10principiante),Patron.gemeloRodillaExtendida(Configuracion.config10principiante),Patron.flexionDeColumna(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje5dPrincipiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeDeclinado(Configuracion.config4principiante),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config6principiante),Patron.hombroLateralAcortamiento(Configuracion.config6principiante),Patron.hombroLateralTensionConstante(Configuracion.config10principiante),Patron.tricepsHombroExtension(Configuracion.config10principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron5dPrincipiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.config4principiante),Patron.aduccionDeHombro(Configuracion.config5principiante),Patron.apximacionDeEscapulas(Configuracion.config6principiante),Patron.abduccionHorizontal(Configuracion.config10principiante),Patron.bicepsHombroExtension(Configuracion.config10principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna25dPrincipiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.config4principiante),Patron.extensionDeRodillaLigera(Configuracion.config5principiante),Patron.extensionDeRodillaLigera(Configuracion.config6principiante),Patron.flexionDeRodilla(Configuracion.config6principiante),Patron.gemeloRodillaExtendida(Configuracion.config10principiante),Patron.rotacionDeTronco(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTorso5dPrincipiante() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.config4principiante),Patron.aduccionHorizontal(Configuracion.config6principiante),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config5principiante),Patron.aduccionYExtensionDeHombro(Configuracion.config6principiante),Patron.hombroLateralEstiramiento(Configuracion.config1010principiante),Patron.bicepsHombroFlexion(Configuracion.config1010principiante),Patron.tricepsHombroFlexion(Configuracion.config1010principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  
   factory DiaEntrenamiento.diaPierna15dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config2intermedio),Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.config3intermedio),Patron.extensionDeRodillaLigera(Configuracion.config6intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.gemeloRodillaExtendida(Configuracion.config10intermedio),Patron.flexionDeColumna(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje5dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.config2intermedio),Patron.aduccionHorizontal(Configuracion.config5intermedio),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.config8intermedio),Patron.hombroLateralTensionConstante(Configuracion.config5intermedio),Patron.hombroLateralAcortamiento(Configuracion.config7intermedio),Patron.tricepsHombroExtension(Configuracion.config7intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron5dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config2intermedio),Patron.aduccionYExtensionDeHombro(Configuracion.config5intermedio),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.config7intermedio),Patron.abduccionHorizontal(Configuracion.config8intermedio),Patron.bicepsHombroExtension(Configuracion.config7intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna25dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.config2intermedio),Patron.extensionDeCaderaRodillaFija(Configuracion.config3intermedio),Patron.extensionDeRodillaLigera(Configuracion.config5intermedio),Patron.extensionDeRodillaLigera(Configuracion.config7intermedio),Patron.gemeloRodillaExtendida(Configuracion.config8intermedio),Patron.rotacionDeTronco(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTorso5dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.config2intermedio),Patron.aduccionHorizontal(Configuracion.config5intermedio),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config3intermedio),Patron.aduccionYExtensionDeHombro(Configuracion.config6intermedio),Patron.hombroLateralEstiramiento(Configuracion.config1010intermedio),Patron.bicepsHombroFlexion(Configuracion.config10intermedio),Patron.tricepsHombroFlexion(Configuracion.config10intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
















// 6 dias principiante nivel 0 
 factory DiaEntrenamiento.diaTiron16dPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.config4principiante),Patron.aduccionDeHombro(Configuracion.config6principiante),Patron.abduccionHorizontal(Configuracion.config6principiante),Patron.bicepsHombroAnatomico(Configuracion.config4principiante),Patron.bicepsHombroExtension(Configuracion.config7Principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje16dPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.config4principiante),Patron.empujeCerrado(Configuracion.config5principiante),Patron.aduccionDeHombroYAduccionHorizontal(Configuracion.config7Principiante),Patron.hombroLateralTensionConstante(Configuracion.config6principiante),Patron.tricepsHombroFlexion(Configuracion.config7Principiante),Patron.flexionDeColumna(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaPierna16dPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config4principiante),Patron.extensionDeRodillaLigera1(Configuracion.config5principiante),Patron.extensionDeRodillaLigera2(Configuracion.config7Principiante),Patron.flexionDeRodilla(Configuracion.config5principiante),Patron.gemeloRodillaExtendida(Configuracion.config10principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
 factory DiaEntrenamiento.diaTiron26dPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config4principiante),Patron.aduccionYExtensionDeHombro(Configuracion.config5principiante),Patron.apximacionDeEscapulas(Configuracion.config7Principiante),Patron.bicepsHombroFlexion(Configuracion.config7Principiante),Patron.rotacionDeTronco(Configuracion.config9principante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje26dPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.config4principiante),Patron.empujeHorizontal(Configuracion.config4principiante),Patron.aduccionHorizontal(Configuracion.config5principiante),Patron.hombroLateralAcortamiento(Configuracion.config6principiante),Patron.tricepsHombroExtension(Configuracion.config7Principiante)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
 
  factory DiaEntrenamiento.diaPierna26dPrincipiante0() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.config4principiante),Patron.extensionDeRodillaLigera1(Configuracion.config5principiante),Patron.extensionDeRodillaLigera2(Configuracion.config77Principiante,),Patron.flexionDeRodilla(Configuracion.config5principiante),Patron.aduccionDeCadera(Configuracion.config7Principiante),Patron.gemeloRodillaExtendida(Configuracion.config10principiante),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
// 6 dias principiante nivel 1
factory DiaEntrenamiento.diaEmpuje16dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.config2intermedio),Patron.empujeInclinado(Configuracion.config4intermedio),Patron.aduccionDeHombroYAduccionHorizontal(Configuracion.config5intermedio),Patron.hombroLateralTensionConstante(Configuracion.config5intermedio),Patron.hombroLateralEstiramiento(Configuracion.config7intermedio),Patron.tricepsHombroFlexion(Configuracion.config7intermedio),Patron.flexionDeColumna(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron16dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.config2intermedio),Patron.aduccionDeHombro(Configuracion.config5intermedio),Patron.apximacionDeEscapulas(Configuracion.config6intermedio),Patron.abduccionHorizontal(Configuracion.config10intermedio),Patron.bicepsHombroAnatomico(Configuracion.config5intermedio),Patron.bicepsHombroExtension(Configuracion.config7intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna16dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaPesada(Configuracion.config2intermedio),Patron.extensionDeCaderaRodillaFija(Configuracion.config4intermedio),Patron.extensionDeRodillaLigera(Configuracion.config5intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.gemeloRodillaExtendida(Configuracion.config10intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje26dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.config2intermedio),Patron.empujeInclinado(Configuracion.config4intermedio),Patron.aduccionHorizontal(Configuracion.config5intermedio),Patron.hombroLateralAcortamiento(Configuracion.config5intermedio),Patron.hombroLateralTensionConstante(Configuracion.config7intermedio),Patron.empujeCerrado(Configuracion.config5intermedio),Patron.tricepsHombroExtension(Configuracion.config7intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron26dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.config2intermedio),Patron.aduccionYExtensionDeHombro(Configuracion.config5intermedio),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.config10intermedio),Patron.abduccionHorizontal(Configuracion.config10intermedio),Patron.bicepsHombroFlexion(Configuracion.config7intermedio),Patron.rotacionDeTronco(Configuracion.config9intermedio)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna26dPrincipiante1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.config2intermedio),Patron.extensionDeRodillaPesada(Configuracion.config4intermedio),Patron.extensionDeRodillaLigera(Configuracion.config6intermedio),Patron.flexionDeRodilla(Configuracion.config6intermedio),Patron.aduccionDeCadera(Configuracion.config6intermedio),Patron.gemeloRodillaExtendida(Configuracion.config10intermedio),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

  // 2 Días Principiante 0


  // 2 Días Modelo 1 

  factory DiaEntrenamiento.diaTorso2d1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroAnatomico(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  
   factory DiaEntrenamiento.diaPierna2d1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.flexionDeRodilla(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
 
 // 2 Días Modelo 2
  
  factory DiaEntrenamiento.diaTorso2d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeVertical(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig77,listaConfiguraciones: ListaConfiguraciones.listConfig77),Patron.bicepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPierna2d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeRodilla(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

  
  // Tiron Empuje Pierna 1
  factory DiaEntrenamiento.diaEmpuje() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig55,listaConfiguraciones: ListaConfiguraciones.listConfig55),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralAcortamiento(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.apximacionDeEscapulas(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaPesada(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeRodilla(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }

  // Tiron Empuje Pierna 2
  factory DiaEntrenamiento.diaEmpuje3d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.empujeInclinado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7777,listaConfiguraciones: ListaConfiguraciones.listConfig7777),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.tricepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron3d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna3d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  // Tiron Empuje Pierna 3
 factory DiaEntrenamiento.diaTiron3d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
 factory DiaEntrenamiento.diaEmpuje3d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie,comentario: "_Dia_Entrenamiento_Model.triserie".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie),Patron.empujeHorizontal(Configuracion.c3onfig444,listaConfiguraciones:ListaConfiguraciones.listConfig444),Patron.hombroLateralAcortamiento(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.tricepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
 factory DiaEntrenamiento.diaPierna3d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.extensionDeRodillaPesada(Configuracion.c3onfig444,listaConfiguraciones:ListaConfiguraciones.listConfig444),Patron.flexionDeRodilla(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
// 3 días p.Tren inferior 
  
  factory DiaEntrenamiento.diaPierna3dpTi1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaLigero(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.extensionDeRodillaLigera(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna3dpTi2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaPesada(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeRodilla(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.abduccionDeCadera(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTorso3dpTi() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.bicepsHombroAnatomico(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_triceps".tr()),Patron.tricepsHombroFlexion(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  
// 3 días p.Tren superior 


 // ** Mismo día de torso 1 y torso 2 que el de 4 días torso pierna 
 factory DiaEntrenamiento.diaPierna3dPTs() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  
  
  
  
  
  
  
  
  // TORSO-PIERNA
  
  factory DiaEntrenamiento.diaTorso1() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.apximacionDeEscapulas(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroAnatomico(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

  factory DiaEntrenamiento.diaTorso2() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.empujeVertical(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionHorizontal(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.hombroLateralAcortamiento(Configuracion.c3onfig77,listaConfiguraciones: ListaConfiguraciones.listConfig77),Patron.bicepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  
   factory DiaEntrenamiento.diaPierna1() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.flexionDeRodilla(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPierna2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeCaderaLigero(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeRodilla(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.extensionDeRodillaLigera(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  
// TORSO-PIERNA 2 
  factory DiaEntrenamiento.diaEmpuje4d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.empujeHorizontal(Configuracion.c3onfig222,listaConfiguraciones: ListaConfiguraciones.listConfig222),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna14d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeRodillaPesada(Configuracion.c3onfig222,listaConfiguraciones: ListaConfiguraciones.listConfig222),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron4d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.bicepsHombroExtension(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPierna24d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig222,listaConfiguraciones: ListaConfiguraciones.listConfig222),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.hombroLateralAcortamiento(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_femoral_gluteo".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  // 4 dias compensado F1 
factory DiaEntrenamiento.diaPecho() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_press".tr()),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pecho".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEspalda() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.apximacionDeEscapulas(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.bicepsHombroFlexion(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_espalda".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }  
 factory DiaEntrenamiento.diaPierna4d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaPesada(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeRodilla(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  } 
 factory DiaEntrenamiento.diaHombro() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.hombroLateralAcortamiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralEstiramiento(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroAnatomico(Configuracion.c3onfig333,listaConfiguraciones: ListaConfiguraciones.listConfig333),Patron.empujeCerrado(Configuracion.c3onfig333,listaConfiguraciones: ListaConfiguraciones.listConfig333),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_hombro".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

  // 4 Dias prioridad pecho 
  factory DiaEntrenamiento.diaPecho14dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7777superserie,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie,comentario:"_Dia_Entrenamiento_Model.triserie_con_los_siguientes_ejercicios".tr()),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.tricepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEspalda4dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.bicepsHombroExtension(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }  
  factory DiaEntrenamiento.diaPierna4dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaLigera(Configuracion.c3onfig7777,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaLigero(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  } 
  factory DiaEntrenamiento.diaPecho24dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeInclinado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),Patron.hombroLateralEstiramiento(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  // 4 Dias prioridad Espalda
   factory DiaEntrenamiento.diaTiron14dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.apximacionDeEscapulas(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }  
   factory DiaEntrenamiento.diaTiron24dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralAcortamiento(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje4dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralAcortamiento(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.tricepsHombroFlexion(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  
  factory DiaEntrenamiento.diaPierna4dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.flexionDeRodilla(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  // 4 Dias prioridad gluteo 
  factory DiaEntrenamiento.diaEmpuje4dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr() ),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron4dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.bicepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna14dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna24dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaLigero(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionDeCadera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_gluteo".tr() ,imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  // 4 Dias prioridad brazos
   factory DiaEntrenamiento.diaEmpuje4dPb() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralAcortamiento(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.tricepsHombroFlexion(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron4dPb() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.bicepsHombroFlexion(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna4dPb() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.flexionDeRodilla(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaBrazos4dPb() {
    return 
    DiaEntrenamiento(patrones: [Patron.bicepsHombroAnatomico(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.bicepsHombroExtension(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.empujeCerrado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.tricepsHombroExtension(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_brazos".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: ['Hombro Lateral','Biceps','Triceps',] );
  }
   // 4 Dias prioridad Hombros 
   factory DiaEntrenamiento.diaEmpuje4dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralAcortamiento(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.tricepsHombroFlexion(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron4dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.bicepsHombroFlexion(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna4dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeRodilla(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaHombro4dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeInclinado(Configuracion.c3onfig333,listaConfiguraciones: ListaConfiguraciones.listConfig333),Patron.hombroLateralAcortamiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: "_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroExtension(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.tricepsHombroExtension(Configuracion.c3onfig7777superserie,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_prioridad_hombros".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }

  // 4 Dias prioridad Cuadriceps 
   
   factory DiaEntrenamiento.diaEmpuje4dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr() ),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron4dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.bicepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna14dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna24dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_2_enfasis_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  
   

 
  // 5 Dias compensado 
  factory DiaEntrenamiento.diaPierna15d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeCaderaLigero(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje5d() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeInclinado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.hombroLateralTensionConstante(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  
  factory DiaEntrenamiento.diaTiron5d() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.apximacionDeEscapulas(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna25d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTorso5d() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.hombroLateralTensionConstante(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_torso".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }

  // 5 Dias compensado 2

   factory DiaEntrenamiento.diaEmpuje5d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.empujeHorizontal(Configuracion.c3onfig2222,listaConfiguraciones: ListaConfiguraciones.listConfig2222),Patron.aduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.tricepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron5d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna15d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna25d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionDeCadera(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaHombroyBrazos5d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario: "_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),Patron.hombroLateralEstiramiento(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3,comentario:"_Dia_Entrenamiento_Model.en_superserie_con_biceps".tr()),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_hombro_y_brazos".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

  // 5 días compensado 3

  factory DiaEntrenamiento.diaEmpuje15d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.empujeHorizontal(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),Patron.tricepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaTiron5d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.apximacionDeEscapulas(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna5d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeRodillaPesada(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento:  "_Dia_Entrenamiento_Model.dia_de_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEspaldayFemoral5d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_femoral_y_espalda".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje25d3() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeInclinado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.en_superserie_con_triceps".tr()),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pecho_hombro_y_brazos".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  // 5 días prioridad espalda

  factory DiaEntrenamiento.diaPierna25dPrioridadEspalda() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeCaderaLigero(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.hombroLateralAcortamiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

  factory DiaEntrenamiento.diaPierna15dPrioridadEspalda() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.hombroLateralTensionConstante(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron15dPrioridadEspalda() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje5dPrioridadEspalda() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombroYAduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.hombroLateralAcortamiento(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.hombroLateralTensionConstante(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron25dPrioridadEspalda() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.apximacionDeEscapulas(Configuracion.c3onfig7777,listaConfiguraciones: ListaConfiguraciones.listConfig7777),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  

// 5 días prioridad Gluteo 
factory DiaEntrenamiento.diaEmpuje5dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.tricepsHombroExtension(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron5dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.bicepsHombroExtension(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  } 
  factory DiaEntrenamiento.diaPierna5dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeCaderaLigero(Configuracion.c3onfig10,listaConfiguraciones: ListaConfiguraciones.listConfig10),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  } 
   factory DiaEntrenamiento.diaGluteo5dPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaLigero(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.aduccionDeCadera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_femoral_gluteo".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPechoEspaldaPg() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeInclinado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig1010,listaConfiguraciones: ListaConfiguraciones.listConfig1010),Patron.bicepsHombroFlexion(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie,comentario:"_Dia_Entrenamiento_Model.en_superserie_con_triceps".tr()),Patron.tricepsHombroFlexion(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_espalda_pecho_brazos".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  } 
// 5 días prioridad cuadriceps 

factory DiaEntrenamiento.diaEmpuje5dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.tricepsHombroExtension(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaTiron5dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.bicepsHombroExtension(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  } 
  factory DiaEntrenamiento.diaPierna5dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  } 
   factory DiaEntrenamiento.diaCuadriceps5dPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
   factory DiaEntrenamiento.diaPechoEspaldaPc() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeInclinado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig1010,listaConfiguraciones: ListaConfiguraciones.listConfig1010),Patron.bicepsHombroFlexion(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie,comentario:"_Dia_Entrenamiento_Model.en_superserie_con_triceps".tr()),Patron.tricepsHombroFlexion(Configuracion.c3onfig6superserie,listaConfiguraciones: ListaConfiguraciones.listConfig6superserie),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_espalda_pecho_brazos".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  } 

// 5 días prioridad Hombros 
factory DiaEntrenamiento.diaEmpuje5dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.aduccionHorizontal(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario:'Técnica 1-1/2.Subes, bajas a mitad, subes y bajas hasta abajo, eso es una repetición.'),Patron.hombroLateralTensionConstante(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.tricepsHombroExtension(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6)],nombreentrenamiento: 'Día de Empuje',imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaTiron5dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.bicepsHombroFlexion(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),],nombreentrenamiento: 'Día de Tirón',imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  } 
 factory DiaEntrenamiento.diaCuadriceps5dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig333,listaConfiguraciones: ListaConfiguraciones.listConfig333),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig666,listaConfiguraciones: ListaConfiguraciones.listConfig666),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: 'Dia de Cuádriceps',imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaFemoralGluteo5dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaLigero(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.aduccionDeCadera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: 'Dia de Femoral/Glúteo',imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaHombro5dPh() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: '1" de parada abajo (sin llegar a apoyar el brazo)' ),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroExtension(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: 'En superserie con el siguiente ejercicio'),Patron.tricepsHombroFlexion(Configuracion.c3onfig7777superserie,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie),],nombreentrenamiento: 'Día de Hombro y Brazos',imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
// 5 días prioridad pecho 


factory DiaEntrenamiento.diaEmpuje15dPrioridadPecho() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralAcortamiento(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.hombroLateralTensionConstante(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje25dPrioridadPecho() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralTensionConstante(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
 
// 5 días prioridad brazos 

 factory DiaEntrenamiento.diaEmpuje5dPrioridadBrazos() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeDeclinado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }

factory DiaEntrenamiento.diaTiron5dPrioridadBrazos() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.apximacionDeEscapulas(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.bicepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaPierna15dPrioridadBrazos() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6666,listaConfiguraciones: ListaConfiguraciones.listConfig6666),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.hombroLateralTensionConstante(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }

factory DiaEntrenamiento.diaPierna25dPrioridadBrazos() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.flexionDeRodilla(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.hombroLateralAcortamiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaBrazos5dPrioridadBrazos() {
    return 
    DiaEntrenamiento(patrones: [Patron.bicepsHombroAnatomico(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.bicepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeCerrado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig66,listaConfiguraciones: ListaConfiguraciones.listConfig66),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_brazos".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }


// 6 dias Compensado 

factory DiaEntrenamiento.diaEmpuje16d() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig555,listaConfiguraciones: ListaConfiguraciones.listConfig555),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralAcortamiento(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralEstiramiento(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.tricepsHombroFlexion(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }

 factory DiaEntrenamiento.diaTiron16d() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.aduccionDeHombro(Configuracion.c3onfig555,listaConfiguraciones: ListaConfiguraciones.listConfig555),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4) ,   Patron.bicepsHombroFlexion(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna16d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeRodilla(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.aduccionDeCadera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }

 factory DiaEntrenamiento.diaEmpuje26d() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeHorizontal(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralAcortamiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

 factory DiaEntrenamiento.diaTiron26d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),Patron.abduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.bicepsHombroExtension(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna26d() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
// 6 Dias Compensado 2

factory DiaEntrenamiento.diaEmpuje16d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.hombroLateralTensionConstante(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.triserie_con_los_siguientes_ejercicios".tr()),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie),Patron.empujeHorizontal(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.hombroLateralAcortamiento(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }

 factory DiaEntrenamiento.diaTiron16d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5) ,   Patron.bicepsHombroFlexion(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna16d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig0,listaConfiguraciones: ListaConfiguraciones.listConfig0),Patron.extensionDeRodillaPesada(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }

 factory DiaEntrenamiento.diaEmpuje26d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeInclinado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: "_Dia_Entrenamiento_Model.1_de_parada_abajo".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

factory DiaEntrenamiento.diaTiron26d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaPierna26d2() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionDeCadera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna_enfasis_femoral_gluteo".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  // 6 Dias Prioridad Pecho y Hombros 
factory DiaEntrenamiento.diaEmpuje16dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.hombroLateralTensionConstante(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.triserie_con_los_siguientes_ejercicios".tr()),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie),Patron.empujeHorizontal(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.hombroLateralAcortamiento(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaTiron16dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5) ,Patron.bicepsHombroFlexion(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }

factory DiaEntrenamiento.diaPierna16dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7777superserie,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje26dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeInclinado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: "_Dia_Entrenamiento_Model.1_de_parada_abajo".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaFemoralEspalda6dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.bicepsHombroAnatomico(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_femoral_y_espalda".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje36dPp() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeCerrado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.aduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario:"_Dia_Entrenamiento_Model.tecnica_1_1/2".tr()),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [3.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }
  
   // 6 Dias Prioridad Espalda y brazos 
  factory DiaEntrenamiento.diaEmpuje16dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.hombroLateralTensionConstante(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: "_Dia_Entrenamiento_Model.triserie_con_los_siguientes_ejercicios".tr()),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.empujeHorizontal(Configuracion.c3onfig2222,listaConfiguraciones:ListaConfiguraciones.listConfig2222),Patron.hombroLateralAcortamiento(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.tricepsHombroExtension(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaTiron16dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.visagraCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionDeHombro(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.abduccionHorizontal(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5) ,Patron.bicepsHombroFlexion(Configuracion.c3onfig777,listaConfiguraciones: ListaConfiguraciones.listConfig777),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }

factory DiaEntrenamiento.diaCuadriceps6dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7777superserie,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje26dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeInclinado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.aduccionHorizontal(Configuracion.c3onfig6,listaConfiguraciones: ListaConfiguraciones.listConfig6),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: "_Dia_Entrenamiento_Model.1_de_parada_abajo".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaFemoralEspalda6dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeCaderaLigero(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_femoral_y_espalda".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaTiron26dPe() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.extensionDeHombroSinFlexionDeCodo(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.bicepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

// 6 Dias Prioridad Tren inferior 
  factory DiaEntrenamiento.diaPierna16dPti() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaAxial(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.flexionDeRodilla(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionDeCadera(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.gemeloRodillaFlexionada(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8),],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_pierna".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.diaEmpuje16dPti() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeVertical(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.empujeInclinado(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.empujeCerrado(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.hombroLateralAcortamiento(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4,comentario: "_Dia_Entrenamiento_Model.tecnica_1_1/2".tr() ),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaTiron6dPti() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion.c3onfig1,listaConfiguraciones: ListaConfiguraciones.listConfig1),Patron.aduccionYExtensionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.abduccionHorizontal(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.bicepsHombroAnatomico(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4) ,Patron.bicepsHombroFlexion(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.rotacionDeTronco(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_tiron".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
 factory DiaEntrenamiento.diaGluteoFemoralEspalda6dPti() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2) ,Patron.flexionDeRodilla(Configuracion.c3onfig5superserie,listaConfiguraciones: ListaConfiguraciones.listConfig5superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.extensionDeCaderaRodillaFija(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.extensionDeHombroFlexionDeCodo(Configuracion.c3onfig3,listaConfiguraciones: ListaConfiguraciones.listConfig3),Patron.aduccionDeHombro(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.bicepsHombroExtension(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_femoral_y_espalda".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  } 
factory DiaEntrenamiento.diaCuadriceps6dPti() {
    return 
    DiaEntrenamiento(patrones: [Patron.extensionDeRodillaConExtensionDeCadera(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.extensionDeRodillaLigera2(Configuracion.c3onfig7777superserie,listaConfiguraciones: ListaConfiguraciones.listConfig7777superserie,comentario: "_Dia_Entrenamiento_Model.en_superserie_con_el_siguiente_ejercicio".tr()),Patron.extensionDeRodillaPesada(Configuracion.c3onfig4,listaConfiguraciones: ListaConfiguraciones.listConfig4),Patron.extensionDeRodillaLigera1(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.gemeloRodillaExtendida(Configuracion.c3onfig8,listaConfiguraciones: ListaConfiguraciones.listConfig8)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_cuadriceps".tr(),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
factory DiaEntrenamiento.diaEmpuje26dPti() {
    return 
    DiaEntrenamiento(patrones: [Patron.empujeHorizontal(Configuracion.c3onfig2,listaConfiguraciones: ListaConfiguraciones.listConfig2),Patron.flexiondeHombroyAduccionHorizontal(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5),Patron.hombroLateralEstiramiento(Configuracion.c3onfig5,listaConfiguraciones: ListaConfiguraciones.listConfig5,comentario: "_Dia_Entrenamiento_Model.1_de_parada_abajo".tr()),Patron.hombroLateralTensionConstante(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.tricepsHombroExtension(Configuracion.c3onfig7,listaConfiguraciones: ListaConfiguraciones.listConfig7),Patron.flexionDeColumna(Configuracion.c3onfig9,listaConfiguraciones: ListaConfiguraciones.listConfig9)],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia_de_empuje_x".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.dia1() {
    return 
    DiaEntrenamiento(patrones: [],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia".tr(args: [1.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo2.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.dia2() {
    return 
    DiaEntrenamiento(patrones: [],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia".tr(args: [2.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo3.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.dia3() {
    return 
    DiaEntrenamiento(patrones: [],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia".tr(args: [3.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo4.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.dia4() {
    return 
    DiaEntrenamiento(patrones: [],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia".tr(args: [4.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: [] );
  }
  factory DiaEntrenamiento.dia5() {
    return 
    DiaEntrenamiento(patrones: [],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia".tr(args: [5.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo1.jpg',musculosTrabajados: [] );
  }

  factory DiaEntrenamiento.dia6() {
    return 
    DiaEntrenamiento(patrones: [],nombreentrenamiento: "_Dia_Entrenamiento_Model.dia".tr(args: [6.toString()]),imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: [] );
  }

  //  factory DiaEntrenamiento.dia4() {
  //   return 
  //   DiaEntrenamiento(patrones: [Patron.extensionDeHombroSinFlexionDeCodo(),Patron.empujeDeclinado(),Patron.aduccionHorizontal(Configuracion.confif1),Patron.aduccionDeHombroYAduccionHorizontal(),Patron.aduccionYExtensionDeHombro(),Patron.extensionDeHombroYAproximacionDeEscapulas(),Patron.empujeVertical(),Patron.hombroLateralTensionConstante()],nombreentrenamiento: 'Día de Prueba',imagenrepresentacionentrenamiento: 'assets/images/Fondo5.jpg',musculosTrabajados: ['Espalda','Biceps'] );
  // }

  //   factory DiaEntrenamiento.dia5() {
  //   return 
  //   DiaEntrenamiento(patrones: [Patron.flexionDeHombro(),Patron.bicepsHombroAnatomico(),Patron.empujeCerrado(),Patron.extensionDeCaderaRodillaFija(),Patron.extensionDeCaderaConCargaAxial(),Patron.flexionDeRodilla(),Patron.extensionDeCaderaLigero(),Patron.aduccionDeCadera(),Patron.trapecio()],nombreentrenamiento: 'Día de Prueba2',imagenrepresentacionentrenamiento: 'assets/images/Fondo6.jpg',musculosTrabajados: ['Espalda','Biceps'] );
  // }
  DiaEntrenamiento.fromJson(Map<String, dynamic> json,int numeroDia) {
    if (json['patrones'] != null) {
      patrones = new List<Patron>();
      json['patrones'].forEach((v) {
        patrones.add(new Patron.fromJson(v));
      });
    }
    nombreentrenamiento = transformNombreDia(json['nombreentrenamiento']);
    imagenrepresentacionentrenamiento = (json['imagenrepresentacionentrenamiento']!=null) ? 
        json['imagenrepresentacionentrenamiento'] : 'assets/images/Fondo$numeroDia.jpg';
    entrenamientoCompletado = json['entrenamientoCompletado'] != null
        ? new CompletadoEntrenamiento.fromJson(json['entrenamientoCompletado'])
        : CompletadoEntrenamiento(semana1:false,semana2:false,semana3:false,semana4:false);
    musculosTrabajados = json['musculosTrabajados'] != null ?
     json['musculosTrabajados'].cast<String>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.patrones != null) {
      data['patrones'] = this.patrones.map((v) => v.toJson()).toList();
    }
    data['nombreentrenamiento'] = this.nombreentrenamiento;
    // data['imagenrepresentacionentrenamiento'] =
    //     this.imagenrepresentacionentrenamiento;
    data['entrenamientoCompletado'] = (this.entrenamientoCompletado!=null) ? this.entrenamientoCompletado.toJson() : null;
    // data['musculosTrabajados'] = this.musculosTrabajados;
    return data;
  }
}

class CompletadoEntrenamiento {
  bool semana1;
  bool semana2;
  bool semana3;
  bool semana4;

  CompletadoEntrenamiento({this.semana1, this.semana2, this.semana3, this.semana4});

  CompletadoEntrenamiento.fromJson(Map<String, dynamic> json) {
    semana1 = (json['semana 1']!=null) ? json['semana 1'] : false;
    semana2 = (json['semana 2']!=null) ? json['semana 2'] : false;
    semana3 = (json['semana 3']!=null) ? json['semana 3'] : false;
    semana4 = (json['semana 4']!=null) ? json['semana 4'] : false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['semana 1'] = (this.semana1 == true) ? this.semana1 : null;
    data['semana 2'] = (this.semana2 == true) ? this.semana2 : null;
    data['semana 3'] = (this.semana3 == true) ? this.semana3 : null;
    data['semana 4'] = (this.semana4 == true) ? this.semana4 : null;
    return data;
  }
}