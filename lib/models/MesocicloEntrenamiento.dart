import 'package:easy_localization/easy_localization.dart';
import 'package:diacritic/diacritic.dart';
import 'package:entrenaapp/models/Diadeentrenamiento.dart';



class MesocicloEntrenamiento {

  
//    MesocicloEntrenamiento _tironEmpujePierna = MesocicloEntrenamiento(diasEntrenamiento: [DiaEntrenamiento.diaEmpuje,DiaEntrenamiento.diaTiron,DiaEntrenamiento.diaPierna],nombreMesociclo: 'Tiron-Empuje-Pierna',numeroDias: 12,numeroDiasCompletados: 0);
//    MesocicloEntrenamiento get tironEmpujePierna {
//     return _tironEmpujePierna;

// }
  
//   static MesocicloEntrenamiento torsoPierna = MesocicloEntrenamiento(diasEntrenamiento: [DiaEntrenamiento.diaTorso2,DiaEntrenamiento.diaPierna,DiaEntrenamiento.diaTorso1,DiaEntrenamiento.diaPierna],nombreMesociclo: 'Torso-Pierna',numeroDias: 16,numeroDiasCompletados: 0);
//   static MesocicloEntrenamiento tironEmpujePiernaTironEmpuje = MesocicloEntrenamiento(diasEntrenamiento: [DiaEntrenamiento.diaEmpuje,DiaEntrenamiento.diaTiron,DiaEntrenamiento.diaPierna,DiaEntrenamiento.diaTiron,DiaEntrenamiento.diaBrazosPotente],nombreMesociclo: '5 dias compensado',numeroDias: 20,numeroDiasCompletados: 0);
  List<DiaEntrenamiento> diasEntrenamiento;
  String nombreMesociclo;
  int numeroDias;
  int numeroDiasCompletados;
  List<dynamic> musculosPrioritarios;
  String id;
  bool semanaCompletada;
  bool mesocicloCompletado;
  int semanaActual;
  String fechaInicio;
  List<dynamic> materialDisponible;


  MesocicloEntrenamiento({this.diasEntrenamiento, this.nombreMesociclo,this.numeroDias,this.numeroDiasCompletados,this.id,this.semanaCompletada,this.mesocicloCompletado,this.musculosPrioritarios,this.semanaActual,this.fechaInicio,this.materialDisponible});
 
