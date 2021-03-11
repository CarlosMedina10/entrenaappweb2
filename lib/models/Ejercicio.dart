import 'package:flutter/foundation.dart';

class Ejercicio {


  @required
  String nombre;
  @required
  List<String> imagen;
  @required
  String descripcion;
  @required
  Apuntescarga apuntescarga;
  @required
  Apuntesreps apuntesreps;
  @required
  Comentarios comentarios;
  @required
  List<String> material;
  bool principiantes;
  // @required
  Map<String, dynamic> musculosTrabajados;
  


  Ejercicio(
      {this.nombre,
      this.imagen,
      this.descripcion,
      this.apuntescarga,
      this.apuntesreps,
      this.comentarios,this.material,this.principiantes=true,this.musculosTrabajados});
  
  // Comodin 

  
  

  
  
  
  
  // PECHO 


  // Empuje Plano 

 factory Ejercicio.pressBanca() {
    return Ejercicio(
        nombre: "Press de banca",
        imagen: ['PressBanca.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
            );
       
  }
factory Ejercicio.pressPlanoConMancuernas() {
    return Ejercicio(
        nombre: "Press plano con mancuernas",
        imagen: ['PressPlanoConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
            );
       
  }

  factory Ejercicio.pressPlanoConMancuernasAgarreNeutro() {
    return Ejercicio(
        nombre: "Press plano con mancuernas agarre neutro",
        imagen: ['PressPlanoConMancuernasAgarreNeutro.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
            );
       
  }

  factory Ejercicio.fondosDePechoEnBarrasParalelas() {
    return Ejercicio(
        nombre: "Fondos de pecho en barras paralelas",
        imagen: ['FondosDePecho.gif'],
        descripcion: 'Si vas sobrado de peso puedes lastrarte.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['paralelas'],
        principiantes: false,
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
            );
       
  }

 factory Ejercicio.fondosDePechoEnBarra() {
    return Ejercicio(
        nombre: "Fondos de pecho en barra",
        imagen: ['FondosParaPechoEnBarra.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['paralelas'],
        principiantes: false,
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
            );
       
  }

factory Ejercicio.pressPlanoEnMultipower() {
    return Ejercicio(
        nombre: "Press plano en multipower",
        imagen: ['PressPlanoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
            );
       
  }

  factory Ejercicio.pressVerticalEnMaquina() {
    return Ejercicio(
        nombre: "Press vertical en máquina",
        imagen: ['PressVerticalEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
       
            );
       
  }

  factory Ejercicio.pressVerticalEnMaquinaAgarreNeutro() {
    return Ejercicio(
        nombre: "Press vertical en máquina agarre neutro",
        imagen: ['PressVerticalEnMaquinaAgarreNeutro.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
       
            );
       
  }

  factory Ejercicio.flexionesPlanas() {
    return Ejercicio(
        nombre: "Flexiones planas",
        imagen: ['FlexionesPlanas.gif'],
        descripcion: 'Puedes añadir una carga externa',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea','barra','mancuernas',],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
        
            );
       
  }

  factory Ejercicio.flexionesPlanasConElasticos() {
    return Ejercicio(
        nombre: "Flexiones planas con banda elástica",
        imagen: ['FlexionesBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
        
            );
       
  }

  factory Ejercicio.pressVerticalConElasticos() {
    return Ejercicio(
        nombre: "Press vertical con bandas elásticas",
        imagen: ['PressVerticalBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
        
            );
       
  }
  factory Ejercicio.pressPlanoConBandasElasticas() {
    return Ejercicio(
        nombre: "Press plano con bandas elásticas",
        imagen: ['PressPlanoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos','bancoplano'],
        musculosTrabajados: {'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}
        
            );
       
  }
// Empuje Inclinado


factory Ejercicio.pressInclinadoConBarra() {
    return Ejercicio(
        nombre: "Press inclinado con barra",
        imagen: ['PressInclinado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoregulable'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
            );
       
  }

factory Ejercicio.pressInclinadoConMancuernas() {
    return Ejercicio(
        nombre: "Press inclinado con mancuernas",
        imagen: ['PressInclinadoConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
            );
       
  }
factory Ejercicio.flexionesDeclinadas() {
    return Ejercicio(
        nombre: "Flexiones declinadas",
        imagen: ['FlexionesDeclinadas.gif'],
        descripcion: 'Puedes añadir una carga externa',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','polea','mancuernas'],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
        
            );
       
  }

  factory Ejercicio.pressInclinadoConvergente() {
    return Ejercicio(
        nombre: "Press inclinado convergente",
        imagen: ['PressInclinadoConvergente.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
      
            );
       
  }

  factory Ejercicio.pressInclinadoEnMaquina() {
    return Ejercicio(
        nombre: "Press inclinado en máquina",
        imagen: ['PressInclinadoEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
      
            );
       
  }

  factory Ejercicio.pressInclinadoEnMultipower() {
    return Ejercicio(
        nombre: "Press inclinado en multipower",
        imagen: ['PressInclinadoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
      
            );
       
  }
factory Ejercicio.pressInclinadoConBandasElasticas() {
    return Ejercicio(
        nombre: "Press inclinado con bandas elásticas",
        imagen: ['PressInclinadoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
      
            );
       
  }

// Empuje Declinado
factory Ejercicio.pressDeclinado() {
    return Ejercicio(
        nombre: "Press declinado",
        imagen: ['PressDeclinado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoregulable'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
            );
       
  }

factory Ejercicio.pressDeclinadoConMancuernas() {
    return Ejercicio(
        nombre: "Press declinado con mancuernas",
        imagen: ['03011301-Dumbbell-Decline-Bench-Press_Chest_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
            );
       
  }

factory Ejercicio.pressDeclinadoEnMaquina() {
    return Ejercicio(
        nombre: "Press declinado en máquina",
        imagen: ['PressDeclinadoEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
      
            );
       
  }
factory Ejercicio.pressDeclinadoEnMultipower() {
    return Ejercicio(
        nombre: "Press declinado en multipower",
        imagen: ['PressDeclinadoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
      
            );
       
  }

factory Ejercicio.flexionesInclinadas() {
    return Ejercicio(
        nombre: "Flexiones inclinadas",
        imagen: ['FlexionesInclinadas.gif'],
        descripcion: 'Puedes añadir una carga externa',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','polea','mancuernas'],
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'} 
        
            );
       
  }
  

// Aduccion Horizontal plana para barra recta lo solucionaremos con un ej comodin (aperturas con carga externa)
factory Ejercicio.flexionesPliometricas() {
    return Ejercicio(
        nombre: "Flexiones pliométricas",
        imagen: ['FlexionesAlternas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','mancuernas'],
        musculosTrabajados:{'Primario1':'Pecho',}    
        
            );
       
  }
factory Ejercicio.wipersIsometricos() {
    return Ejercicio(
        nombre: "Wipers isométricos",
        imagen: ['05001301-Isometric-Wipers_Chest_360.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','mancuernas'],
        musculosTrabajados:{'Primario1':'Pecho',}    
        
            );
       
  }
  factory Ejercicio.aperturasPlanasConMancuernas() {
    return Ejercicio(
        nombre: "Aperturas planas con mancuernas",
        imagen: ['AperturasPlanasConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoplano'],
          
        principiantes: false,
        musculosTrabajados:{'Primario1':'Pecho',}    
            );
       
  }

  factory Ejercicio.crucesEnMaquina() {
    return Ejercicio(
        nombre: "Cruces en máquina",
        imagen: ['CrucesEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Pecho',}    
        
            );
       
  }

factory Ejercicio.peckDeck() {
    return Ejercicio(
        nombre: "Peck deck",
        imagen: ['PeckDeck.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Pecho',}    
        
            );
       
  }
  factory Ejercicio.crucesEnPoleaAAlturaMedia() {
    return Ejercicio(
        nombre: "Cruces en polea a altura central",
        imagen: ['CrucesEnPoleaAAlturaMedia.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea',],
        musculosTrabajados:{'Primario1':'Pecho',}    
        
        
            );
       
  }
  factory Ejercicio.aperturasPlanasEnPolea() {
    return Ejercicio(
        nombre: "Aperturas planas en cruce de poleas",
        imagen: ['AperturasPlanasEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Pecho',}    
        
            );
       
  }
factory Ejercicio.crucesConElasticoAAlturaMedia() {
    return Ejercicio(
        nombre: "Cruces con elásticos a altura media",
        imagen: ['CrucesAlturaMediaBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Pecho',}    
        
            );
       
  }

// Aduccion Horizontal inclinada para barra recta lo solucionaremos con un ej comodin (aperturas con carga externa)

factory Ejercicio.aperturasInclinadasConMancuernas() {
    return Ejercicio(
        nombre: "Aperturas inclinadas con mancuernas",
        imagen: ['AperturasBayasiConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal',} 
        
            );
       
  }
  factory Ejercicio.aperturasInclinadasEnCruceDePoleas() {
    return Ejercicio(
        nombre: "Aperturas inclinadas en cruce de poleas",
        imagen: ['AperturasInclinadasEnCruceDePoleas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja','bancoregulable'],
        musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal',} 
        
            );
       
  }

   factory Ejercicio.crucesEnPoleaDesdeAbajo() {
    return Ejercicio(
        nombre: "Cruces en polea desde abajo",
        imagen: ['CrucesEnPoleaDesdeAbajo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal',} 
        
            );
       
  }

factory Ejercicio.crucesConElasticosDesdeAbajo() {
    return Ejercicio(
        nombre: "Cruces con elásticos desde abajo",
        imagen: ['CrucesDesdeAbajoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal',} 
        
            );
       
  }
// Aduccion de hombro + aduccion horizontal 
factory Ejercicio.aperturasDeclinadasConMancuernas() {
    return Ejercicio(
        nombre: "Aperturas declinadas con mancuernas",
        imagen: ['03021301-Dumbbell-Decline-Fly_Chest_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
          musculosTrabajados:{'Primario1':'Pecho',}  
       
            );
       
  }
factory Ejercicio.aperturasDeclinadasEnPolea() {
    return Ejercicio(
        nombre: "Aperturas declinadas en polea",
        imagen: ['01581301-Cable-Decline-Fly_Chest_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja','bancoregulable'],
          musculosTrabajados:{'Primario1':'Pecho',}  
        
            );
       
  }
factory Ejercicio.crucesEnPoleaDesdeArriba() {
    return Ejercicio(
        nombre: "Cruces en polea desde arriba",
        imagen: ['CrucesEnPoleaDesdeArriba.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
          musculosTrabajados:{'Primario1':'Pecho',}  
        
            );
       
  }
factory Ejercicio.crucesConElasticosDesdeArriba() {
    return Ejercicio(
        nombre: "Cruces con elásticos desde arriba",
        imagen: ['CrucesEnPoleaDesdeArribaBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
          musculosTrabajados:{'Primario1':'Pecho',}  
        
            );
       
  }
// flexion de hombro 

factory Ejercicio.pullOverBarraRecta() {
    return Ejercicio(
        nombre: "Pull over con barra recta",
        imagen: ['PullOver.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior'}
            );
       
  }
factory Ejercicio.pullOverConMancuerna() {
    return Ejercicio(
        nombre: "Pull over con mancuerna",
        imagen: ['PullOverConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior'}
            );
       
  }
 factory Ejercicio.pullOverPoleaAlta() {
    return Ejercicio(
        nombre: "Pull over en polea alta",
        imagen: ['PullOverEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior'}
        
            );
       
  }

  factory Ejercicio.pullOverPoleaAltaTumbadoEnBancoInclinado() {
    return Ejercicio(
        nombre: "Pull over en polea alta tumbado en banco inclinado",
        imagen: ['PullOverPoleaAltaEnBancoInclinado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta','bancoregulable'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior'}
            );
       
  }
  factory Ejercicio.pullOverPoleaBajaTumbado() {
    return Ejercicio(
        nombre: "Pull over en polea baja tumbado",
        imagen: ['PullOverTumbadoEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior'}
            );
       
  }
  // ESPALDA

  // Visagra de cadera

  factory Ejercicio.rackPull() {
    return Ejercicio(
        nombre: "Rack Pull",
        imagen: ['RackPull.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
            );
    
       
  }

  factory Ejercicio.pesoMuerto() {
    return Ejercicio(
        nombre: "Peso Muerto",
        imagen: ['PesoMuerto.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
            );
    
       
  }

factory Ejercicio.pesoMuertoHexagonal() {
    return Ejercicio(
        nombre: "Peso Muerto con barra hexagonal",
        imagen: ['08111301-Trap-Bar-Deadlift_Thighs_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
            );
    
       
  }
  factory Ejercicio.pesoMuertoAgarreSnatch() {
    return Ejercicio(
        nombre: "Peso Muerto agarre snatch",
        imagen: ['PesoMuertoAgarreAncho.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
            );
    
       
  }
  factory Ejercicio.pesoMuertoConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto con mancuernas",
        imagen: ['PesoMuertoConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
            );
    
       
  }
 factory Ejercicio.pesoMuertoEnMultipower() {
    return Ejercicio(
        nombre: "Peso muerto en multipower",
        imagen: ['PesoMuertoEnMultipowe.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
        
            );
    
       
  }

  factory Ejercicio.pesoMuertoEnPolea() {
    return Ejercicio(
        nombre: "Peso Muerto en polea",
        imagen: ['01571301-Cable-Deadlift_Thighs_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
       
            );
    
       
  }

 factory Ejercicio.pesoMuertoBandasElasticas() {
    return Ejercicio(
        nombre: "Peso Muerto con bandas elásticas",
        imagen: ['PesoMuertoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'}
            );
    
       
  }
// Extension de hombro

factory Ejercicio.remoAUnaManoConBarra() {
    return Ejercicio(
        nombre: "Remo a una mano con barra",
        imagen: ['RemoAUnaMano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }

  factory Ejercicio.remoSupinoConBarra() {
    return Ejercicio(
        nombre: "Remo supino con barra",
        imagen: ['RemoSupino.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }
factory Ejercicio.remoEnPuntaAgarreCerrado() {
    return Ejercicio(
        nombre: "Remo en punta agarre cerrado",
        imagen: ['RemoEnPuntaAgarreCerrado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }

  factory Ejercicio.remoConMancuerna() {
    return Ejercicio(
        nombre: "Remo con mancuerna",
        imagen: ['RemoConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }
 factory Ejercicio.sealRow() {
    return Ejercicio(
        nombre: "Seal row",
        imagen: ['33201101-Dumbbell-Hammer-Grip-Incline-Bench-Two-Arm-Row_Back_small.png'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }
  factory Ejercicio.remoSupinoConMancuernasEnBancoInclinado() {
    return Ejercicio(
        nombre: "Remo supino con mancuernas con apoyo en banco inclinado",
        imagen: ['SealRowConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }
 factory Ejercicio.remoNeutroConMancuernas() {
    return Ejercicio(
        nombre: "Remo neutro con mancuernas de pie ",
        imagen: ['02931301-Dumbbell-Bent-Over-Row_Back-FIX_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }


  factory Ejercicio.remoNeutroSupinacionConMancuernas() {
    return Ejercicio(
        nombre: "Remo con mancuernas con neutrosupinación de pie",
        imagen: ['23251301-Dumbbell-Pronated-to-Neutral-Grip-Row-(female)_Back_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }

  factory Ejercicio.jalonEnMaquinaAgarreSupino() {
    return Ejercicio(
        nombre: "Jalón dorsal en máquina agarre supino",
        imagen: ['JalonDorsalEnMaquinaAgarreSupino.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
 factory Ejercicio.remoEnMaquinaAgarreNeutro() {
    return Ejercicio(
        nombre: "Remo en máquina agarre neutro",
        imagen: ['RemoEnMaquinaAgarreNeutro.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
    
            );
    
       
  }
  factory Ejercicio.remoEnMaquinaAgarreSupino() {
    return Ejercicio(
        nombre: "Remo en máquina agarre supino",
        imagen: ['RemoEnMaquinaAgarreSupino.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
 factory Ejercicio.remoSupinoEnMultipower() {
    return Ejercicio(
        nombre: "Remo supino en multipower",
        imagen: ['RemoSupinoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }

factory Ejercicio.remoEnPoleaBajaAUnaMano() {
    return Ejercicio(
        nombre: "Remo en polea a una mano",
        imagen: ['RemoEnPoleaAUnaMano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }
  factory Ejercicio.remoEnPoleaBajaSentadoAUnaMano() {
    return Ejercicio(
        nombre: "Remo en polea baja sentado a una mano",
        imagen: ['RemoAUnaManoEnPoleaBaja.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }
factory Ejercicio.remoEnPoleaBajaSentadoAgarreSupino() {
    return Ejercicio(
        nombre: "Remo en polea baja sentado agarre supino",
        imagen: ['RemoEnPoleaAgarreSupino.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }
factory Ejercicio.remoEnPoleaBajaSentadoAgarreNeutroCerrado() {
    return Ejercicio(
        nombre: "Remo en polea baja sentado agarre neutro cerrado",
        imagen: ['RemoEnPoleaAgarreNeutroCerrado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }

  factory Ejercicio.jalonDorsalAgarreSupino() {
    return Ejercicio(
        nombre: "Jalón dorsal agarre supino",
        imagen: ['JalonDorsalSupino.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }

 factory Ejercicio.jalonDorsalAgarreCerrado() {
    return Ejercicio(
        nombre: "Jalón dorsal agarre en V invertida",
        imagen: ['JalonDorsalEnPoleaAgarreCerrado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
  factory Ejercicio.jalonDorsalAUnaMano() {
    return Ejercicio(
        nombre: "Jalón dorsal en polea a una mano",
        imagen: ['JalonEnPoleaAUnaMano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
factory Ejercicio.dominadasAgarreNeutroCerrado() {
    return Ejercicio(
        nombre: "Dominadas con agarre neutro cerrado",
        imagen: ['DominadasCerradas.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
      principiantes: false,
      musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}

            );
    
       
  }
factory Ejercicio.dominadasAsistidasAgarreNeutroCerrado() {
    return Ejercicio(
        nombre: "Dominadas asistidas con agarre neutro cerrado",
        imagen: ['DominadasAsistidasAgarreNeutro.gif'],
        descripcion: 'Si vas sobrado puedes hacerlas libres',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }

factory Ejercicio.dominadasAgarreSupino() {
    return Ejercicio(
        nombre: "Dominadas con agarre supino",
        imagen: ['DominadasSupinas.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
      principiantes: false,
      musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }
factory Ejercicio.dominadasAsistidasAgarreSupino() {
    return Ejercicio(
        nombre: "Dominadas asistidas con agarre supino",
        imagen: ['DominadasAsistidasSupinas.gif'],
        descripcion: 'Si vas sobrado puedes hacerlas libres.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
factory Ejercicio.remoSentadoConBandasElasticas() {
    return Ejercicio(
        nombre: "Remo sentado con banda elástica",
        imagen: ['RemoSentadoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }
factory Ejercicio.remoAUnaManoConBandaElastica() {
    return Ejercicio(
        nombre: "Remo a una mano con banda elástica",
        imagen: ['RemoAUnaManoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],

        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }

factory Ejercicio.remoADosManosConBandaElastica() {
    return Ejercicio(
        nombre: "Remo a dos manos con banda elástica",
        imagen: ['RemoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }

factory Ejercicio.jalonSupinoConBandaElastica() {
    return Ejercicio(
        nombre: "Jalón supino con banda elástica",
        imagen: ['JalonSupinoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }
factory Ejercicio.jalonNeutroConBandaElastica() {
    return Ejercicio(
        nombre: "Jalón neutro con banda elástica",
        imagen: ['JalonNeutroBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
        
            );
    
       
  }
  // Aduccion de hombro
factory Ejercicio.jalonDorsalEnMaquinaDivergente() {
    return Ejercicio(
        nombre: "Jalón dorsal en máquina divergente",
        imagen: ['JalonDorsalMaquinaDivergente.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'}
      
            );
    
       
  }

factory Ejercicio.jalonDorsalEnCruceDePoleas() {
    return Ejercicio(
        nombre: "Jalón dorsal en cruce de poleas",
        imagen: ['AduccionesEnPoleaAlta.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'}
      
            );
    
       
  }

factory Ejercicio.jalonTrasnuca() {
    return Ejercicio(
        nombre: "Jalón trasnuca",
        imagen: ['JalonTrasnuca.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'}
      
            );
    
       
  }
factory Ejercicio.dominadasTrasnuca() {
    return Ejercicio(
        nombre: "Dominadas trasnuca",
        imagen: ['DominadasTrasnuca.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
      principiantes: false,
      musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'}
            );
    
       
  }
factory Ejercicio.dominadasAgarreNeutroAmplio() {
    return Ejercicio(
        nombre: "Dominadas con agarre neutro amplio",
        imagen: ['DominadasConAgarreNeutroAmplio.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
      principiantes: false,
      musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'}
            );
    
       
  }
factory Ejercicio.aduccionDeHombroConBandaElastica() {
    return Ejercicio(
        nombre: "Aducción de hombro con banda elástica",
        imagen: ['AduccionDeHombroBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'}
        
            );
    
       
  }
// Aproximacion de escapulas 
factory Ejercicio.remoconBarraCodosSeparadosConApoyoEnBancoInclinado() {
    return Ejercicio(
        nombre: "Remo con barra con codos separados apoyado en banco inclinado",
        imagen: ['RemoCodosSeparadosApoyoEnBanco.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoregulable'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
            );
    
       
  }


factory Ejercicio.remoconBarraCodosSeparados() {
    return Ejercicio(
        nombre: "Remo con barra con codos separados",
        imagen: ['RemoConCodosSeparados.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
            );
    
       
  }
factory Ejercicio.remoConMancuernaCodosSeparadosEnBancoInclinado() {
    return Ejercicio(
        nombre: "Remo con mancuerna con codos separados apoyo en banco inclinado",
        imagen: ['RemoConMancuernasConCodosSeparados.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
            );
    
       
  }
  factory Ejercicio.remoConMancuernaCodosSeparados() {
    return Ejercicio(
        nombre: "Remo con mancuerna con codos separados",
        imagen: ['23261301-Dumbbell-Pronated-Grip-Row-_(female)_Back_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
            );
    
       
  }
  factory Ejercicio.remoAltoEnMaquina() {
    return Ejercicio(
        nombre: "Remo alto en máquina",
        imagen: ['RemoAltoEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }

  factory Ejercicio.remoConCodosSeparadosEnMultipower() {
    return Ejercicio(
        nombre: "Remo con codos separados en multipower",
        imagen: ['RemoConCodosSeparadosEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
            );
    
       
  }
factory Ejercicio.remoConCodosSeparadosEnMaquina() {
    return Ejercicio(
        nombre: "Remo en máquina con codos separados",
        imagen: ['RemoEnMaquinaConCodosSeparados.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }

  factory Ejercicio.remoEnPuntaAgarreAncho() {
    return Ejercicio(
        nombre: "Remo en punta agarre ancho",
        imagen: ['RemoEnPuntaAgarreAbierto.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
            );
    
       
  }

  factory Ejercicio.remoConCodosSeparadosEnPoleaBaja() {
    return Ejercicio(
        nombre: "Remo con codos separados en polea baja",
        imagen: ['RemoConCodosSeparadosEnPoleaBaja.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }

factory Ejercicio.facePull() {
    return Ejercicio(
        nombre: "Face Pull",
        imagen: ['FacePull.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }
factory Ejercicio.facePullBandaElastica() {
    return Ejercicio(
        nombre: "Face pull con banda elástica",
        imagen: ['FacePullBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }
  factory Ejercicio.remoAltoConBandaElastica() {
    return Ejercicio(
        nombre: "Remo alto con banda elástica",
        imagen: ['RemoAltoConCodosSeparadosBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }
factory Ejercicio.remoConCodosSeparadosConBandaElastica() {
    return Ejercicio(
        nombre: "Remo con codos separados con banda elástica",
        imagen: ['RemoConCodosSeparadosBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'}
        
            );
    
       
  }
// Aduccion + Extension
factory Ejercicio.jalonDorsalProno() {
    return Ejercicio(
        nombre: "Jalón dorsal prono",
        imagen: ['JalonDorsalPronoEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
factory Ejercicio.dominadasPronas() {
    return Ejercicio(
        nombre: "Dominadas agarre prono",
        imagen: ['Dominadas.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso, si no cambia el ejercicio a dominadas asistidas',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
      principiantes: false,
      musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
            );
    
       
  }
factory Ejercicio.dominadasAsistidasPronas() {
    return Ejercicio(
        nombre: "Dominadas asistidas agarre prono",
        imagen: ['DominadasAsistidasPronas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
      
            );
    
       
  }
  factory Ejercicio.dominadasAsistidasEnCasaPronas() {
    return Ejercicio(
        nombre: "Dominadas asistidas agarre prono (subido en banco)",
        imagen: ['Dominadas.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso, si no cambia el ejercicio a dominadas asistidas',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['dominadas'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'}
    
            );
    
       
  }
// Extension + aprox escapulas


factory Ejercicio.remoConBarra() {
    return Ejercicio(
        nombre: "Remo con barra",
        imagen: ['Remo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
            );
    
       
  }

  factory Ejercicio.remoPendlay() {
    return Ejercicio(
        nombre: "Remo pendlay",
        imagen: ['RemoPendlay.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
            );
    
       
  }
  
  factory Ejercicio.remoConMancuernasAgarrePronoDePie() {
    return Ejercicio(
        nombre: "Remo con mancuernas agarre prono",
        imagen: ['23261301-Dumbbell-Pronated-Grip-Row-_(female)_Back_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
            );
    
       
  }

  factory Ejercicio.remoEnMultipower() {
    return Ejercicio(
        nombre: "Remo en multipower",
        imagen: ['RemoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
       
            );
    
       
  }

  factory Ejercicio.remoPendlayEnMultipower() {
    return Ejercicio(
        nombre: "Remo pendlay en multipower",
        imagen: ['RemoPendlayEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
       
            );
    
       
  }

  factory Ejercicio.remoEnPoleaBaja() {
    return Ejercicio(
        nombre: "Remo en polea baja",
        imagen: ['RemoEnPoleaBaja.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
       
            );
    
       
  }


factory Ejercicio.remoEnPoleaBajaAgarreAncho() {
    return Ejercicio(
        nombre: "Remo en polea baja agarre ancho",
        imagen: ['RemoEnPoleaBajaAgarreAncho.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'}
       
            );
    
       
  }
 
  // HOMBRO 


  
// Empuje vertical 

factory Ejercicio.pressMilitarSentado() {
    return Ejercicio(
        nombre: "Press militar sentado",
        imagen: ['PressMilitar.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }
factory Ejercicio.pressMilitarDePie() {
    return Ejercicio(
        nombre: "Press militar de pie",
        imagen: ['PressMilitarDePie.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }

factory Ejercicio.pressMilitarTrasnuca() {
    return Ejercicio(
        nombre: "Press militar trasnuca",
        imagen: ['PressMilitarTrasnuca.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }

  factory Ejercicio.pressDeHombroConMancuernas() {
    return Ejercicio(
        nombre: "Press de hombro con mancuernas",
        imagen: ['PressDeHombroConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }

  factory Ejercicio.pressDeHombroConMancuernasAgarreNeutro() {
    return Ejercicio(
        nombre: "Press de hombro con mancuernas agarre neutro",
        imagen: ['PressDeHombroAgarreNeutroConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }
  factory Ejercicio.pressArnold() {
    return Ejercicio(
        nombre: "Press arnold",
        imagen: ['21371301-Dumbbell-Arnold-Press_Shoulders_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }

factory Ejercicio.pressDeHombroEnMaquina() {
    return Ejercicio(
        nombre: "Press de hombro en máquina",
        imagen: ['PressDeHombroEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
     
            );
       
  }





factory Ejercicio.pressMilitarEnMultipower() {
    return Ejercicio(
        nombre: "Press militar en multipower",
        imagen: ['PressMilitarEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
        
        
            );
       
  }

  factory Ejercicio.pressMilitarTrasnucaEnMultipower() {
    return Ejercicio(
        nombre: "Press militar trasnuca en multipower",
        imagen: ['PressTrasnucaEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
            );
       
  }
 factory Ejercicio.pressMilitarEnPolea() {
    return Ejercicio(
        nombre: "Press militar en polea",
        imagen: ['01481301-Cable-Alternate-Shoulder-Press_Shoulders_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea',],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
       
            );
       
  }
factory Ejercicio.pressMilitarConBandasElasticas() {
    return Ejercicio(
        nombre: "Press militar con banda elástica",
        imagen: ['PressMilitarBandaElastica.gif','PressMilitarBandaElastica2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        }
       
            );
       
  }
// flexion de hombro 

factory Ejercicio.elevacionFrontalConBarraRecta() {
    return Ejercicio(
        nombre: "Elevación frontal con barra recta",
        imagen: ['ElevacionFrontal.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        musculosTrabajados:{'Primario1':'Hombro Frontal',}  
       
            ); }
  factory Ejercicio.elevacionFrontalConMancuernas() {
    return Ejercicio(
        nombre: "Elevación frontal con mancuernas",
        imagen: ['ElevacionFrontalConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Hombro Frontal',}  
       
            ); }  

      factory Ejercicio.elevacionFrontalEnPolea() {
    return Ejercicio(
        nombre: "Elevación frontal en polea ",
        imagen: ['ElevacionFrontalEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Hombro Frontal',}  
       
            ); }  
 factory Ejercicio.elevacionFrontalConBandaElastica() {
    return Ejercicio(
        nombre: "Elevación frontal con banda elástica",
        imagen: ['ElevacionFrontalBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Hombro Frontal',}  
       
            ); }  
    // Abduccion de hombro 

 // - Tension constante

 factory Ejercicio.elevacionLateralConMancuernaEnBancoInclinado() {
    return Ejercicio(
        nombre: "Elevación lateral con mancuerna en banco inclinado",
        imagen: ['ElevacionLateralEnBancoInclinado.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }

// factory Ejercicio.comodinElevacionLateralTorsoInclinado() {
//     return Ejercicio(
//         nombre: "Elevacion lateral torso inclinado",
//         imagen: ['ElevacionLateralEnBancoInclinado.gif'],
//         descripcion: 'con carga externa (una botella de agua por ejemplo)',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos','barra','polea'],
        
//             );
       
//   }
factory Ejercicio.elevacionLateralEnMaquina() {
    return Ejercicio(
        nombre: "Elevaciones laterales en máquina",
        imagen: ['ElevacionesLateralesEnMaquina.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }

  factory Ejercicio.elevacionLateralEnCruceDePoleas() {
    return Ejercicio(
        nombre: "Elevaciones laterales en cruce de poleas",
        imagen: ['ElevacionLateralEnCruceDePoleas.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }

    factory Ejercicio.elevacionLateralEnPoleaAUnaMano() {
    return Ejercicio(
        nombre: "Elevación lateral en polea a una mano",
        imagen: ['ElevacionLateralEnPoleaAUnaMano.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }
    //- Acortamiento
factory Ejercicio.remoAlMentonAgarreAncho() {
    return Ejercicio(
        nombre: "Remo al mentón agarre ancho",
        imagen: ['RemoAlMentonAgarreAmplio.gif','RemoAlMentonAgarreAmplio2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
            ); }
factory Ejercicio.elevacionLateralConBarra() {
    return Ejercicio(
        nombre: "Elevación lateral con barra",
        imagen: ['32371301-Landmine-Lateral-Raise_Shoulders_180.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }
factory Ejercicio.elevacionesLateralesCrucifixConMancuerna() {
    return Ejercicio(
        nombre: "Elevaciones laterales crucifix con mancuernas",
        imagen: ['ElevacionesLateralesCrucifixConMancuernas.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    

        
            ); }

factory Ejercicio.elevacionLateralConMancuerna() {
    return Ejercicio(
        nombre: "Elevación lateral con mancuerna",
        imagen: ['ElevacionLateralConMancuerna.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }

factory Ejercicio.elevacionLateralConMancuernaAUnaMano() {
    return Ejercicio(
        nombre: "Elevación lateral con mancuerna a una mano",
        imagen: ['ElevacionLateralConMancuernaAUnaMano.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }
    factory Ejercicio.elevacionLateralSentadoConMancuerna() {
    return Ejercicio(
        nombre: "Elevación lateral sentado con mancuerna",
        imagen: ['ElevacionLateralSentado.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }

    factory Ejercicio.comodinElevacionLateral() {
    return Ejercicio(
        nombre: "Elevacion lateral",
        imagen: ['ElevacionLateralConMancuerna.gif'],
        descripcion: 'Usa una carga externa, por ejemplo una botella de agua',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['comodin'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
            ); }
      factory Ejercicio.elevacionLateralConBandaElastica() {
    return Ejercicio(
        nombre: "Elevación lateral con banda elástica",
        imagen: ['ElevacionesLateralesBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','elasticos'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
       
            ); } 

      factory Ejercicio.elevacionLateralConBandaElasticaTecnica112() {
    return Ejercicio(
        nombre: "Elevación lateral con banda elástica (Técnica 1-1/2)",
        imagen: ['ElevacionesLateralesBandaElastica.gif'],
        descripcion: 'Sube, bajas a mitad,subes y bajas hasta abajo, eso es una repetición',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','elasticos'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
       
            ); }    
 // -Estiramiento

 factory Ejercicio.elevacionLateralTumbadoConMancuerna() {
    return Ejercicio(
        nombre: "Elevación lateral tumbado con mancuerna",
        imagen: ['ElevacionLateralTumbado.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            ); }

    factory Ejercicio.comodinElevacionLateralTumbado() {
    return Ejercicio(
        nombre: "Elevacion lateral tumbado",
        imagen: ['ElevacionLateralTumbado.gif'],
        descripcion: 'con carga externa (una botella de agua por ejemplo)',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos','barra','polea'],
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    
        
            );
       
  }

  
    // Abduccion horizontal


    factory Ejercicio.esquiador() {
    return Ejercicio(
        nombre: "Esquiador con barra recta",
        imagen: ['Esquiador.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
       
            ); }
 factory Ejercicio.abduccionHorizontalDeHombroConMancuerna() {
    return Ejercicio(
        nombre: "Abducción horizontal de hombro con mancuerna",
        imagen: ['AbduccionHorizontalDeHombroConMancuerna.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }


    factory Ejercicio.pajaroConMancuernasSentado() {
    return Ejercicio(
        nombre: "Pájaro con mancuernas sentado",
        imagen: ['PajaroConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
       
            ); }

    factory Ejercicio.pajaroConMancuernasDePie() {
    return Ejercicio(
        nombre: "Pájaro con mancuernas de pie",
        imagen: ['PajaroPosteriorConMancuernasDePie.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
        
       
            ); }

factory Ejercicio.pajaroConMancuernasEnBancoPlano() {
    return Ejercicio(
        nombre: "Pájaro con mancuernas tumbado",
        imagen: ['PajaroPosteriorConMancuernasApoyoEnBanco.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas','bancoplano'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
       
       
            ); }

factory Ejercicio.pajaroConMancuernasEnBancoInclinado() {
    return Ejercicio(
        nombre: "Pájaro con mancuernas con apoyo en banco inclinado",
        imagen: ['PajaroPosteriorConMancuernasEnBancoInclinado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
       
            ); }
factory Ejercicio.abduccionHorizontalEnMaquinaContractoraInversa() {
    return Ejercicio(
        nombre: "Hombro posterior en máquina contractora inversa",
        imagen: ['AbduccionHorizontalEnMaquinaContractoraInversa.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }

    factory Ejercicio.abduccionHorizontalEnCruceDePoleas() {
    return Ejercicio(
        nombre: "Hombro posterior en cruce de poleas",
        imagen: ['AbduccionHorizontalEnPoleaAlta.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }

    factory Ejercicio.abduccionHorizontalEnCruceDePoleasTumbado() {
    return Ejercicio(
        nombre: "Hombro posterior en cruce de poleas tumbado",
        imagen: ['AbduccionHorizontalTumbado.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta','bancoplano'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }

      factory Ejercicio.pajaroPosteriorEnPoleaBaja() {
    return Ejercicio(
        nombre: "Pájaro posterior en cruce de poleas de pie",
        imagen: ['PajaroPosteriorEnPolea.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }

    factory Ejercicio.pajaroPosteriorEnPoleaBajaSentado() {
    return Ejercicio(
        nombre: "Pájaro posterior sentado en cruce de poleas de pie",
        imagen: ['PajaroPosteriorEnCruceDePoleasSentado.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
        
            ); }
    
    factory Ejercicio.pajaroPosteriorConBandaElastica() {
    return Ejercicio(
        nombre: "Pájaro posterior con banda elástica",
        imagen: ['PajaroPosteriorBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }
    
    factory Ejercicio.abduccionDeHombroConBandaElastica() {
    return Ejercicio(
        nombre: "Abducción horizontal de hombro con banda elástica",
        imagen: ['AbduccionDeHombroBandaElastica.gif','AbduccionHorizontalBandaElastica2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Hombro Posterior',}   
        
            ); }

     
    
    //BICEPS 
  
  //HombroEnFlexion 

factory Ejercicio.curlArana() {
    return Ejercicio(
        nombre: "Curl araña",
        imagen: ['CurlAraña.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoregulable'],
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }
factory Ejercicio.curlConcentradoConBarra() {
    return Ejercicio(
        nombre: "Curl concentrado con barra",
        imagen: ['CurlConcentrado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }

  factory Ejercicio.curlBancoScoot() {
    return Ejercicio(
        nombre: "Curl de bíceps en banco scott",
        imagen: ['CurlScott.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
            );
    
       
  }

factory Ejercicio.curlAranaConMancuernas() {
    return Ejercicio(
        nombre: "Curl araña con mancuernas",
        imagen: ['CurlArañaConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','bancoregulable'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
            );
    
       
  }
factory Ejercicio.curlConcentradoConMancuerna() {
    return Ejercicio(
        nombre: "Curl concentrado con mancuerna",
        imagen: ['CurlConcentradoConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
            );
    
       
  }

  factory Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna() {
    return Ejercicio(
        nombre: "Curl concentrado en banco inclinado con mancuerna",
        imagen: ['CurlConcentradoEnBancoInclinado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        musculosTrabajados:{'Primario1':'Biceps',} 
        
       
            );
    
       
  }
factory Ejercicio.curlDeBicepsMartilloEnBancoScottConMancuerna() {
    return Ejercicio(
        nombre: "Curl martillo en banco scott con mancuerna",
        imagen: ['CurlMartilloBancoScottMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }

  factory Ejercicio.curlDeBicepsEnBancoScottConMancuerna() {
    return Ejercicio(
        nombre: "Curl de bíceps en banco scott con mancuerna",
        imagen: ['CurlScottConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Biceps',} 
     
            );
    
       
  }

   factory Ejercicio.curlDeBicepsEnMaquinaScott() {
    return Ejercicio(
        nombre: "Curl de bíceps en máquina scott",
        imagen: ['05921301-Lever-Preacher-Curl_Upper-Arms_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }

  factory Ejercicio.curlDeBicepsTumbadoEnPoleaAlta() {
    return Ejercicio(
        nombre: "Curl de bíceps tumbado en polea alta",
        imagen: ['CurlDeBicepsEnPoleaAltaTumbado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta','bancoplano'],
        musculosTrabajados:{'Primario1':'Biceps',} ,
        principiantes: false,
        
            );
    
       
  }
factory Ejercicio.curlDeBicepsEnPoleaAltaADosManos() {
    return Ejercicio(
        nombre: "Curl de bíceps en polea alta a dos manos",
        imagen: ['CurlDeBicepsEnPoleaADosManos.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }
  factory Ejercicio.curlDeBicepsConcentradoConBandaElastica() {
    return Ejercicio(
        nombre: "Curl concentrado con banda elástica",
        imagen: ['CurlConcentradoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }
  // Hombro anatomico


  factory Ejercicio.curlConBarraRectaYBandaElastica() {
    return Ejercicio(
        nombre: "Curl con barra recta + banda elástica",
        imagen: ['CurlConBarra+BandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Biceps',} 
            );
    
       
  }

   factory Ejercicio.curlConBarraRecta() {
    return Ejercicio(
        nombre: "Curl de bíceps con barra recta",
        imagen: ['CurlDeBiceps.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Biceps',} 
            );
    
       
  }

  factory Ejercicio.curlConBarraZ() {
    return Ejercicio(
        nombre: "Curl de bíceps barra Z",
        imagen: ['22381301-EZ-Barbell-Curl-(female)_Upper-Arms_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        musculosTrabajados:{'Primario1':'Biceps',} 
      
            );
    
       
  }
 factory Ejercicio.curlDeBicepsConMancuernasDePie() {
    return Ejercicio(
        nombre: "Curl de bíceps con mancuernas de pie",
        imagen: ['CurlDeBicepsConMancuernasDePie.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Biceps',} 
      
            );
    
       
  }

   factory Ejercicio.curlMartilloConMancuerna() {
    return Ejercicio(
        nombre: "Curl martillo con mancuernas",
        imagen: ['CurlMartilloConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Biceps',} 
    
            );
    
       
  }

factory Ejercicio.curlDeBicepsConBarraEnPoleaBaja() {
    return Ejercicio(
        nombre: "Curl de bíceps con barra en polea baja",
        imagen: ['CurlDeBicepsEnPoleaBaja.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }

factory Ejercicio.curlDeBicepsConCuerdaEnPoleaBaja() {
    return Ejercicio(
        nombre: "Curl de bíceps con cuerda en polea baja",
        imagen: ['CurlDeBicepsEnPoleaBajaConCuerda.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Biceps',} 
     
        
            );
    
       
  }

factory Ejercicio.curlDeBicepsTumbadoEnPoleaBaja() {
    return Ejercicio(
        nombre: "Curl de bíceps tumbado en polea baja",
        imagen: ['CurlDeBicepsEnPoleaBajaTumbado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }




factory Ejercicio.curlDeBicepsConBandaElastica() {
    return Ejercicio(
        nombre: "Curl de bíceps con banda elástica",
        imagen: ['CurlDeBicepsBandaElastica.gif','CurlDeBicepsBandaElastica2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }
factory Ejercicio.curlDeBicepsConElasticoSentado() {
    return Ejercicio(
        nombre: "Curl de bíceps con elástico sentado",
        imagen: ['31231301-Resistance-Band-Seated-Biceps-Curl_Chest_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }
factory Ejercicio.curlDeBicepsMartilloConBandaElastica() {
    return Ejercicio(
        nombre: "Curl martillo con banda elástica",
        imagen: ['CurlMartilloBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }

  factory Ejercicio.curlDeBicepsConBandaElasticaAgarreReverso() {
    return Ejercicio(
        nombre: "Curl de bíceps con banda elástica agarre reverso",
        imagen: ['CurlDeBicepsAgarreReversoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }
// Hombro Extension 

factory Ejercicio.curlDeArrastreConBarraRecta() {
    return Ejercicio(
        nombre: "Curl de arrastre con barra recta",
        imagen: ['Barbell-Drag-Curl.jpg'],
        descripcion: 'Echa los codos hacia atras cuando subas.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Biceps',} 
            );
    
       
  }
  factory Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasAgarreNeutro() {
    return Ejercicio(
        nombre: "Curl de bíceps en banco inclinado con mancuernas agarre neutro",
        imagen: ['CurlConMancuernasEnBancoInclinadoAgarreNeutro.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        musculosTrabajados:{'Primario1':'Biceps',} 
        
            );
    
       
  }

factory Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas() {
    return Ejercicio(
        nombre: "Curl de bíceps en banco inclinado con mancuernas",
        imagen: ['CurlDeBicepsEnBancoInclinadoConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoregulable'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
            );
    
       
  }

  factory Ejercicio.curlDeBicepsEnPoleaBajaHombroExtension() {
    return Ejercicio(
        nombre: "Curl de bíceps en polea baja a una mano",
        imagen: ['CurlDeBicepsEnPoleaAUnaMano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Biceps',} 
       
        
            );
    
       
  }
  // TRICEPS 
  
  
  // Empuje cerrado 
factory Ejercicio.pressCerrado() {
    return Ejercicio(
        nombre: "Press cerrado",
        imagen: ['PressCerrado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
            );
       
  }
factory Ejercicio.pressCerradoConMancuernas() {
    return Ejercicio(
        nombre: "Press cerrado con mancuernas",
        imagen: ['PressCerradoMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoplano'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
            );
       
  }

factory Ejercicio.fondosDeTriceps() {
    return Ejercicio(
        nombre: "Fondos de tríceps",
        imagen: ['Fondos.gif','Fondos2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','paralelas'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
            );
       
  }
factory Ejercicio.fondosDeTricepsEnMaquina() {
    return Ejercicio(
        nombre: "Fondos de tríceps en máquina",
        imagen: ['FondosEnMaquina.gif','FondosEnMaquina3.gif','FondosDeTricepsEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
        
            );
       
  }
factory Ejercicio.pressCerradoEnMultipower() {
    return Ejercicio(
        nombre: "Press cerrado en multipower",
        imagen: ['PressCerradoEnMultipower.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
        
            );
       
  }

  factory Ejercicio.flexionesCerradas() {
    return Ejercicio(
        nombre: "Flexiones cerradas",
        imagen: ['FlexionesCerradas.gif',],
        descripcion: 'Puedes añadir una carga externa si vas sobrado, por ejemplo, una mochila',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea','barra','mancuernas'],
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
        
            );
       
  }

 factory Ejercicio.flexionesCerradasConBandaElastica() {
    return Ejercicio(
        nombre: "Flexiones cerradas con banda elástica",
        imagen: ['FlexionesCerradasBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'}
        
            );
       
  }

// Extension de codo HombroFlexion
factory Ejercicio.extensionDeTricepsConBarraRecta() {
    return Ejercicio(
        nombre: "Extensión de tríceps con barra recta",
        imagen: ['ExtensionDeTriceps.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Triceps',}
            );
}
factory Ejercicio.pressFrances() {
    return Ejercicio(
        nombre: "Press francés con barra recta",
        imagen: ['PressFrances.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','bancoplano'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Triceps',}
            );
}
factory Ejercicio.pressFrancesBarraZ() {
    return Ejercicio(
        nombre: "Press francés con barra Z",
        imagen: ['04501301-EZ-Barbell-JM-Bench-Press_Upper-Arms_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Triceps',}
            );
}

factory Ejercicio.extensionDeTricepsConMancuerna() {
    return Ejercicio(
        nombre: "Extensión de tríceps con mancuerna a dos manos de pie",
        imagen: ['ExtensionDeTricepsConMancuernaAdosManosDePie.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Triceps',}
            );
}


factory Ejercicio.extensionDeTricepsConMancuernaAUnaMano() {
    return Ejercicio(
        nombre: "Extensión de tríceps con mancuerna de pie a una mano",
        imagen: ['ExtensionDeTricepsConMancuernaAUnaMano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
        
            );
}


factory Ejercicio.extensionDeTricepsConMancuernaSentado() {
    return Ejercicio(
        nombre: "Extensión de tríceps con mancuerna sentado",
        imagen: ['ExtensionDeTricepsConMancuernaSentado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Triceps',}
      
            );
}



factory Ejercicio.pressFrancesConMancuernas() {
    return Ejercicio(
        nombre: "Press francés con mancuernas",
        imagen: ['PressFrancesConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','bancoplano'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Triceps',}
            );
}

factory Ejercicio.extensionDeTricepsEnMaquina() {
    return Ejercicio(
        nombre: "Extensión de tríceps en máquina",
        imagen: ['ExtensionDeTricepsEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}
factory Ejercicio.extensionDeTricepsEnPoleaAltaConBarraRecta() {
    return Ejercicio(
        nombre: "Extensión de tríceps en polea alta con barra recta",
        imagen: ['ExtensionDeTricepsEnPoleaAltaConBarraRecta.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}

factory Ejercicio.extensionDeTricepsEnPoleaAltaConCuerda() {
    return Ejercicio(
        nombre: "Extensión de tríceps en polea alta con cuerda",
        imagen: ['ExtensionDeTricepsEnPoleaAltaConCuerda.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}

factory Ejercicio.extensionDeTricepsEnPoleaBajaADosManos() {
    return Ejercicio(
        nombre: "Extensión de tríceps en polea baja a dos manos",
        imagen: ['ExtensionDeTricepsEnPoleaBajaADosManos.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Triceps',}
      
            );
}

factory Ejercicio.extensionDeTricepsEnPoleaBajaAUnaMano() {
    return Ejercicio(
        nombre: "Extensión de tríceps en polea baja a una mano",
        imagen: ['ExtensionDeTricepsEnPoleaAUnaMano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}

factory Ejercicio.extensionDeTricepsElasticoAbajao() {
    return Ejercicio(
        nombre: "Extensión de tríceps con elastico apoyado abajo",
        imagen: ['ExtensionDeTricepsEnPoleaAltaBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
       
  }

  factory Ejercicio.extensionDeTricepsConElasticoArriba() {
    return Ejercicio(
        nombre: "Extensión de tríceps con banda elástica arriba",
        imagen: ['ExtensionDeTricepsEnPoleaBajaBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
       
  }
  factory Ejercicio.extensionDeTricepsConBandaElasticaAUnaMano() {
    return Ejercicio(
        nombre: "Extensión de tríceps con banda elástica arriba a una mano",
        imagen: ['ExtensionDeTricepsPoleaAltaAUnaManoBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
       
  }
  factory Ejercicio.pressFrancesConBandaElastica() {
    return Ejercicio(
        nombre: "Press francés con banda elástica",
        imagen: ['PressFrancesBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos','bancoplano'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
       
  }
// Extension de codo HombroExtension

factory Ejercicio.patadaDeTricepsConMancuerna() {
    return Ejercicio(
        nombre: "Patada de tríceps con mancuerna",
        imagen: ['PatadaDeTricepsConMancuerna.gif','PatadaDeTricepsConMancuerna2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}
factory Ejercicio.fondosEntreBancos() {
    return Ejercicio(
        nombre: "Fondos de tríceps entre bancos con peso corporal",
        imagen: ['FondosConPesoCorporal.gif'],
        descripcion: 'Si lo necesitas,ponte carga encima.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','barra','polea','elasticos'],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}

factory Ejercicio.fondosDeTricepsEnMaquinaDeDominadasAsistidas() {
    return Ejercicio(
        nombre: "Fondos de tríceps en máquina de dominadas asistidas",
        imagen: ['FondosDeTricepsEnMaquina2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Triceps',}
        
            );
}
factory Ejercicio.patadaDeTricepsEnPoleaBaja() {
    return Ejercicio(
        nombre: "Patada de tríceps en polea baja",
        imagen: ['PatadaDeTricepsEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Triceps',}
      
            );
}

factory Ejercicio.patadaDeTricepsConBandaElastica() {
    return Ejercicio(
        nombre: "Patada de tríceps con banda elástica",
        imagen: ['PatadaDeTricepsBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Triceps',}
     
            );
}
//CUADRICEPS 
  
// Flexion de rodilla con extension de cadera

  factory Ejercicio.sentadilla() {
    return Ejercicio(
        nombre: "Sentadilla con barra",
        imagen: ['Sentadilla.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',}
            );
    
       
  }
factory Ejercicio.sentadillaConMancuernas() {
    return Ejercicio(
        nombre: "Sentadilla con mancuernas",
        imagen: ['SentadillaConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',}
            );
    
       
  }
factory Ejercicio.sentadillaConMancuernasAUnaPierna() {
    return Ejercicio(
        nombre: "Sentadilla con mancuernas a una pierna",
        imagen: ['SentadillaAUnaPiernaConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',}
            );
    
       
  }
  
factory Ejercicio.sentadillaEnMultipower() {
    return Ejercicio(
        nombre: "Sentadilla en multipower",
        imagen: ['SentadillaEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',}
        
            );
    
       
  }
factory Ejercicio.sentadillaAUnaPiernaPesoCorporal() {
    return Ejercicio(
        nombre: "Sentadilla a una pierna con peso corporal",
        imagen: ['SentadillaAUnaPierna.gif'],
        descripcion: 'Puedes añadir carga externa si lo necesitas,por ejemplo con una mochila',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea',],
        musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',}
        
            );
    
       
  }

  factory Ejercicio.sentadillaConGomaElastica() {
    return Ejercicio(
        nombre: "Sentadilla con banda elástica",
        imagen: ['SentadillasBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',}
       
            );
    
       
  }
 
  
// Flexion de rodilla Pesada 

factory Ejercicio.sentadillaFrontal() {
    return Ejercicio(
        nombre: "Sentadilla frontal",
        imagen: ['SentadillaFrontal.gif','SentadillaFrontal2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }
factory Ejercicio.sentadillaHackConBarra() {
    return Ejercicio(
        nombre: "Sentadilla hack con barra",
        imagen: ['SentadillaHack.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.splitSquat() {
    return Ejercicio(
        nombre: "Split squat",
        imagen: ['SplitSquat.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.sentadillaFrontalConMancuerna() {
    return Ejercicio(
        nombre: "Sentadilla frontal con mancuerna",
        imagen: ['SentadillaFrontalConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.sentadillaEnMultipowerCaderaPerpendicular() {
    return Ejercicio(
        nombre: "Sentadilla en multipower bajando con cadera perpendicular",
        imagen: ['SentadillaEnMultipowerCaderaPerpendicular.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
     
            );
    
       
  }

factory Ejercicio.prensaInclinada() {
    return Ejercicio(
        nombre: "Prensa inclinada",
        imagen: ['PrensaInclinada.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

factory Ejercicio.sentadillaFrontalEnMultipower() {
    return Ejercicio(
        nombre: "Sentadilla frontal en multipower",
        imagen: ['SentadillaFrontalEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }
factory Ejercicio.sentadillaHackEnMultipower() {
    return Ejercicio(
        nombre: "Sentadilla hack en multipower",
        imagen: ['SentadillaHackEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

factory Ejercicio.sentadillaHack() {
    return Ejercicio(
        nombre: "Sentadilla hack",
        imagen: ['SentadillaHackEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
      
            );
    
       
  }
factory Ejercicio.prensaHorizontalEnMaquina() {
    return Ejercicio(
        nombre: "Prensa horizontal en máquina",
        imagen: ['PrensaEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
       
            );
    
       
  }
factory Ejercicio.prensaVerticalEnMultipower() {
    return Ejercicio(
        nombre: "Prensa vertical en multipower",
        imagen: ['PrensaEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.sentadillaFrontalEnPolea() {
    return Ejercicio(
        nombre: "Sentadilla frontal en polea",
        imagen: ['33541101-Cable-Front-Squat-(VERSION-2)_Thighs_small.png'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
        
            );
    
       
  }

factory Ejercicio.sentadillaBulgaraConBandaElastica() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con bandas elásticas",
        imagen: ['SentadillaBulgaraBandaElastica.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
      
            );
    
       
  }

  factory Ejercicio.zancadasConBandaElastica() {
    return Ejercicio(
        nombre: "Zancadas con banda elástica",
        imagen: ['ZancadasBandaElastica.gif','24241301-Resistance-Band-Lunge_Thighs_180.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
        
            );
    
       
  }  
// Flexion de rodilla ligera 

factory Ejercicio.sentadillaBulgaraConBarraRecta() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con barra",
        imagen: ['SentadillaBulgara2.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.zancadasConBarra() {
    return Ejercicio(
        nombre: "Zancadas con barra",
        imagen: ['Zancadas.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }  
  
  factory Ejercicio.sentadillaBulgaraConMancuernas() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con mancuernas",
        imagen: ['SentadillaBulgaraConMancuerna.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.zancadasConMancuernas() {
    return Ejercicio(
        nombre: "Zancadas con mancuernas",
        imagen: ['ZancadasConMancuerna.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Cuadriceps',}
            );
    
       
  }

  factory Ejercicio.extensionDeCuadricepsEnMaquina() {
    return Ejercicio(
        nombre: "Extensión de cuádriceps",
        imagen: ['ExtensionDeCuadricepsEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
      
            );
    
       
  }

  factory Ejercicio.prensaHorizontalEnMaquinaConPiesAbajo() {
    return Ejercicio(
        nombre: "Prensa horizontal en máquina con pies abajo",
        imagen: ['PrensaConPiesAbajo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
       
            );
    
       
  }

factory Ejercicio.prensaVerticalEnMaquina() {
    return Ejercicio(
        nombre: "Prensa vertical en máquina",
        imagen: ['PrensaEnMaquinaAUnaPierna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
       
            );
    
       
  }
factory Ejercicio.stepUpEnMultipower() {
    return Ejercicio(
        nombre: "Step up en multipower",
        imagen: ['StepUpEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
       
            );
    
       
  }

factory Ejercicio.zancadasEnMultipower() {
    return Ejercicio(
        nombre: "Zancadas en multipower",
        imagen: ['ZancadasEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
        
            );
    
       
  }

factory Ejercicio.sentadillaBulgaraEnMultipower() {
    return Ejercicio(
        nombre: "Sentadilla búlgara en multipower",
        imagen: ['SentadillaBulgaraEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
        
            );
    
       
  }

  factory Ejercicio.zancadasEnPolea() {
    return Ejercicio(
        nombre: "Zancadas en polea",
        imagen: ['33511101-Cable-Lunge_Thighs_small.png'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}


            );
    
       
  }

  factory Ejercicio.sentadillaSissy() {
    return Ejercicio(
        nombre: "Sentadilla sissy",
        imagen: ['SentadillaSisy.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','barra','mancuernas','elasticos'],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
        
            );
    
       
  }
  factory Ejercicio.extensionDeCuadricepsConBandaElasticaDePie() {
    return Ejercicio(
        nombre: "Extensión de cuádriceps con banda elástica de pie",
        imagen: ['ExtensionDeCuadricepsBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
      
            );
    
       
  }
factory Ejercicio.extensionDeCuadricepsConBandaElasticaSentado() {
    return Ejercicio(
        nombre: "Extensión de cuádriceps con banda elástica sentado",
        imagen: ['30081301-Resistance-Band-Leg-Extension-(female)_Thighs_180.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
         musculosTrabajados:{'Primario1':'Cuadriceps',}
      
            );
    
       
  }

  // factory Ejercicio.levantamientoDePiernaConBandaElastica() {
  //   return Ejercicio(
  //       nombre: "Levantamiento de pierna con banda elástica.",
  //       imagen: ['24191301-Resistance-Band-Leg-Lift_Thighs_360.gif',],
  //       descripcion: '',
  //       apuntescarga: Apuntescarga(
  //           semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
  //           semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
  //           semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
  //           semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
  //       apuntesreps: Apuntesreps(
  //           semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
  //           semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
  //           semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
  //           semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
  //       comentarios: Comentarios(
  //           semana1: 'null',
  //           semana2: 'null',
  //           semana3: 'null',
  //           semana4: 'null'),
  //       material: ['elasticos',],
  //        musculosTrabajados:{'Primario1':'Cuadriceps',}
      
  //           );
    
       
  // }
  
  // FEMORAL 
  
  // flexion de rodilla

factory Ejercicio.nordicCurl() {
    return Ejercicio(
        nombre: "Nordic curl",
        imagen: ['NordicCurl.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
          musculosTrabajados:{'Primario1':'Femoral',}
            );
    
       
  }
factory Ejercicio.femoralTumbadoConMancuerna() {
    return Ejercicio(
        nombre: "Femoral tumbado con mancuerna",
        imagen: ['FemoralTumbadoConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas','bancoplano'],
        principiantes:false,
          musculosTrabajados:{'Primario1':'Femoral',}
            );
    
       
  }

  

 factory Ejercicio.curlFemoralConToalla() {
    return Ejercicio(
        nombre: "Curl femoral con toalla",
        imagen: ['hamstringworkwithblanket.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','mancuernas','poleas','elasticos'],
        principiantes:false,
          musculosTrabajados:{'Primario1':'Femoral',}
            );
    
       
  }

factory Ejercicio.curlFemoralSentadoEnMaquina() {
    return Ejercicio(
        nombre: "Curl femoral sentado",
        imagen: ['CurlFemoralSentado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
          musculosTrabajados:{'Primario1':'Femoral',}
      
            );
    
       
  }

  

 factory Ejercicio.curlFemoralDePie() {
    return Ejercicio(
        nombre: "Curl femoral de pie",
        imagen: ['FemoralDePie.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
          musculosTrabajados:{'Primario1':'Femoral',}
        
            );
    
       
  }

factory Ejercicio.curlFemoralTumbado() {
    return Ejercicio(
        nombre: "Curl femoral tumbado",
        imagen: ['FemoralTumbado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
          musculosTrabajados:{'Primario1':'Femoral',}
        
            );
    
       
  }

factory Ejercicio.nordicCurlAsistidoEnPolea() {
    return Ejercicio(
        nombre: "Nordic curl asistido en polea",
        imagen: ['NordicCurlAsistidoEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea','poleaalta'],
          musculosTrabajados:{'Primario1':'Femoral',}
        
            );
    
       
  }
  factory Ejercicio.curlFemoralDePieConBandaElastica() {
    return Ejercicio(
        nombre: "Curl femoral de pie con banda elástica",
        imagen: ['24221301-Resistance-Band-Leg-Curl_Thighs_180.gif','FemoralDePieBandaElastica.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
          musculosTrabajados:{'Primario1':'Femoral',}
        
            );
    
       
  }

factory Ejercicio.curlFemoralTumbadoConBandaElastica() {
    return Ejercicio(
        nombre: "Curl femoral tumbado con banda elástica",
        imagen: ['CurlFemoralBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
          musculosTrabajados:{'Primario1':'Femoral',}
        
            );
    
       
  }
  // Extension de cadera rodilla sin flexion (rigida o semirigida)

 factory Ejercicio.buenosDias() {
    return Ejercicio(
        nombre: "Buenos días",
        imagen: ['BuenosDias.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }
  factory Ejercicio.pesoMuertoAUnaPierna() {
    return Ejercicio(
        nombre: "Peso muerto a una pierna",
        imagen: ['PesoMuertoAUnaPierna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }


  factory Ejercicio.pesoMuertoRumano() {
    return Ejercicio(
        nombre: "Peso muerto rumano",
        imagen: ['PesoMuertoRumano.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }
factory Ejercicio.pesoMuertoPiernasRigidasConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto piernas rígidas con mancuernas ",
        imagen: ['PesoMuertoPiernasRigidasConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }
  


  factory Ejercicio.pesoMuertoRumanoConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto rumano con mancuernas",
        imagen: ['PesoMuertoRumanoConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }

  factory Ejercicio.pesoMuertoAUnaPiernaConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto a una pierna con mancuernas",
        imagen: ['27501301-Dumbbell-Single-Leg-Deadlift-with-Wall-Support-(female)_Hips_360.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }
factory Ejercicio.hiperextensionesReversasEnMaquina() {
    return Ejercicio(
        nombre: "Hiperextensiones reversas en máquina ",
        imagen: ['HiperExtensionesReversasEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }

factory Ejercicio.hiperExtensionesReversas() {
    return Ejercicio(
        nombre: "Hiperextensiones reversas",
        imagen: ['HiperExtensionesReversas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','mancuernas','polea','bancoplano'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }
factory Ejercicio.pullThroughPiernasRigidasEnPolea() {
    return Ejercicio(
        nombre: "Pull through piernas rígidas en polea",
        imagen: ['PullThroughPiernasRigidasEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],

        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
            );
    
       
  }
factory Ejercicio.buenosDiasConBandaElastica() {
    return Ejercicio(
        nombre: "Buenos días con banda elástica",
        imagen: ['BuenosDiasBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
        
            );
    
       
  }
  factory Ejercicio.pesoMuertoRumanoConBandaElastica() {
    return Ejercicio(
        nombre: "Peso muerto rumano con banda elástica",
        imagen: ['PesoMuertoPiernasRigidasBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
        
            );
    
       
  }

factory Ejercicio.pesoMuertoAUnaPiernaConBandaElastica() {
    return Ejercicio(
        nombre: "Peso muerto rumano a una pierna con banda elástica",
        imagen: ['PesoMuertoRumanoAUnaPiernaBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
        
            );
    
       
  }

  factory Ejercicio.extensionDeCaderaPiernasRigidasConBandaElastica() {
    return Ejercicio(
        nombre: "Extensión de cadera piernas rígidas con banda elástica",
        imagen: ['09011301-Band-hip-extension_Hips_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'}
        
            );
    
       
  }
  // GLUTEO 

// Axial



factory Ejercicio.sentadillaSumo() {
    return Ejercicio(
        nombre: "Sentadilla sumo",
        imagen: ['SentadillaSumo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.pesoMuertoSumo() {
    return Ejercicio(
        nombre: "Peso muerto sumo",
        imagen: ['PesoMuertoSumo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.sentadillaSumoConMancuerna() {
    return Ejercicio(
        nombre: "Sentadilla sumo con mancuerna",
        imagen: ['SentadillaSumoConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }

factory Ejercicio.sentadillaSumoConMancuernaEntreBancos() {
    return Ejercicio(
        nombre: "Sentadilla sumo con mancuerna entre bancos",
        imagen: ['24311301-Dumbbell-Sumo-Squat-off-Benches-(female)_Hips_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}

            );
    
       
  }

  factory Ejercicio.sentadillaSumoEnMultipower() {
    return Ejercicio(
        nombre: "Sentadilla sumo en multipower",
        imagen: ['SentadillaSumoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }
  factory Ejercicio.sentadillaSumoEnPolea() {
    return Ejercicio(
        nombre: "Sentadilla sumo en polea",
        imagen: ['33541101-Cable-Front-Squat-(VERSION-2)_Thighs_small'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['polea'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.sentadillaSumoConBandasElasticas() {
    return Ejercicio(
        nombre: "Sentadilla sumo con bandas elásticas",
        imagen: ['SentadillasBandaElastica.gif'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }
  // Ejercicios Horizontales pesados

factory Ejercicio.hipThrust() {
    return Ejercicio(
        nombre: "Hip Thrust",
        imagen: ['HipThrust.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }


  factory Ejercicio.puenteDeGluteosConBarra() {
    return Ejercicio(
        nombre: "Puente de glúteos con barra",
        imagen: ['PuenteDeGluteos.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.hipThrustPesoCorporal() {
    return Ejercicio(
        nombre: "Hip Thrust con carga externa",
        imagen: ['HipThrustPesoCorporal.gif'],
        descripcion: 'Añade carga encima de ti, por ejemplo con una mochila',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas','polea'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }
factory Ejercicio.hipThrustEnMaquina() {
    return Ejercicio(
        nombre: "Hip Thrust en máquina",
        imagen: ['HipThrustEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.hipThrustConBandaElastica() {
    return Ejercicio(
        nombre: "Hip Thrust con banda elástica",
        imagen: ['27601301-Resistance-Band-Hip-Thrust_Hips_180.gif','HipThrustBandaElastica.gif'],
        descripcion: 'Puedes añadir mas carga si lo necesitas',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.hipThrustDeRodillasConBandaElastica() {
    return Ejercicio(
        nombre: "Hip Thrust de rodillas con banda elástica",
        imagen: ['32361301-Resistance-Band-Hip-Thrusts-on-Knees-(Female)_Hips_360.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

   // Ejercicios Horizontales ligeros 

   factory Ejercicio.hipThrustAUnaPierna() {
    return Ejercicio(
        nombre: "Hip thrust a una pierna",
        imagen: ['HipThrustAUnaPierna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }

  factory Ejercicio.sentadillaBulgaraEnfasisGluteo() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con barra (enfasis glúteo)",
        imagen: ['SentadillaBulgara.gif'],
        descripcion: 'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }

factory Ejercicio.frogHipThrust() {
    return Ejercicio(
        nombre: "Frog hip thrust",
        imagen: ['FrogHipThrust.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }

factory Ejercicio.puenteDeGluteosAUnaPierna() {
    return Ejercicio(
        nombre: "Puente de glúteos a una pierna",
        imagen: ['PuenteDeGluteosAUnaPierna.gif'],
        descripcion: 'Añade carga encima de ti, por ejemplo con una mochila',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.extensionDeGluteoAUnaPierna() {
    return Ejercicio(
        nombre: "Extensiones de glúteo a una pierna",
        imagen: ['ExtensionDeGluteoAUnaPierna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.patadaDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "Patada de glúteo",
        imagen: ['PatadaDeGluteoPesoCorporal.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteo() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con mancuernas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraConMancuerna.gif'],
        descripcion: 'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
factory Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteoGym() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con mancuernas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraConMancuerna.gif'],
        descripcion: 'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
  factory Ejercicio.hiperextensionesReversasEnMultipower() {
    return Ejercicio(
        nombre: "Hiperextensiones reversas en multipower",
        imagen: ['HiperextensionesReversasEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }

factory Ejercicio.patadaDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "Patada de glúteos en máquina",
        imagen: ['PatadaDeGluteoEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.patadaDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "Patada de glúteo en polea",
        imagen: ['PatadaDeGluteoEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.pullThroughEnPolea() {
    return Ejercicio(
        nombre: "Pull through en polea",
        imagen: ['PullThroughEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }
  factory Ejercicio.pullThroughConBandaElastica() {
    return Ejercicio(
        nombre: "Pull through con banda elástica",
        imagen: ['PullThroughBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }
  factory Ejercicio.extensionDeCaderaConBandaElastica() {
    return Ejercicio(
        nombre: "Extensión de cadera con banda elástica",
        imagen: ['ExtensionDeCaderaBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.patadaDeGluteoConBandaElastica() {
    return Ejercicio(
        nombre: "Patada de glúteo con banda elástica",
        imagen: ['PatadaDeGluteoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
        
            );
    
       
  }

  factory Ejercicio.sentadillaBulgaraConBandasElasticasEnfasisGluteo() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con bandas elásticas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraBandaElastica.gif'],
        descripcion: 'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'}
            );
    
       
  }
  // AbduccionDeGluteo


    factory Ejercicio.abduccionDeGluteoConBarra() {
    return Ejercicio(
        nombre: "Abducción De glúteo con barra",
        imagen: ['AbduccionDeGluteo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }
factory Ejercicio.abduccionDeGluteoConCaderaExtendida() {
    return Ejercicio(
        nombre: "Abducción de glúteo con cadera extendida",
        imagen: ['AbduccionDeGluteoPesoCorporal.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Gluteo',}
            );
    
       
  }

factory Ejercicio.abduccionDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "Abducción de glúteo con peso corporal",
        imagen: ['AbduccionDeGluteoPesoCorporal2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','mancuernas'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Gluteo',}
            );
    
       
  }

  factory Ejercicio.abduccionDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "Abducción de glúteo sentado en máquina",
        imagen: ['AbduccionesEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }

factory Ejercicio.abduccionesDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "Abducción de glúteo en máquina",
        imagen: ['AbduccionesMaquinaDeGluteo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Gluteo',}

       
            );
    
       
  }

 factory Ejercicio.abduccionDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "Abducción de glúteo en polea",
        imagen: ['08791301-Cable-hip-abduction-(version-2)_Hips_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }

  factory Ejercicio.abduccionDeGluteoConGomaElastica() {
    return Ejercicio(
        nombre: "Abducción de glúteo con banda elástica",
        imagen: ['AbduccionesDeGluteoBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }
factory Ejercicio.abduccionDeGluteoConGomaElasticaTumbado() {
    return Ejercicio(
        nombre: "Abducción de glúteo con banda elástica tumbado",
        imagen: ['24211301-Resistance-Band-Lying-Abduction_Hips_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }
factory Ejercicio.abduccionDeGluteoConGomaElasticaDeRodillas() {
    return Ejercicio(
        nombre: "Abducción de glúteo con banda elástica de rodillas",
        imagen: ['24181301-Resistance-Band-Bent-Leg-Side-Kick-(kneeling)_Hips_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }

  factory Ejercicio.pasosLateralesConBandaElastica() {
    return Ejercicio(
        nombre: "Pasos laterales con banda elástica",
        imagen: ['24601301-Resistance-Band-Lateral-Walk_Hips_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }
  // Aduccion de gluteo 
factory Ejercicio.aduccionDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "Aducciones de glúteo con peso corporal",
        imagen: ['AduccionDeGluteoPesoCorporal.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra','mancuernas'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Gluteo',}
            );}

        factory Ejercicio.aduccionesEnMaquina() {
    return Ejercicio(
        nombre: "Aductores en máquina sentado",
        imagen: ['AduccionesEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
         musculosTrabajados:{'Primario1':'Gluteo',}
    
            );
    
       
  }
factory Ejercicio.aduccionDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "Aducción de glúteo en polea",
        imagen: ['AduccionEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }
  factory Ejercicio.aduccionDeGluteoConGomaElastica() {
    return Ejercicio(
        nombre: "Aducción de glúteo con banda elástica",
        imagen: ['AduccionesBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Gluteo',}
        
            );
    
       
  }
  // TRAPECIO 


  factory Ejercicio.remoAlMentonConBarraRecta() {
    return Ejercicio(
        nombre: "Remo al mentón con barra ",
        imagen: ['RemoAlMenton.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Trapecio',}
            );
    
       
  }

factory Ejercicio.encogimientosDeTrapecioConBarra() {
    return Ejercicio(
        nombre: "Encogimientos de trapecio con barra ",
        imagen: ['00951301-Barbell-Shrug_Back_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra'],
        principiantes:false,
         musculosTrabajados:{'Primario1':'Trapecio',}
            );
    
       
  }
factory Ejercicio.encogimientosDeTrapecioConMancuerna() {
    return Ejercicio(
        nombre: "Encogimientos de trapecio con mancuerna ",
        imagen: ['EncogimientosDeTrapecioConMancuerna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
         musculosTrabajados:{'Primario1':'Trapecio',}
       
            );
    
       
  }

  factory Ejercicio.remoAlMentonConMancuerna() {
    return Ejercicio(
        nombre: "Remo al mentón con mancuerna",
        imagen: ['RemoAlMentonConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas'],
         musculosTrabajados:{'Primario1':'Trapecio',}
       
            );
    
       
  }

  factory Ejercicio.encogimientosDeTrapecioEnMultipower() {
    return Ejercicio(
        nombre: "Encogimientos de trapecio en multipower",
        imagen: ['EncogimientosDeTrapecioEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
         musculosTrabajados:{'Primario1':'Trapecio',}

       
            );
    
       
  }

  factory Ejercicio.remoAlMentonEnMultipower() {
    return Ejercicio(
        nombre: "Remo al mentón en multipower",
        imagen: ['RemoAlMentonEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Trapecio',}
       
            );
    
       
  }

  
  factory Ejercicio.remoAlMentonEnPolea() {
    return Ejercicio(
        nombre: "Remo al mentón en polea",
        imagen: ['RemoAlMentonEnPoleaBaja.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
        principiantes: false,
         musculosTrabajados:{'Primario1':'Trapecio',}
       
            );
    
       
  }

factory Ejercicio.encogimientosDeTrapecioEnPolea() {
    return Ejercicio(
        nombre: "Encogimientos de trapecio en polea",
        imagen: ['02201301-Cable-Shrug_Back_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleabaja'],
         musculosTrabajados:{'Primario1':'Trapecio',}
        
       
            );
    
       
  }
factory Ejercicio.encogimientosDeTrapecioConBandaElastica() {
    return Ejercicio(
        nombre: "Encogimientos de trapecio con banda elástica",
        imagen: ['EncomientosDeTrapecioBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Trapecio',}
       
            );
    
       
  }
factory Ejercicio.remoAlMentonConBandaElastica() {
    return Ejercicio(
        nombre: "Remo al mentón con banda elástica",
        imagen: ['RemoAlMentonBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
         musculosTrabajados:{'Primario1':'Trapecio',}
       
            );
    
       
  }
  // ABDOMINALES

// recto abdominal 
factory Ejercicio.ruedaAbdominalConBarra() {
    return Ejercicio(
        nombre: "Rueda abdominal con barra",
        imagen: ['RuedaAbdominalBarra.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Abs',}
            );
    
       
  }
factory Ejercicio.encogimientosAbdominales() {
    return Ejercicio(
        nombre: "Encogimientos abdominales",
        imagen: ['AbdominalesEnElSuelo.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','mancuernas','barra','elasticos'],
        musculosTrabajados:{'Primario1':'Abs',}
      
            );
    
       
  }

  factory Ejercicio.encogimientosAbdominalesColgado() {
    return Ejercicio(
        nombre: "Encogimientos abdominales colgado",
        imagen: ['AbdominalesColgado.gif','AbdominalesColgados.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Abs',}
            );
    
       
  }
factory Ejercicio.encogimientosAbdominalesEnFondos() {
    return Ejercicio(
        nombre: "Encogimientos abdominales en máquina de fondos",
        imagen: ['AbdominalesEnFondos.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','paralelas'],
        principiantes: false,
        musculosTrabajados:{'Primario1':'Abs',}
            );
    
       
  }

  factory Ejercicio.encogimientosAbdominalesEnMaquina() {
    return Ejercicio(
        nombre: "Encogimientos abdominales en máquina",
        imagen: ['AbdominalesEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Abs',}
      
            );
    
       
  }
 factory Ejercicio.absRoller() {
    return Ejercicio(
        nombre: "Abs roller",
        imagen: ['AbsRoller.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym',],
        musculosTrabajados:{'Primario1':'Abs',}
      
            );
    
       
  }
factory Ejercicio.encogimientosAbdominalesEnPolea() {
    return Ejercicio(
        nombre: "Encogimientos abdominales en polea",
        imagen: ['EncogimientosAbdominalesEnPolea.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','poleaalta'],
       principiantes: false,
       musculosTrabajados:{'Primario1':'Abs',}
            );
    
       
  }
  factory Ejercicio.ruedaAbdominal() {
    return Ejercicio(
        nombre: "Rueda abdominal",
        imagen: ['23321301-Wheel-Rollout-(female)_Waist_360.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
       principiantes: false,
       musculosTrabajados:{'Primario1':'Abs',}
            );
    
       
  }

factory Ejercicio.planchaAbdominal() {
    return Ejercicio(
        nombre: "Plancha abdominal",
        imagen: ['04651101-Front-Plank_Waist_small.png'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','barra','mancuernas','polea','elasticos'],

       musculosTrabajados:{'Primario1':'Abs',}
            );
    
       
  }
// rotacion de tronco 

factory Ejercicio.encogimientosAbdominalesColgadoConTorsion() {
    return Ejercicio(
        nombre: "Encogimientos abdominales colgado con rotación de tronco",
        imagen: ['OblicuosColgado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','dominadas'],
        musculosTrabajados:{'Primario1':'Abs',},
        principiantes: false,
            );
    
       
  }
  
  factory Ejercicio.encogimientosAbdominalesConTorsion() {
    return Ejercicio(
        nombre: "Encogimientos abdominales con rotación de tronco",
        imagen: ['AbdominalesConGiro.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','barra','mancuernas','elasticos'],
        musculosTrabajados:{'Primario1':'Abs',}
        
            );
    
       
  }

factory Ejercicio.planchaLateral() {
    return Ejercicio(
        nombre: "Plancha lateral",
        imagen: ['07151301-Side-Plank-m_Waist_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea','barra','mancuernas','elasticos'],
        musculosTrabajados:{'Primario1':'Abs',}
        
            );
    
       
  }

factory Ejercicio.lenador() {
    return Ejercicio(
        nombre: "Leñador",
        imagen: ['Leñador.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea',],
        musculosTrabajados:{'Primario1':'Abs',}
        
            );
    
       
  }

factory Ejercicio.pressPallof() {
    return Ejercicio(
        nombre: "Press pallof",
        imagen: ['PressPallof.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym','polea',],
        musculosTrabajados:{'Primario1':'Abs',}
        
            );
    
       
  }

factory Ejercicio.lenadorConElasticos() {
    return Ejercicio(
        nombre: "Leñador con elástico",
        imagen: ['LeñadorBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Abs',}
        
            );
    
       
  }

factory Ejercicio.pressPallofConBandaElastica() {
    return Ejercicio(
        nombre: "Press pallof con elástico",
        imagen: ['PressPallofBandaElastica.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos',],
        musculosTrabajados:{'Primario1':'Abs',}
        
            );
    
       
  }
// Gemelo Rodilla Extendida
factory Ejercicio.gemeloDePieConBarra() {
    return Ejercicio(
        nombre: "Gemelo de pie con barra recta",
        imagen: ['GemeloDePie.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}
factory Ejercicio.gemeloDePieConMancuerna() {
    return Ejercicio(
        nombre: "Gemelo de pie con mancuerna",
        imagen: ['04171301-Dumbbell-Standing-Calf-Raise_Calf_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}
factory Ejercicio.gemeloDePieConMancuernaAUnaPierna() {
    return Ejercicio(
        nombre: "Gemelo de pie con mancuerna a una pierna",
        imagen: ['04091301-Dumbbell-Single-Leg-Calf-Raise_Calves_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}
factory Ejercicio.gemeloDePie() {
    return Ejercicio(
        nombre: "Gemelo de pie",
        imagen: ['GemeloDePieEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gemelo',}
      
            );
}

factory Ejercicio.gemeloEnMaquina() {
    return Ejercicio(
        nombre: "Gemelo en máquina",
        imagen: ['GemeloEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gemelo',}
      
            );
}

factory Ejercicio.gemeloDePieEnMultipower() {
    return Ejercicio(
        nombre: "Gemelo de pie en multipower",
        imagen: ['GemeloDePieEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
       principiantes:false,
       musculosTrabajados:{'Primario1':'Gemelo',}
            );
}


factory Ejercicio.gemeloEnPrensaInclinada() {
    return Ejercicio(
        nombre: "Gemelo en prensa inclinada",
        imagen: ['GemeloEnPrensa2.gif','GemeloEnPrensa.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gemelo',}
      
            );
}
factory Ejercicio.gemeloDePieConCargaExterna() {
    return Ejercicio(
        nombre: "Gemelo de pie con carga externa",
        imagen: ['GemeloDePie.gif'],
        descripcion: 'Hazlo con una carga externa, por ejemplo una mochila o una garrafa de agua',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['comodin'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}

factory Ejercicio.gemeloDePieConBandasElasticas() {
    return Ejercicio(
        nombre: "Gemelo de pie con banda elástica",
        imagen: ['GemeloBandaElastica.gif','GemeloBandaElastica2.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gemelo',}
       
            );
}
factory Ejercicio.gemeloSentadoConBandasElasticas() {
    return Ejercicio(
        nombre: "Gemelo sentado con banda elástica",
        imagen: ['24251301-Resistance-Band-Calf-Raise_Calves_180.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gemelo',}
       
            );
}
factory Ejercicio.gemeloDePieConBandasElasticasAUnaPierna() {
    return Ejercicio(
        nombre: "Gemelo de pie a una pierna con banda elástica",
        imagen: ['GemeloDePieAUnaPierna.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['elasticos'],
        musculosTrabajados:{'Primario1':'Gemelo',}
       
            );
}
// Gemelo Rodilla Flexionada 


factory Ejercicio.gemeloSentadoConBarra() {
    return Ejercicio(
        nombre: "Gemelo sentado con barra recta",
        imagen: ['GemloSentado.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['barra'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}

factory Ejercicio.gemeloSentadoConMancuernas() {
    return Ejercicio(
        nombre: "Gemelo sentado con mancuernas",
        imagen: ['GemeloSentadoConMancuernas.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['mancuernas'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}
  
  factory Ejercicio.gemeloSentado() {
    return Ejercicio(
        nombre: "Gemelo sentado",
        imagen: ['GemeloSentadoEnMaquina.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        musculosTrabajados:{'Primario1':'Gemelo',}
        
            );
}
factory Ejercicio.gemeloSentadoEnMultipower() {
    return Ejercicio(
        nombre: "Gemelo sentado en multipower",
        imagen: ['GemeloSentadoEnMultipower.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
}
 factory Ejercicio.gemeloSentadoConCargaExterna() {
    return Ejercicio(
        nombre: "Gemelo sentado con carga externa",
        imagen: ['GemloSentado.gif'],
        descripcion: 'Hazlo con una carga externa, por ejemplo, con una mochila encima de tus piernas.',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['comodin'],
        principiantes:false,
        musculosTrabajados:{'Primario1':'Gemelo',}
            );
} 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  factory Ejercicio.pressInclinadoConBarraSerieDescendente() {
    return Ejercicio(
        nombre: "Press inclinado con barra (Serie descendente doble)",
        imagen: ['PressBanca.gif'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'Malas Sensaciones,dolor en los hombros',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
         material: ['gym']
            );
  }
  factory Ejercicio.pressInclinadoConBarraDescansoPausa() {
    return Ejercicio(
        nombre: 'Press inclinado con barra (Descanso-Pausa simple de 20")',
        imagen: ['PressInclinadoConBarra.jpg'],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'Malas Sensaciones,dolor en los hombros',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym']
            );
  }
  
  
  
//    factory Ejercicio.bandasElasticasElevacionLateral() {
//     return Ejercicio(
//         nombre: "Elevacion lateral con bandas elasticas",
//         imagen: ['ElevacionLateralConMancuernas.jpg'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//       material: ['gym','elasticos']
//             );
        
//   }
  
  
//   factory Ejercicio.elevacionLateralenPolea() {
//     return Ejercicio(
//         nombre: "Elevacion lateral en polea",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['gym']  
//             );
//   }
  
  
//   factory Ejercicio.bandasElasticasPajaroPosterior() {
//     return Ejercicio(
//         nombre: "Pajaro posterior con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos']
//             );
//   }
//   factory Ejercicio.bandasElasticasAbduccionHorizontal() {
//     return Ejercicio(
//         nombre: "Abducciones horizontales con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos']
//             );
//   }
 
  
 
//   factory Ejercicio.curlDeBicepsEnPoleabajaConBarraRecta() {
//     return Ejercicio(
//         nombre: "Press plano en maquina",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['gym']    
//             );
//   }
  
//    factory Ejercicio.bandasElasticasCurlConcentrado() {
//     return Ejercicio(
//         nombre: "Curl concentrado con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos']
            
            
//             );
//   }
//   factory Ejercicio.curlDeBicepsEnPoleaAlta() {
//     return Ejercicio(
//         nombre: "Curl de biceps en polea alta",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//          material: ['gym']   
//             );
//   }

//   factory Ejercicio.bandasElasticasCurlDeArrastre() {
//     return Ejercicio(
//         nombre: "Curl de arrastre con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos']    
//             );
//   }
 
   factory Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasSAconPressFrances() {
    return Ejercicio(
        nombre: "Serie Alterna Curl de biceps en banco inclinado con mancuernas y press frances",
        imagen: ['PressBanca.gif','PressBanca.gif',],
        descripcion: '',
        apuntescarga: Apuntescarga(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        apuntesreps: Apuntesreps(
            semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
            semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no']),
        comentarios: Comentarios(
            semana1: 'null',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym']
         
            );
  }
  
//   factory Ejercicio.flexionesCerradasConBandasElasticas() {
//     return Ejercicio(
//         nombre: "Flexiones Cerradas con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
            
//         material: ['elasticos']   
//             );
//   }
//   factory Ejercicio.floorPress() {
//     return Ejercicio(
//         nombre: "Press plano en maquina",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['gym']    
//             );
//   }
  
//    factory Ejercicio.bandasElasticasExtensionDeTriceps() {
//     return Ejercicio(
//         nombre: "Extension de triceps con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos']    
//             );
//   }
  
//    factory Ejercicio.bandasElasticasPressFrances() {
//     return Ejercicio(
//         nombre: "Press frances con bandas elasticas",
//         imagen: ['PressBanca.gif',],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['elasticos']    
//             );
//   }
  
//  factory Ejercicio.bandaselasticasPatadadeTriceps() {
//     return Ejercicio(
//         nombre: " Patada de triceps con banda elastica",
//         imagen: ['PatadaDeTricepsConMancuerna.jpg',],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//       material: ['elasticos']
//             );
//   }
   
  
//   factory Ejercicio.jalonDorsalMaquinaDivergente() {
//     return Ejercicio(
//         nombre: "Jalon dorsal en maquina divergente",
//         imagen: ['Abdominales.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         comentarios: Comentarios(
//             semana1: 'null',
//             semana2: 'null',
//             semana3: 'null',
//             semana4: 'null'),
//         material: ['gym','elasticos']
//             );
    
       
//   }
  


  
  Ejercicio.fromJson(Map<String, dynamic> json) {
    nombre = json['nombre'];
    imagen = json['imagen'] != null ?
     json['imagen'].cast<String>() : null;
    descripcion = json['descripcion'];
    apuntescarga = json['apuntescarga'] != null
        ? new Apuntescarga.fromJson(json['apuntescarga'])
        : null;
    apuntesreps = json['apuntesreps'] != null
        ? new Apuntesreps.fromJson(json['apuntesreps'])
        : null;
    comentarios = json['comentarios'] != null
        ? new Comentarios.fromJson(json['comentarios'])
        : null;
    // musculosTrabajados = json['musculosTrabajados'];
  //  material = json['material'] != null ?
  //    json['material'].cast<String>() : null;
   
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombre'] = this.nombre;
    data['imagen'] = this.imagen;
    data['descripcion'] = this.descripcion;
    if (this.apuntescarga != null) {
      data['apuntescarga'] = this.apuntescarga.toJson();
    }
    if (this.apuntesreps != null) {
      data['apuntesreps'] = this.apuntesreps.toJson();
    }
    if (this.comentarios != null) {
      data['comentarios'] = this.comentarios.toJson();
    }
    // data['musculosTrabajados'] = this.musculosTrabajados;
  
    // data['material'] = this.material;

    return data;
  }
}

class Comentarios {
  // static Apuntescarga apuntesIniciales = Apuntescarga(semana1: ['no','78','no','no','no','no','no'],semana2:['no','no','no','no','no','no','no'],semana3:['no','no','no','no','no','no','no'],semana4: ['no','no','no','no','no','no','no']  );
  String semana1;
  String semana2;
  String semana3;
  String semana4;

  Comentarios({this.semana1, this.semana2, this.semana3, this.semana4});

  Comentarios.fromJson(Map<String, dynamic> json) {
    semana1 = json['semana 1'];
    semana2 = json['semana 2'];
    semana3 = json['semana 3'];
    semana4 = json['semana 4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['semana 1'] = this.semana1;
    data['semana 2'] = this.semana2;
    data['semana 3'] = this.semana3;
    data['semana 4'] = this.semana4;
    return data;
  }
}

class Apuntescarga {
  // static Apuntescarga apuntesIniciales = Apuntescarga(semana1: ['no','78','no','no','no','no','no'],semana2:['no','no','no','no','no','no','no'],semana3:['no','no','no','no','no','no','no'],semana4: ['no','no','no','no','no','no','no']  );
  List<String> semana1;
  List<String> semana2;
  List<String> semana3;
  List<String> semana4;

  Apuntescarga({this.semana1, this.semana2, this.semana3, this.semana4});

  Apuntescarga.fromJson(Map<String, dynamic> json) {
    semana1 = json['semana 1'].cast<String>();
    semana2 = json['semana 2'].cast<String>();
    semana3 = json['semana 3'].cast<String>();
    semana4 = json['semana 4'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['semana 1'] = this.semana1;
    data['semana 2'] = this.semana2;
    data['semana 3'] = this.semana3;
    data['semana 4'] = this.semana4;
    return data;
  }
}

// final Apuntesreps  _apuntesInicialesReps = Apuntesreps.apuntesIniciales;
class Apuntesreps {
  // static Apuntesreps apuntesIniciales = Apuntesreps(semana1: ['no','5','no','3','no','no','no'],semana2:['1','no','no','no','no','no','no'],semana3:['no','no','no','no','no','no','no'],semana4: ['no','no','no','no','no','no','no']  );
  List<String> semana1;
  List<String> semana2;
  List<String> semana3;
  List<String> semana4;

  Apuntesreps({this.semana1, this.semana2, this.semana3, this.semana4});

  Apuntesreps.fromJson(Map<String, dynamic> json) {
    semana1 = json['semana 1'].cast<String>();
    semana2 = json['semana 2'].cast<String>();
    semana3 = json['semana 3'].cast<String>();
    semana4 = json['semana 4'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['semana 1'] = this.semana1;
    data['semana 2'] = this.semana2;
    data['semana 3'] = this.semana3;
    data['semana 4'] = this.semana4;
    return data;
  }
}


