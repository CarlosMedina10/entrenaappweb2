
import '../models/MesocicloEntrenamiento.dart';
import '../models/Diadeentrenamiento.dart';
import '../models/Patron.dart';
import '../models/Ejercicio.dart';
import '../models/Configuracion.dart';
import '../models/Diadeentrenamiento.dart';

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


  MesocicloEntrenamiento({this.diasEntrenamiento, this.nombreMesociclo,this.numeroDias,this.numeroDiasCompletados,this.id,this.semanaCompletada,this.mesocicloCompletado,this.musculosPrioritarios,this.semanaActual,this.fechaInicio});
 // 2 Dias -Principiante 0
  factory MesocicloEntrenamiento.dosDiasPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorsoPrincipiante2d(),DiaEntrenamiento.diaPiernaPrincipiante2d()],
      nombreMesociclo: 'Torso-Pierna Fase formación (Nivel 1)',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.dosDiasPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorsoPrincipiante12d(),DiaEntrenamiento.diaPiernaPrincipiante12d()],
      nombreMesociclo: 'Torso-Pierna Fase formación (Nivel 2)',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.dosDias1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso2d1(),DiaEntrenamiento.diaPierna2d1()],
      nombreMesociclo: 'Torso-Pierna',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

   factory MesocicloEntrenamiento.dosDias2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna2d2(),DiaEntrenamiento.diaTorso2d2()],
      nombreMesociclo: 'Pierna-Torso',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 
 

 // 3 Dias - Principiante

  factory MesocicloEntrenamiento.tironEmpujePiernaPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTironPrincipiante0(),DiaEntrenamiento.diaEmpujePrincipiante0(),DiaEntrenamiento.diaPiernaPrincipiante0(),],
      nombreMesociclo: 'Tirón-Empuje-Pierna Fase formación (Nivel 1)',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 
 factory MesocicloEntrenamiento.tironEmpujePiernaPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTironPrincipiante1(),DiaEntrenamiento.diaEmpujePrincipiante1(),DiaEntrenamiento.diaPiernaPrincipiante1(),],
      nombreMesociclo: 'Tirón-Empuje-Pierna Fase formación (Nivel 2)',

      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 
 
 
 
 factory MesocicloEntrenamiento.tironEmpujePierna() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaPierna(),],
      nombreMesociclo: 'Tirón-Empuje-Pierna (M1)',
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.tironEmpujePierna2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron3d2(),DiaEntrenamiento.diaEmpuje3d2(),DiaEntrenamiento.diaPierna3d2(),],
      nombreMesociclo: 'Tirón-Empuje-Pierna (M2)',
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
factory MesocicloEntrenamiento.tironEmpujePierna3() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron3d3(),DiaEntrenamiento.diaEmpuje3d3(),DiaEntrenamiento.diaPierna3d3(),],
      nombreMesociclo: 'Tirón-Empuje-Pierna (M3)',
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.tresDiasPrioridadTrenInferior() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna3dpTi1(),DiaEntrenamiento.diaTorso3dpTi(),DiaEntrenamiento.diaPierna3dpTi2()],
      nombreMesociclo: '3 días prioridad tren inferior',
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.tresDiasPrioridadTrenSuperior() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1(),DiaEntrenamiento.diaPierna3dPTs(),DiaEntrenamiento.diaTorso2()],
      nombreMesociclo: '3 días prioridad tren superior',
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  } 


   factory MesocicloEntrenamiento.torsoPiernaPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1Principiante(),DiaEntrenamiento.diaPierna1Principiante(),DiaEntrenamiento.diaTorso2Principiante(),DiaEntrenamiento.diaPierna2Principiante()],
      nombreMesociclo: 'Torso-Pierna Fase formación (Nivel 1)',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.torsoPiernaPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1Principiante1(),DiaEntrenamiento.diaPierna1Principiante1(),DiaEntrenamiento.diaTorso2Principiante1(),DiaEntrenamiento.diaPierna2Principiante1()],
      nombreMesociclo: 'Torso-Pierna Principiante Fase formación (Nivel 2)',
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
   factory MesocicloEntrenamiento.torsoPierna() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTorso1(),DiaEntrenamiento.diaPierna1(),DiaEntrenamiento.diaTorso2(),DiaEntrenamiento.diaPierna2()],
      nombreMesociclo: 'Torso-Pierna',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.cuatroDiasCompensado() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEspalda(),DiaEntrenamiento.diaPecho(),DiaEntrenamiento.diaPierna(),DiaEntrenamiento.diaHombro()],
      nombreMesociclo: 'Espalda-Pecho-Pierna-Hombro',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasCompensado2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje4d2(),DiaEntrenamiento.diaPierna14d2(),DiaEntrenamiento.diaTiron4d2(),DiaEntrenamiento.diaPierna24d2()],
      nombreMesociclo: 'Empuje-Pierna-Tirón-Pierna',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadPecho() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEspalda4dPp(),DiaEntrenamiento.diaPecho14dPp(),DiaEntrenamiento.diaPierna4dPp(),DiaEntrenamiento.diaPecho24dPp()],
      nombreMesociclo: 'Tirón-Empuje-Pierna-Empuje',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.cuatroDiasPrioridadEspalda() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje4dPe(),DiaEntrenamiento.diaTiron14dPe(),DiaEntrenamiento.diaPierna4dPe(),DiaEntrenamiento.diaTiron24dPe()],
      nombreMesociclo: 'Empuje-Tirón-Pierna-Tirón',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadGluteo() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna14dPg(),DiaEntrenamiento.diaTiron4dPg(),DiaEntrenamiento.diaPierna24dPg(),DiaEntrenamiento.diaEmpuje4dPg()],
      nombreMesociclo: 'Pierna-Tirón-Pierna-Empuje',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.cuatroDiasPrioridadBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron4dPb(),DiaEntrenamiento.diaEmpuje4dPb(),DiaEntrenamiento.diaPierna4dPb(),DiaEntrenamiento.diaBrazos4dPb()],
      nombreMesociclo: 'Tirón-Empuje-Pierna-Brazos',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadHombros() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron4dPh(),DiaEntrenamiento.diaEmpuje4dPh(),DiaEntrenamiento.diaPierna4dPh(),DiaEntrenamiento.diaHombro4dPh()],
      nombreMesociclo: 'Tirón-Empuje-Pierna-Hombro',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cuatroDiasPrioridadCuadriceps() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna14dPc(),DiaEntrenamiento.diaEmpuje4dPc(),DiaEntrenamiento.diaTiron4dPc(),DiaEntrenamiento.diaPierna24dPc(),],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Pierna',
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  
 factory MesocicloEntrenamiento.cincoDiasCompensadoPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15dPrincipiante(),DiaEntrenamiento.diaEmpuje5dPrincipiante(),DiaEntrenamiento.diaTiron5dPrincipiante(),DiaEntrenamiento.diaPierna25dPrincipiante(),DiaEntrenamiento.diaTorso5dPrincipiante()],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Pierna-Torso Fase formación (Nivel 1)',
  
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  } 
  