 String transformNombreMesociclo(nombreEntrenamiento){

    if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso-Pierna Fase formación (Nivel 1)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso-Leg Training Phase (Level 1)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.torso_pierna_formacion_1".tr();
  
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso-Pierna Fase formación (Nivel 2)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso-Leg Training Phase (Level 2)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.torso_pierna_formacion_2".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso-Pierna".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Torso-Leg".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.torso_pierna".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Torso".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Torso".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_torso".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna Fase formación (Nivel 1)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg Training Phase (Level 1)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_formacion_1".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna Fase formación (Nivel 2)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg Training Phase (Level 2)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_formacion_2".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (M1)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (M1)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_m1".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (M2)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (M2)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_m2".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (M3)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (M3)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_m3".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("3 días prioridad tren inferior".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("3 days lower body priority".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.3_dias_p_tren_inferior".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("3 días prioridad tren superior".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("3 days priority upper body".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.3_dias_p_tren_superior".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Espalda-Pecho-Pierna-Hombro".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Back-Chest-Leg-Shoulder".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.espalda_pecho_pierna_hombro".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Empuje-Pierna-Tirón-Pierna".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push-Leg-Pull-Leg".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.empuje_pierna_tiron_pierna".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna-Empuje".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg-Push".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_empuje".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Empuje-Tirón-Pierna-Tirón".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push-Pull-Leg-Pull".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.empuje_tiron_pierna_tiron".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Tirón-Pierna-Empuje".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Pull-Leg-Push".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_tiron_pierna_empuje".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna-Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg-Arms".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_brazos".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna-Hombro".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg-Shoulder".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_hombro".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Pierna".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Leg".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Pierna-Torso Fase formación (Nivel 1)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Leg-Torso Training Phase (Level 1)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_torso_formacion_1".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Pierna-Torso Fase formación (Nivel 2)".replaceAll(".", "")).trim().toLowerCase() ) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase().replaceAll(".", "").trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Leg-Torso Training Phase (Level 2)".replaceAll(".", "")).trim().toLowerCase() ))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_torso_formacion_2".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Pierna-Torso".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Leg-Torso".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_torso".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Pierna-Hombro y brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Leg-Shoulder and arms".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_hombro_y_brazos".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Empuje-Cuadriceps-Tirón-Empuje-Femoral/Espalda".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push-Quadriceps-Pull-Push-/Back".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.empuje_cuadriceps_tiron_empuje_femoral_y_espalda".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Pierna-Empuje".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Leg-Push".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_empuje".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Tirón-Empuje-Glúteo/Femoral-Espalda/Pecho/Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Pull-Push-Gluteal/Hamstrings-Back/Chest/Arms".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_tiron_empuje_gluteo_y_femoral_espalda_pecho_y_brazos".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Tirón-Empuje-Pierna-Tirón".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Pull-Push-Leg-Pull".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_tiron_empuje_pierna_tiron".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Empuje-Femoral/Glúteo-Tirón-Cuádriceps-Hombro/Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push-Hamstrings/Gluteal-Pull-Quadriceps-Shoulder/Arms".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.empuje_femoral_y_gluteo_tiron_cuadriceps_hombro_y_brazos".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Tirón-Empuje-Cuadriceps-Espalda/Pecho/Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Pull-Push-Quadriceps-Back/Chest/Arms".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_tiron_empuje_cuadriceps_espalda_pecho_y_brazos".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Empuje-Pierna-Tirón-Pierna-Brazos".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Push-Leg-Pull-Leg-Arms".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.empuje_pierna_tiron_pierna_brazos".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (Frecuencia 2) M1".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (Frequency 2) M1".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_m1".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (Frecuencia 2) M2".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (Frequency 2) M2".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_m2".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Cuadriceps-Empuje-Femoral/Espalda-Empuje".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Quadriceps-Push-Hamstrings/Back-Push".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_cuadriceps_empuje_femoral_y_espalda_empuje".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Femoral/Espalda-Empuje-Tirón-Cuádriceps".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Hamstrings/Back-Push-Pull-Quadriceps".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_femoral_y_espalda_empuje_tiron_cuadriceps".tr();
     else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pierna-Empuje-Tirón-Cuádriceps-Empuje-Glúteo/Femoral/Espalda".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Leg-Push-Pull-Quadriceps-Push-Gluteal/Hamstrings/Back".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_cuadriceps_empuje_gluteo_femoral_y_espalda".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (Frecuencia 2) F.F (Nivel 1)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (Frequency 2) F.F (Level 1)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_formacion_1".tr();
    else if ((removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Tirón-Empuje-Pierna (Frecuencia 2) F.F (Nivel 2)".replaceAll(".", "")).trim().toLowerCase()) || (removeDiacritics(nombreEntrenamiento.replaceAll(".", "")).trim().toLowerCase() == removeDiacritics("Pull-Push-Leg (Frequency 2) F.F (Level 2)".replaceAll(".", "")).trim().toLowerCase()))
    return "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_formacion_2".tr();
    else return nombreEntrenamiento;




  }
 
 
 // 2 Dias -Principiante 0
  factory MesocicloEntrenamiento.dosDiasPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorsoPrincipiante2d(),DiaEntrenamiento.diaPiernaPrincipiante2d()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.torso_pierna_formacion_1".tr(),
   
      
      
      

      
     
    );
  }
  factory MesocicloEntrenamiento.dosDiasPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorsoPrincipiante12d(),DiaEntrenamiento.diaPiernaPrincipiante12d()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.torso_pierna_formacion_2".tr(),
   
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.dosDias1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso2d1(),DiaEntrenamiento.diaPierna2d1()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.torso_pierna".tr(),
   
      
      
      
      
     
    );
  }

   factory MesocicloEntrenamiento.dosDias2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna2d2(),DiaEntrenamiento.diaTorso2d2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_torso".tr(),
   
      
      
      
      
     
    );
  }
 
 

 // 3 Dias - Principiante

  factory MesocicloEntrenamiento.tironEmpujePiernaPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTironPrincipiante0(),DiaEntrenamiento.diaEmpujePrincipiante0(),DiaEntrenamiento.diaPiernaPrincipiante0(),],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_formacion_1".tr(),
   
      
      
      
      
     
    );
  }
 
 factory MesocicloEntrenamiento.tironEmpujePiernaPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTironPrincipiante1(),DiaEntrenamiento.diaEmpujePrincipiante1(),DiaEntrenamiento.diaPiernaPrincipiante1(),],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_formacion_2".tr(),

      
      
      
      
     
    );
  }
 
 
 
 
 factory MesocicloEntrenamiento.tironEmpujePierna() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaPierna(),],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_m1".tr(),
      
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.tironEmpujePierna2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron3d2(),DiaEntrenamiento.diaEmpuje3d2(),DiaEntrenamiento.diaPierna3d2(),],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_m2".tr(),
      
      
      
      
      
     
    );
  }
factory MesocicloEntrenamiento.tironEmpujePierna3() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron3d3(),DiaEntrenamiento.diaEmpuje3d3(),DiaEntrenamiento.diaPierna3d3(),],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_m3".tr(),
      
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.tresDiasPrioridadTrenInferior() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna3dpTi1(),DiaEntrenamiento.diaTorso3dpTi(),DiaEntrenamiento.diaPierna3dpTi2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.3_dias_p_tren_inferior".tr(),
      
      
      
      
      
     
    );
  }

  factory MesocicloEntrenamiento.tresDiasPrioridadTrenSuperior() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1(),DiaEntrenamiento.diaPierna3dPTs(),DiaEntrenamiento.diaTorso2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.3_dias_p_tren_superior".tr(),
      
      
      
      
      
     
    );
  } 


   factory MesocicloEntrenamiento.torsoPiernaPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1Principiante(),DiaEntrenamiento.diaPierna1Principiante(),DiaEntrenamiento.diaTorso2Principiante(),DiaEntrenamiento.diaPierna2Principiante()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.torso_pierna_formacion_1".tr(),
     
      
      
      
      
     
    );
  }

  factory MesocicloEntrenamiento.torsoPiernaPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1Principiante1(),DiaEntrenamiento.diaPierna1Principiante1(),DiaEntrenamiento.diaTorso2Principiante1(),DiaEntrenamiento.diaPierna2Principiante1()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.torso_pierna_formacion_2".tr(),
    
      
      
      
      
     
    );
  }
   factory MesocicloEntrenamiento.torsoPierna() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1(),DiaEntrenamiento.diaPierna1(),DiaEntrenamiento.diaTorso2(),DiaEntrenamiento.diaPierna2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.torso_pierna".tr(),
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.cuatroDiasCompensado() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEspalda(),DiaEntrenamiento.diaPecho(),DiaEntrenamiento.diaPierna(),DiaEntrenamiento.diaHombro()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.espalda_pecho_pierna_hombro".tr(),
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasCompensado2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje4d2(),DiaEntrenamiento.diaPierna14d2(),DiaEntrenamiento.diaTiron4d2(),DiaEntrenamiento.diaPierna24d2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.empuje_pierna_tiron_pierna".tr(),
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadPecho() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEspalda4dPp(),DiaEntrenamiento.diaPecho14dPp(),DiaEntrenamiento.diaPierna4dPp(),DiaEntrenamiento.diaPecho24dPp()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_empuje".tr(),
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.cuatroDiasPrioridadEspalda() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje4dPe(),DiaEntrenamiento.diaTiron14dPe(),DiaEntrenamiento.diaPierna4dPe(),DiaEntrenamiento.diaTiron24dPe()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.empuje_tiron_pierna_tiron".tr(),
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadGluteo() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna14dPg(),DiaEntrenamiento.diaTiron4dPg(),DiaEntrenamiento.diaPierna24dPg(),DiaEntrenamiento.diaEmpuje4dPg()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_tiron_pierna_empuje".tr(),
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.cuatroDiasPrioridadBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron4dPb(),DiaEntrenamiento.diaEmpuje4dPb(),DiaEntrenamiento.diaPierna4dPb(),DiaEntrenamiento.diaBrazos4dPb()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_brazos".tr(),
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadHombros() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron4dPh(),DiaEntrenamiento.diaEmpuje4dPh(),DiaEntrenamiento.diaPierna4dPh(),DiaEntrenamiento.diaHombro4dPh()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_hombro".tr(),
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadCuadriceps() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna14dPc(),DiaEntrenamiento.diaEmpuje4dPc(),DiaEntrenamiento.diaTiron4dPc(),DiaEntrenamiento.diaPierna24dPc(),],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna".tr(),
      
      
      
      
     
    );
  }
  
 factory MesocicloEntrenamiento.cincoDiasCompensadoPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15dPrincipiante(),DiaEntrenamiento.diaEmpuje5dPrincipiante(),DiaEntrenamiento.diaTiron5dPrincipiante(),DiaEntrenamiento.diaPierna25dPrincipiante(),DiaEntrenamiento.diaTorso5dPrincipiante()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_torso_formacion_1".tr(),
  
      
      
      
      
     
    );
  } 
  