factory MesocicloEntrenamiento.cincoDiasCompensadoPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15dPrincipiante1(),DiaEntrenamiento.diaEmpuje5dPrincipiante1(),DiaEntrenamiento.diaTiron5dPrincipiante1(),DiaEntrenamiento.diaPierna25dPrincipiante1(),DiaEntrenamiento.diaTorso5dPrincipiante1()],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Pierna-Torso Fase formación (Nivel 2) ',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  } 
  
  
  
  
  
  factory MesocicloEntrenamiento.cincoDiasCompensado() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15d(),DiaEntrenamiento.diaEmpuje5d(),DiaEntrenamiento.diaTiron5d(),DiaEntrenamiento.diaPierna25d(),DiaEntrenamiento.diaTorso5d()],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Pierna-Torso',
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.cincoDiasCompensado2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15d2(),DiaEntrenamiento.diaEmpuje5d2(),DiaEntrenamiento.diaTiron5d2(),DiaEntrenamiento.diaPierna25d2(),DiaEntrenamiento.diaHombroyBrazos5d2()],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Pierna-Hombro y brazos',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cincoDiasCompensado3() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje15d3(),DiaEntrenamiento.diaPierna5d3(),DiaEntrenamiento.diaTiron5d3(),DiaEntrenamiento.diaEmpuje25d3(),DiaEntrenamiento.diaEspaldayFemoral5d3()],
      nombreMesociclo: 'Empuje-Cuadriceps-Tirón-Empuje-Femoral/Espalda',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.cincoDiasPrioridadPecho() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15d(),DiaEntrenamiento.diaEmpuje15dPrioridadPecho(),DiaEntrenamiento.diaTiron5d(),DiaEntrenamiento.diaPierna25d(),DiaEntrenamiento.diaEmpuje25dPrioridadPecho()],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Pierna-Empuje',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.cincoDiasPrioridadGluteo() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna5dPg(),DiaEntrenamiento.diaTiron5dPg(),DiaEntrenamiento.diaEmpuje5dPg(),DiaEntrenamiento.diaGluteo5dPg(),DiaEntrenamiento.diaPechoEspaldaPg()],
      nombreMesociclo: 'Pierna-Tirón-Empuje-Glúteo/Femoral-Espalda/Pecho/Brazos',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.cincoDiasPrioridadEspalda() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna15dPrioridadEspalda(),DiaEntrenamiento.diaTiron15dPrioridadEspalda(),DiaEntrenamiento.diaEmpuje5dPrioridadEspalda(),DiaEntrenamiento.diaPierna25dPrioridadEspalda(),DiaEntrenamiento.diaTiron25dPrioridadEspalda()],
      nombreMesociclo: 'Pierna-Tirón-Empuje-Pierna-Tirón',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cincoDiasPrioridadHombros() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje5dPh(),DiaEntrenamiento.diaFemoralGluteo5dPh(),DiaEntrenamiento.diaTiron5dPh(),DiaEntrenamiento.diaCuadriceps5dPh(),DiaEntrenamiento.diaHombro5dPh()],
      nombreMesociclo: 'Empuje-Femoral/Glúteo-Tirón-Cuádriceps-Hombro/Brazos',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.cincoDiasPrioridadCuadriceps() {
    return MesocicloEntrenamiento(
      diasEntrenamiento: [DiaEntrenamiento.diaPierna5dPc(),DiaEntrenamiento.diaEmpuje5dPc(),DiaEntrenamiento.diaTiron5dPc(),DiaEntrenamiento.diaCuadriceps5dPc(),DiaEntrenamiento.diaPechoEspaldaPc()],
      nombreMesociclo: 'Pierna-Tirón-Empuje-Cuadriceps-Espalda/Pecho/Brazos',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.cincoDiasPrioridadBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje5dPrioridadBrazos(),DiaEntrenamiento.diaPierna15dPrioridadBrazos(),DiaEntrenamiento.diaTiron5dPrioridadBrazos(),DiaEntrenamiento.diaPierna25dPrioridadBrazos(),DiaEntrenamiento.diaBrazos5dPrioridadBrazos()],
      nombreMesociclo: 'Empuje-Pierna-Tirón-Pierna-Brazos',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

   factory MesocicloEntrenamiento.seisDiasCompensado() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16d(),DiaEntrenamiento.diaEmpuje16d(),DiaEntrenamiento.diaPierna16d(),DiaEntrenamiento.diaTiron26d(),DiaEntrenamiento.diaEmpuje26d(),DiaEntrenamiento.diaPierna26d()],
      nombreMesociclo: 'Tirón-Empuje-Pierna (Frecuencia 2) M1 ',
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
   factory MesocicloEntrenamiento.seisDiasCompensado2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16d2(),DiaEntrenamiento.diaEmpuje16d2(),DiaEntrenamiento.diaPierna16d2(),DiaEntrenamiento.diaTiron26d2(),DiaEntrenamiento.diaEmpuje26d2(),DiaEntrenamiento.diaPierna26d2()],
      nombreMesociclo: 'Tirón-Empuje-Pierna (Frecuencia 2) M2',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrioridadPechoHombro() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPp(),DiaEntrenamiento.diaEmpuje16dPp(),DiaEntrenamiento.diaPierna16dPp(),DiaEntrenamiento.diaEmpuje26dPp(),DiaEntrenamiento.diaFemoralEspalda6dPp(),DiaEntrenamiento.diaEmpuje36dPp()],
      nombreMesociclo: 'Tirón-Empuje-Cuadriceps-Empuje-Femoral/Espalda-Empuje',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrioridadEspaldaBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPe(),DiaEntrenamiento.diaEmpuje16dPe(),DiaEntrenamiento.diaFemoralEspalda6dPe(),DiaEntrenamiento.diaEmpuje26dPe(),DiaEntrenamiento.diaTiron26dPe(),DiaEntrenamiento.diaCuadriceps6dPe()],
      nombreMesociclo: 'Tirón-Empuje-Femoral/Espalda-Empuje-Tirón-Cuádriceps',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
   factory MesocicloEntrenamiento.seisDiasPrioridadTrenInferior() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaPierna16dPti(),DiaEntrenamiento.diaEmpuje16dPti(),DiaEntrenamiento.diaTiron6dPti(),DiaEntrenamiento.diaCuadriceps6dPti(),DiaEntrenamiento.diaEmpuje26dPti(),DiaEntrenamiento.diaGluteoFemoralEspalda6dPti()],
      nombreMesociclo: 'Pierna-Empuje-Tirón-Cuádriceps-Empuje-Glúteo/Femoral/Espalda',
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrincipiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPrincipiante0(),DiaEntrenamiento.diaEmpuje16dPrincipiante0(),DiaEntrenamiento.diaPierna16dPrincipiante0(),DiaEntrenamiento.diaTiron26dPrincipiante0(),DiaEntrenamiento.diaEmpuje26dPrincipiante0(),DiaEntrenamiento.diaPierna26dPrincipiante0()],
      nombreMesociclo: 'Tirón-Empuje-Pierna (Frecuencia 2) F.F (Nivel 1)',
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.seisDiasPrincipiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaTiron16dPrincipiante1(),DiaEntrenamiento.diaEmpuje16dPrincipiante1(),DiaEntrenamiento.diaPierna16dPrincipiante1(),DiaEntrenamiento.diaTiron26dPrincipiante1(),DiaEntrenamiento.diaEmpuje26dPrincipiante1(),DiaEntrenamiento.diaPierna26dPrincipiante1()],
      nombreMesociclo: 'Tirón-Empuje-Pierna (Frecuencia 2) F.F (Nivel 2)',
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.mesocicloVacio2Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),],
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
   factory MesocicloEntrenamiento.mesocicloVacio3Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3()],
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.mesocicloVacio4Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3(),DiaEntrenamiento.dia4()],
      
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.mesocicloVacio5Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3(),DiaEntrenamiento.dia4(),DiaEntrenamiento.dia5()],
     
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.mesocicloVacio6Dias() {
    return MesocicloEntrenamiento(
      diasEntrenamiento:[DiaEntrenamiento.dia1(),DiaEntrenamiento.dia2(),DiaEntrenamiento.dia3(),DiaEntrenamiento.dia4(),DiaEntrenamiento.dia5(),DiaEntrenamiento.dia6()],
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.tironEmpujePiernaPrioridadPecho() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaPierna()],
      nombreMesociclo: '3 Dias M.Gym P.pecho ',
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
   factory MesocicloEntrenamiento.tironEmpujePiernaPrioridadEspaldayBrazos() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: '3 D. M.Gym P.Espalda y brazos',
    
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.tironEmpujePiernaConBarrasYMancuernas() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaPierna(),],
      nombreMesociclo: '3 Dias con material justo ',

      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.tironEmpujePiernaSinMaterial() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: '3 Dias Sin Material ',
   
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.principiante0() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron()],
      nombreMesociclo: 'Principiante nivel 0 ',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }

  factory MesocicloEntrenamiento.principiante01() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),],
      nombreMesociclo: 'P.Nivel 0 Obeso',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.principiante1() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: 'Principiante nivel 1 ',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
   factory MesocicloEntrenamiento.principiante11() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: 'P.nivel 1 Obeso',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.principiante2() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: 'Principiante nivel 2 ',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.principiante21() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: 'P.nivel 2 obeso ',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  factory MesocicloEntrenamiento.principiante3() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: 'Principiante nivel 3 ',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
 factory MesocicloEntrenamiento.principiante31() {
    return MesocicloEntrenamiento(
     diasEntrenamiento: [DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaTiron(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje(),DiaEntrenamiento.diaEmpuje()],
      nombreMesociclo: 'P.nivel 3 obeso',
      numeroDias: 12,
      numeroDiasCompletados: 0,
      semanaCompletada: false,
      mesocicloCompletado: false,
      semanaActual: 0
      
     
    );
  }
  MesocicloEntrenamiento.fromJson(Map<String, dynamic> json) {
    if (json['diasEntrenamiento'] != null) {
      diasEntrenamiento = new List<DiaEntrenamiento>();
      json['diasEntrenamiento'].forEach((v) {
        diasEntrenamiento.add(new DiaEntrenamiento.fromJson(v));
      });
    }
    nombreMesociclo = json['nombreMesociclo'];
    numeroDias = json['numeroDias'];
    numeroDiasCompletados = json['numeroDiasCompletados'];
    musculosPrioritarios = json['musculosPrioritarios'] != null ?
     json['musculosPrioritarios'].cast<String>() : null;
    semanaCompletada = json['semanaCompletada'];
    mesocicloCompletado =json ['mesocicloCompletado'];
    semanaActual =json ['semanaActual'];
    fechaInicio = json ['fechaInicio'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.diasEntrenamiento != null) {
      data['diasEntrenamiento'] =
          this.diasEntrenamiento.map((v) => v.toJson()).toList();
    }
    data['nombreMesociclo'] = this.nombreMesociclo;
    data['numeroDias'] = this.numeroDias;
    data['numeroDiasCompletados'] = this.numeroDiasCompletados;
    data['musculosPrioritarios'] = this.musculosPrioritarios;
    data['semanaCompletada'] = this.semanaCompletada;
    data['mesocicloCompletado'] = this.mesocicloCompletado;
    data['semanaActual'] = this.semanaActual;
    data['fechaInicio'] = this.fechaInicio;
    return data;
  }
}