factory MesocicloEntrenamiento.cincoDiasCompensadoPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15dPrincipiante1(),DiaEntrenamiento.diaEmpuje5dPrincipiante1(),DiaEntrenamiento.diaTiron5dPrincipiante1(),DiaEntrenamiento.diaPierna25dPrincipiante1(),DiaEntrenamiento.diaTorso5dPrincipiante1()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_torso_formacion_2".tr(),
     
      
      
      
      
     
    );
  } 
  
  
  
  
  
  factory MesocicloEntrenamiento.cincoDiasCompensado() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15d(),DiaEntrenamiento.diaEmpuje5d(),DiaEntrenamiento.diaTiron5d(),DiaEntrenamiento.diaPierna25d(),DiaEntrenamiento.diaTorso5d()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_torso".tr(),
    
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.cincoDiasCompensado2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15d2(),DiaEntrenamiento.diaEmpuje5d2(),DiaEntrenamiento.diaTiron5d2(),DiaEntrenamiento.diaPierna25d2(),DiaEntrenamiento.diaHombroyBrazos5d2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_hombro_y_brazos".tr(),
   
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cincoDiasCompensado3() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje15d3(),DiaEntrenamiento.diaPierna5d3(),DiaEntrenamiento.diaTiron5d3(),DiaEntrenamiento.diaEmpuje25d3(),DiaEntrenamiento.diaEspaldayFemoral5d3()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.empuje_cuadriceps_tiron_empuje_femoral_y_espalda".tr(),
   
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.cincoDiasPrioridadPecho() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15d(),DiaEntrenamiento.diaEmpuje15dPrioridadPecho(),DiaEntrenamiento.diaTiron5d(),DiaEntrenamiento.diaPierna25d(),DiaEntrenamiento.diaEmpuje25dPrioridadPecho()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_pierna_empuje".tr(),
     
      
      
      
      
     
    );
  }
 factory MesocicloEntrenamiento.cincoDiasPrioridadGluteo() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna5dPg(),DiaEntrenamiento.diaTiron5dPg(),DiaEntrenamiento.diaEmpuje5dPg(),DiaEntrenamiento.diaGluteo5dPg(),DiaEntrenamiento.diaPechoEspaldaPg()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_tiron_empuje_gluteo_y_femoral_espalda_pecho_y_brazos".tr(),
     
      
      
      
      
     
    );
  }

  factory MesocicloEntrenamiento.cincoDiasPrioridadEspalda() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15dPrioridadEspalda(),DiaEntrenamiento.diaTiron15dPrioridadEspalda(),DiaEntrenamiento.diaEmpuje5dPrioridadEspalda(),DiaEntrenamiento.diaPierna25dPrioridadEspalda(),DiaEntrenamiento.diaTiron25dPrioridadEspalda()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_tiron_empuje_pierna_tiron".tr(),
     
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cincoDiasPrioridadHombros() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje5dPh(),DiaEntrenamiento.diaFemoralGluteo5dPh(),DiaEntrenamiento.diaTiron5dPh(),DiaEntrenamiento.diaCuadriceps5dPh(),DiaEntrenamiento.diaHombro5dPh()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.empuje_femoral_y_gluteo_tiron_cuadriceps_hombro_y_brazos".tr(),
     
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.cincoDiasPrioridadCuadriceps() {
    return MesocicloEntrenamiento(
      diasEntrenamiento: [DiaEntrenamiento.diaPierna5dPc(),DiaEntrenamiento.diaEmpuje5dPc(),DiaEntrenamiento.diaTiron5dPc(),DiaEntrenamiento.diaCuadriceps5dPc(),DiaEntrenamiento.diaPechoEspaldaPc()],
      nombreMesociclo:"_Mesociclo_Entrenamiento_Model.pierna_tiron_empuje_cuadriceps_espalda_pecho_y_brazos".tr(),
     
      
      
      
      
     
    );
  }

  factory MesocicloEntrenamiento.cincoDiasPrioridadBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje5dPrioridadBrazos(),DiaEntrenamiento.diaPierna15dPrioridadBrazos(),DiaEntrenamiento.diaTiron5dPrioridadBrazos(),DiaEntrenamiento.diaPierna25dPrioridadBrazos(),DiaEntrenamiento.diaBrazos5dPrioridadBrazos()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.empuje_pierna_tiron_pierna_brazos".tr(),
   
      
      
      
      
     
    );
  }

   factory MesocicloEntrenamiento.seisDiasCompensado() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16d(),DiaEntrenamiento.diaEmpuje16d(),DiaEntrenamiento.diaPierna16d(),DiaEntrenamiento.diaTiron26d(),DiaEntrenamiento.diaEmpuje26d(),DiaEntrenamiento.diaPierna26d()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_m1".tr(),
      
      
      
      
      
     
    );
  }
   factory MesocicloEntrenamiento.seisDiasCompensado2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16d2(),DiaEntrenamiento.diaEmpuje16d2(),DiaEntrenamiento.diaPierna16d2(),DiaEntrenamiento.diaTiron26d2(),DiaEntrenamiento.diaEmpuje26d2(),DiaEntrenamiento.diaPierna26d2()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_m2".tr(),
     
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrioridadPechoHombro() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPp(),DiaEntrenamiento.diaEmpuje16dPp(),DiaEntrenamiento.diaPierna16dPp(),DiaEntrenamiento.diaEmpuje26dPp(),DiaEntrenamiento.diaFemoralEspalda6dPp(),DiaEntrenamiento.diaEmpuje36dPp()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_cuadriceps_empuje_femoral_y_espalda_empuje".tr(),
     
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrioridadEspaldaBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPe(),DiaEntrenamiento.diaEmpuje16dPe(),DiaEntrenamiento.diaFemoralEspalda6dPe(),DiaEntrenamiento.diaEmpuje26dPe(),DiaEntrenamiento.diaTiron26dPe(),DiaEntrenamiento.diaCuadriceps6dPe()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_femoral_y_espalda_empuje_tiron_cuadriceps".tr(),
     
      
      
      
      
     
    );
  }
   factory MesocicloEntrenamiento.seisDiasPrioridadTrenInferior() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna16dPti(),DiaEntrenamiento.diaEmpuje16dPti(),DiaEntrenamiento.diaTiron6dPti(),DiaEntrenamiento.diaCuadriceps6dPti(),DiaEntrenamiento.diaEmpuje26dPti(),DiaEntrenamiento.diaGluteoFemoralEspalda6dPti()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.pierna_empuje_tiron_cuadriceps_empuje_gluteo_femoral_y_espalda".tr(),
     
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPrincipiante0(),DiaEntrenamiento.diaEmpuje16dPrincipiante0(),DiaEntrenamiento.diaPierna16dPrincipiante0(),DiaEntrenamiento.diaTiron26dPrincipiante0(),DiaEntrenamiento.diaEmpuje26dPrincipiante0(),DiaEntrenamiento.diaPierna26dPrincipiante0()],
      nombreMesociclo: "_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_formacion_1".tr(),
    
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPrincipiante1(),DiaEntrenamiento.diaEmpuje16dPrincipiante1(),DiaEntrenamiento.diaPierna16dPrincipiante1(),DiaEntrenamiento.diaTiron26dPrincipiante1(),DiaEntrenamiento.diaEmpuje26dPrincipiante1(),DiaEntrenamiento.diaPierna26dPrincipiante1()],
      nombreMesociclo:"_Mesociclo_Entrenamiento_Model.tiron_empuje_pierna_f2_formacion_2".tr(),
    
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.mesocicloVacio2Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),],
     
      
      
      
      
     
    );
  }
   factory MesocicloEntrenamiento.mesocicloVacio3Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3()],
     
      
      
      
      
     
    );
  }

  factory MesocicloEntrenamiento.mesocicloVacio4Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3(),DiaEntrenamiento.dia4()],
      
      
      
      
      
     
    );
  }

  factory MesocicloEntrenamiento.mesocicloVacio5Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3(),DiaEntrenamiento.dia4(),DiaEntrenamiento.dia5()],
     
      
      
      
      
     
    );
  }
  factory MesocicloEntrenamiento.mesocicloVacio6Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3(),DiaEntrenamiento.dia4(),DiaEntrenamiento.dia5(),DiaEntrenamiento.dia6()],
    
      
      
      
      
     
    );
  }
 
  MesocicloEntrenamiento.fromJson(Map<String, dynamic> json) {
    
    if (json['diasEntrenamiento'] != null) {
      diasEntrenamiento = new List<DiaEntrenamiento>();
     int numeroDia=0;
      json['diasEntrenamiento'].forEach((v) {
        numeroDia=numeroDia+1;
        diasEntrenamiento.add(new DiaEntrenamiento.fromJson(v,numeroDia));
      });
    }
    nombreMesociclo = transformNombreMesociclo(json['nombreMesociclo']);
    
    numeroDiasCompletados = json['numeroDiasCompletados'] != null ? json['numeroDiasCompletados'] : 0;
    musculosPrioritarios = json['musculosPrioritarios'] != null ?
     json['musculosPrioritarios'].cast<String>() : null;
    // semanaCompletada = json['semanaCompletada'];
    mesocicloCompletado = json['mesocicloCompletado'] != null ? json['mesocicloCompletado'] : false;
    semanaActual = json['semanaActual'] != null ? json['semanaActual'] : 0;
    fechaInicio = json['fechaInicio'];
    materialDisponible = json['materialDisponible'] != null ? json['materialDisponible'].cast<String>() : null;

    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.diasEntrenamiento != null) {
      data['diasEntrenamiento'] =
          this.diasEntrenamiento.map((v) => v.toJson()).toList();
    }
    data['nombreMesociclo'] = this.nombreMesociclo;
    
    data['numeroDiasCompletados'] = (this.numeroDiasCompletados!=0 && this.numeroDiasCompletados!=null) ? this.numeroDiasCompletados : null;
    data['musculosPrioritarios'] = this.musculosPrioritarios;
    // data['semanaCompletada'] = this.semanaCompletada;
    data['mesocicloCompletado'] = (this.mesocicloCompletado==true) ? this.mesocicloCompletado : null;
    data['semanaActual'] = (this.semanaActual!=0 && this.semanaActual!=null) ? this.semanaActual : null;
    data['fechaInicio'] = this.fechaInicio;
    data['materialDisponible'] = this.materialDisponible;
    return data;
  }
}
