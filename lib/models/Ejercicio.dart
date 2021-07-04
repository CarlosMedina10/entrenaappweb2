import 'package:flutter/foundation.dart';
import 'package:easy_localization/easy_localization.dart';

class Ejercicio {
  @required
  String nombre;
  @required
  String nombreEs;
  @required
  List<String> imagen;
  @required
  String descripcion;

  Apuntescarga apuntescarga;

  Apuntesreps apuntesreps;
  @required
  Comentarios comentarios;
  @required
  List<String> material;
  bool principiantes;
  int patron;
  // @required
  Map<String, dynamic> musculosTrabajados;

  Ejercicio(
      {this.nombre,
      this.nombreEs,
      this.imagen,
      this.descripcion,
      this.apuntescarga,
      this.apuntesreps,
      this.comentarios,
      this.material,
      this.principiantes = true,
      this.patron,
      this.musculosTrabajados});

  // Comodin

  // PECHO

  // Empuje Plano

  factory Ejercicio.pressBanca() {
    return Ejercicio(
        nombre: "_Ejercicios.press_banca".tr(),
        nombreEs: "Press de banca",
        imagen: ['PressBanca.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
  factory Ejercicio.pressPlanoConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.press_plano_con_mancuernas".tr(),
        nombreEs: "Press plano con mancuernas",
        imagen: ['PressPlanoConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.pressPlanoConMancuernasAgarreNeutro() {
    return Ejercicio(
      nombre:  "_Ejercicios.press_plano_con_mancuernas_agarre_neutro".tr(),
        nombreEs: "Press plano con mancuernas agarre neutro",
        imagen: ['PressPlanoConMancuernasAgarreNeutro.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.fondosDePechoEnBarrasParalelas() {
    return Ejercicio(
      nombre: "_Ejercicios.fondos_de_pecho_en_barras_paralelas".tr(),
        nombreEs: "Fondos de pecho en barras paralelas",
        imagen: ['FondosDePecho.gif'],
        descripcion: 'Si vas sobrado de peso puedes lastrarte.',
        material: ['paralelas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.fondosDePechoEnBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.fondos_de_pecho_en_barra".tr(),
        nombreEs: "Fondos de pecho en barra",
        imagen: ['FondosParaPechoEnBarra.gif'],
        descripcion: '',
        material: ['paralelas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.pressPlanoEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.press_plano_en_multipower".tr(),
        nombreEs: "Press plano en multipower",
        imagen: ['PressPlanoEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.pressHorizontalEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.press_horizontal_sentado_en_máquina".tr(),
        nombreEs: "Press Horizontal sentado en máquina",
        imagen: ['PressVerticalEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.pressHorizontalEnMaquinaAgarreNeutro() {
    return Ejercicio(
        nombre: "_Ejercicios.press_horizontal_sentado_en_máquina_agarre_neutro".tr(),
        nombreEs: "Press horizontal sentado en máquina agarre neutro",
        imagen: ['PressVerticalEnMaquinaAgarreNeutro.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.flexionesPlanas() {
    return Ejercicio(
        nombre: "_Ejercicios.flexiones_planas".tr(),
        nombreEs: "Flexiones planas",
        imagen: ['FlexionesPlanas.gif'],
        descripcion: 'Puedes añadir una carga externa',
        material: [
          'polea',
          'barra',
          'mancuernas',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.flexionesPlanasConElasticos() {
    return Ejercicio(
       nombre: "_Ejercicios.flexiones_planas_con_banda_elástica".tr(),
        nombreEs: "Flexiones planas con banda elástica",
        imagen: ['FlexionesBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }

  factory Ejercicio.pressVerticalConElasticos() {
    return Ejercicio(
       nombre: "_Ejercicios.press_vertical_con_bandas_elásticas".tr(),
        nombreEs: "Press vertical con bandas elásticas",
        imagen: ['PressVerticalBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
  factory Ejercicio.pressPlanoConBandasElasticas() {
    return Ejercicio(
      nombre: "_Ejercicios.press_plano_con_bandas_elásticas".tr(),
        nombreEs: "Press plano con bandas elásticas",
        imagen: ['PressPlanoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos', 'bancoplano'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
factory Ejercicio.pressPlanoConkettlebel() {
    return Ejercicio(
       nombre: "_Ejercicios.press_plano_con_kettlebel".tr(),
        nombreEs: "Press plano con kettlebel",
        imagen: ['PressConKetbell.gif'],
        descripcion: '',
        material: ['kettlebell'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
  factory Ejercicio.pressPlanoConkettlebelRangoExtenso() {
    return Ejercicio(
        nombre: "_Ejercicios.press_plano_con_kettlebel_torso_inclinado".tr(),
        nombreEs: "Press plano con kettlebel torso inclinado",
        imagen: ['PressConKetbellRangoExtenso.gif'],
        descripcion: '',
        material: ['kettlebell'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
// Empuje Inclinado

  factory Ejercicio.pressInclinadoConBarra() {
    return Ejercicio(
       nombre: "_Ejercicios.press_inclinado_con_barra".tr(),
        nombreEs: "Press inclinado con barra",
        imagen: ['PressInclinado.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }

  factory Ejercicio.pressInclinadoConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.press_inclinado_con_mancuernas".tr(),
        nombreEs: "Press inclinado con mancuernas",
        imagen: ['PressInclinadoConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }
  factory Ejercicio.flexionesDeclinadas() {
    return Ejercicio(
        nombre: "_Ejercicios.flexiones_declinadas".tr(),
        nombreEs: "Flexiones declinadas",
        imagen: ['FlexionesDeclinadas.gif'],
        descripcion: 'Puedes añadir una carga externa',
        material: ['barra', 'polea', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }

  factory Ejercicio.pressInclinadoConvergente() {
    return Ejercicio(
        nombre: "_Ejercicios.press_inclinado_convergente".tr(),
        nombreEs: "Press inclinado convergente",
        imagen: ['PressInclinadoConvergente.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }

  factory Ejercicio.pressInclinadoEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.press_inclinado_en_máquina".tr(),
        nombreEs: "Press inclinado en máquina",
        imagen: ['PressInclinadoEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }

  factory Ejercicio.pressInclinadoEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.press_inclinado_en_multipower".tr(),
        nombreEs: "Press inclinado en multipower",
        imagen: ['PressInclinadoEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }
  factory Ejercicio.pressInclinadoConBandasElasticas() {
    return Ejercicio(
   nombre: "_Ejercicios.press_inclinado_con_bandas_elásticas".tr(),
        nombreEs: "Press inclinado con bandas elásticas",
        imagen: ['PressInclinadoBandaElastica.gif'],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }
 factory Ejercicio.flexionesDeclinadasEnTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.flexiones_declinadas_en_trx".tr(),
        nombreEs: "Flexiones declinadas en TRX",
        imagen: ['FlexionesEnTRX.gif'],
        descripcion: 'Puedes añadir una carga externa',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 2);
  }
// Empuje Declinado
  factory Ejercicio.pressDeclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.press_declinado".tr(),
        nombreEs: "Press declinado",
        imagen: ['PressDeclinado.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 3);
  }

  factory Ejercicio.pressDeclinadoConMancuernas() {
    return Ejercicio(
         nombre: "_Ejercicios.press_declinado_con_mancuernas".tr(),
        nombreEs: "Press declinado con mancuernas",
        imagen: ['03011301-Dumbbell-Decline-Bench-Press_Chest_180.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 3);
  }

  factory Ejercicio.pressDeclinadoEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.press_declinado_en_máquina".tr(),
        nombreEs: "Press declinado en máquina",
        imagen: ['PressDeclinadoEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 3);
  }
  factory Ejercicio.pressDeclinadoEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.press_declinado_en_multipower".tr(),
        nombreEs: "Press declinado en multipower",
        imagen: ['PressDeclinadoEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 3);
  }

  factory Ejercicio.flexionesInclinadas() {
    return Ejercicio(
      nombre: "_Ejercicios.flexiones_inclinadas".tr(),
        nombreEs: "Flexiones inclinadas",
        imagen: ['FlexionesInclinadas.gif'],
        descripcion: 'Puedes añadir una carga externa',
        material: ['barra', 'polea', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 3);
  }
  
  factory Ejercicio.flexionesInclinadasEnTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.flexiones_inclinadas_en_trx".tr(),
        nombreEs: "Flexiones inclinadas en TRX",
        imagen: ['11161301-Suspender-Incline-Push-up_Chest_180.gif'],
        descripcion: 'Puedes añadir una carga externa',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 3);
  }

// Aduccion Horizontal plana para barra recta lo solucionaremos con un ej comodin (aperturas con carga externa)
  factory Ejercicio.flexionesPliometricas() {
    return Ejercicio(
      nombre: "_Ejercicios.flexiones_archer".tr(),
        nombreEs: "Flexiones archer",
        imagen: ['FlexionesAlternas.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }
  factory Ejercicio.wipersIsometricos() {
    return Ejercicio(
      nombre: "_Ejercicios.wipers_isométricos".tr(),
        nombreEs: "Wipers isométricos",
        imagen: ['05001301-Isometric-Wipers_Chest_360.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }
  factory Ejercicio.aperturasPlanasConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.aperturas_planas_con_mancuernas".tr(),
        nombreEs: "Aperturas planas con mancuernas",
        imagen: ['AperturasPlanasConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }

  factory Ejercicio.crucesEnMaquina() {
    return Ejercicio(
       nombre: "_Ejercicios.cruces_en_máquina".tr(),
        nombreEs: "Cruces en máquina",
        imagen: ['CrucesEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }

  factory Ejercicio.peckDeck() {
    return Ejercicio(
      nombre: "_Ejercicios.peck_deck".tr(),
        nombreEs: "Peck deck",
        imagen: ['PeckDeck.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }
  factory Ejercicio.crucesEnPoleaAAlturaMedia() {
    return Ejercicio(
      nombre: "_Ejercicios.cruces_en_polea_a_altura_central".tr(),
        nombreEs: "Cruces en polea a altura central",
        imagen: ['CrucesEnPoleaAAlturaMedia.gif'],
        descripcion: '',
        material: [
          'gym',
          'polea',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }
  factory Ejercicio.aperturasPlanasEnPolea() {
    return Ejercicio(
      nombre: "_Ejercicios.aperturas_planas_en_cruce_de_poleas".tr(),
        nombreEs: "Aperturas planas en cruce de poleas",
        imagen: ['AperturasPlanasEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }
  factory Ejercicio.crucesConElasticoAAlturaMedia() {
    return Ejercicio(
      nombre: "_Ejercicios.cruces_con_elásticos_a_altura_media".tr(),
        nombreEs: "Cruces con elásticos a altura media",
        imagen: ['CrucesAlturaMediaBandaElastica.gif'],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }

  factory Ejercicio.kettlebellPlyoPressUp() {
    return Ejercicio(
       nombre: "_Ejercicios.kettlebell_plyo_press-up".tr(),
        nombreEs: "Kettlebell Plyo Press-Up",
        imagen: ['FlexionesPliometricasConKetbell.gif'],
        descripcion: '',
        material: [
          'kettlebell',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);
  }

// Aduccion Horizontal inclinada para barra recta lo solucionaremos con un ej comodin (aperturas con carga externa)

  factory Ejercicio.aperturasInclinadasConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.aperturas_inclinadas_con_mancuernas".tr(),
        nombreEs: "Aperturas inclinadas con mancuernas",
        imagen: ['AperturasBayasiConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
        },
        patron: 5);
  }
  factory Ejercicio.aperturasInclinadasEnCruceDePoleas() {
    return Ejercicio(
      nombre: "_Ejercicios.aperturas_inclinadas_en_cruce_de_poleas".tr(),
        nombreEs: "Aperturas inclinadas en cruce de poleas",
        imagen: ['AperturasInclinadasEnCruceDePoleas.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
        },
        patron: 5);
  }

  factory Ejercicio.crucesEnPoleaDesdeAbajo() {
    return Ejercicio(
      nombre: "_Ejercicios.cruces_en_polea_desde_abajo".tr(),
        nombreEs: "Cruces en polea desde abajo",
        imagen: ['CrucesEnPoleaDesdeAbajo.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
        },
        patron: 5);
  }

  factory Ejercicio.crucesConElasticosDesdeAbajo() {
    return Ejercicio(
      nombre: "_Ejercicios.cruces_con_elásticos_desde_abajo".tr(),
        nombreEs: "Cruces con elásticos desde abajo",
        imagen: ['CrucesDesdeAbajoBandaElastica.gif'],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
        },
        patron: 5);
  }
// Aduccion de hombro + aduccion horizontal
  factory Ejercicio.aperturasDeclinadasConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.aperturas_declinadas_con_mancuernas".tr(),
        nombreEs: "Aperturas declinadas con mancuernas",
        imagen: ['03021301-Dumbbell-Decline-Fly_Chest_180.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 6);
  }
  factory Ejercicio.aperturasDeclinadasEnPolea() {
    return Ejercicio(
      nombre: "_Ejercicios.aperturas_declinadas_en_polea".tr(),
        nombreEs: "Aperturas declinadas en polea",
        imagen: ['01581301-Cable-Decline-Fly_Chest_180.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 6);
  }
  factory Ejercicio.crucesEnPoleaDesdeArriba() {
    return Ejercicio(
      nombre: "_Ejercicios.cruces_en_polea_desde_arriba".tr(),
        nombreEs: "Cruces en polea desde arriba",
        imagen: ['CrucesEnPoleaDesdeArriba.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 6);
  }
  factory Ejercicio.crucesConElasticosDesdeArriba() {
    return Ejercicio(
      nombre: "_Ejercicios.cruces_con_elásticos_desde_arriba".tr(),
        nombreEs: "Cruces con elásticos desde arriba",
        imagen: ['CrucesEnPoleaDesdeArribaBandaElastica.gif'],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 6);
  }

  factory Ejercicio.crucesEnTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.cruces_en_trx".tr(),
        nombreEs: "Cruces en TRX",
        imagen: ['10741301-Suspender-Fly_Chest_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 6);
  }
// flexion de hombro

  factory Ejercicio.pullOverBarraRecta() {
    return Ejercicio(
       nombre: "_Ejercicios.pull_over_con_barra_recta".tr(),
        nombreEs: "Pull over con barra recta",
        imagen: ['PullOver.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior'
        },
        patron: 11);
  }
  factory Ejercicio.pullOverConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.pull_over_con_mancuerna".tr(),
        nombreEs: "Pull over con mancuerna",
        imagen: ['PullOverConMancuerna.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior'
        },
        patron: 11);
  }
  factory Ejercicio.pullOverPoleaAlta() {
    return Ejercicio(
      nombre: "_Ejercicios.pull_over_en_polea_alta".tr(),
        nombreEs: "Pull over en polea alta",
        imagen: ['PullOverEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior'
        },
        patron: 11);
  }

  factory Ejercicio.pullOverPoleaAltaTumbadoEnBancoInclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.pull_over_en_polea_alta_tumbado_en_banco_inclinado".tr(),
        nombreEs: "Pull over en polea alta tumbado en banco inclinado",
        imagen: ['PullOverPoleaAltaEnBancoInclinado.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior'
        },
        patron: 11);
  }
  factory Ejercicio.pullOverPoleaBajaTumbado() {
    return Ejercicio(
       nombre: "_Ejercicios.pull_over_en_polea_baja_tumbado".tr(),
        nombreEs: "Pull over en polea baja tumbado",
        imagen: ['PullOverTumbadoEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior'
        },
        patron: 11);
  }
  // ESPALDA

  // Visagra de cadera

  factory Ejercicio.rackPull() {
    return Ejercicio(
      nombre: "_Ejercicios.rack_pull".tr(),
        nombreEs: "Rack Pull",
        imagen: ['RackPull.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }

  factory Ejercicio.pesoMuerto() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto".tr(),
        nombreEs: "Peso Muerto",
        imagen: ['PesoMuerto.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }

  factory Ejercicio.pesoMuertoHexagonal() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_con_barra_hexagonal".tr(),
        nombreEs: "Peso Muerto con barra hexagonal",
        imagen: ['08111301-Trap-Bar-Deadlift_Thighs_180.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }
  factory Ejercicio.pesoMuertoAgarreSnatch() {
    return Ejercicio(
       nombre: "_Ejercicios.peso_muerto_agarre_snatch".tr(),
        nombreEs: "Peso Muerto agarre snatch",
        imagen: ['PesoMuertoAgarreAncho.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }
  factory Ejercicio.pesoMuertoConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_con_mancuernas".tr(),
        nombreEs: "Peso muerto con mancuernas",
        imagen: ['PesoMuertoConMancuernas.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }
  factory Ejercicio.pesoMuertoEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_en_multipower".tr(),
        nombreEs: "Peso muerto en multipower",
        imagen: ['PesoMuertoEnMultipowe.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }

  factory Ejercicio.pesoMuertoEnPolea() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_en_polea".tr(),
        nombreEs: "Peso Muerto en polea",
        imagen: ['01571301-Cable-Deadlift_Thighs_180.gif'],
        descripcion: '',
        material: ['polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }

  factory Ejercicio.pesoMuertoBandasElasticas() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_con_bandas_elásticas".tr(),
        nombreEs: "Peso Muerto con bandas elásticas",
        imagen: ['PesoMuertoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Femoral',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Hombro Posterior'
        },
        patron: 7);
  }
// Extension de hombro

  factory Ejercicio.remoAUnaManoConBarra() {
    return Ejercicio(
       nombre: "_Ejercicios.remo_a_una_mano_con_barra".tr(),
        nombreEs: "Remo a una mano con barra",
        imagen: ['RemoAUnaMano.gif'],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.remoSupinoConBarra() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_supino_con_barra".tr(),
        nombreEs: "Remo supino con barra",
        imagen: ['RemoSupino.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnPuntaAgarreCerrado() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_punta_agarre_cerrado".tr(),
        nombreEs: "Remo en punta agarre cerrado",
        imagen: ['RemoEnPuntaAgarreCerrado.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.remoConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_mancuerna".tr(),
        nombreEs: "Remo con mancuerna",
        imagen: ['RemoConMancuerna.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.sealRow() {
    return Ejercicio(
      nombre: "_Ejercicios.seal_row".tr(),
        nombreEs: "Seal row",
        imagen: [
          '33201101-Dumbbell-Hammer-Grip-Incline-Bench-Two-Arm-Row_Back_small.png'
        ],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoSupinoConMancuernasEnBancoInclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_supino_con_mancuernas_con_apoyo_en_banco_inclinado".tr(),
        nombreEs: "Remo supino con mancuernas con apoyo en banco inclinado",
        imagen: ['SealRowConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoNeutroConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_neutro_con_mancuernas_de_pie".tr(),
        nombreEs: "Remo neutro con mancuernas de pie",
        imagen: ['02931301-Dumbbell-Bent-Over-Row_Back-FIX_180.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.remoNeutroSupinacionConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_mancuernas_con_neutrosupinación_de_pie".tr(),
        nombreEs: "Remo con mancuernas con neutrosupinación de pie",
        imagen: [
          '23251301-Dumbbell-Pronated-to-Neutral-Grip-Row-(female)_Back_180.gif'
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.jalonEnMaquinaAgarreSupino() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_dorsal_en_máquina_agarre_supino".tr(),
        nombreEs: "Jalón dorsal en máquina agarre supino",
        imagen: ['JalonDorsalEnMaquinaAgarreSupino.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnMaquinaAgarreNeutro() {
    return Ejercicio(
       nombre: "_Ejercicios.remo_en_máquina_agarre_neutro".tr(),
        nombreEs: "Remo en máquina agarre neutro",
        imagen: ['RemoEnMaquinaAgarreNeutro.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnMaquinaAgarreSupino() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_máquina_agarre_supino".tr(),
        nombreEs: "Remo en máquina agarre supino",
        imagen: ['RemoEnMaquinaAgarreSupino.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoSupinoEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_supino_en_multipower".tr(),
        nombreEs: "Remo supino en multipower",
        imagen: ['RemoSupinoEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.remoEnPoleaBajaAUnaMano() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_polea_a_una_mano".tr(),
        nombreEs: "Remo en polea a una mano",
        imagen: ['RemoEnPoleaAUnaMano.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnPoleaBajaSentadoAUnaMano() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_polea_baja_sentado_a_una_mano".tr(),
        nombreEs: "Remo en polea baja sentado a una mano",
        imagen: ['RemoAUnaManoEnPoleaBaja.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnPoleaBajaSentadoAgarreSupino() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_polea_baja_sentado_agarre_supino".tr(),
        nombreEs: "Remo en polea baja sentado agarre supino",
        imagen: ['RemoEnPoleaAgarreSupino.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnPoleaBajaSentadoAgarreNeutroCerrado() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_polea_baja_sentado_agarre_neutro_cerrado".tr(),
        nombreEs: "Remo en polea baja sentado agarre neutro cerrado",
        imagen: ['RemoEnPoleaAgarreNeutroCerrado.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.jalonDorsalAgarreSupino() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_dorsal_agarre_supino".tr(),
        nombreEs: "Jalón dorsal agarre supino",
        imagen: ['JalonDorsalSupino.gif'],
        descripcion: '',
        material: [
          'gym',
          'polea',
          'poleaalta',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.jalonDorsalAgarreCerrado() {
    return Ejercicio(
       nombre: "_Ejercicios.jalón_dorsal_agarre_neutro_cerrado".tr(),
        nombreEs: "Jalón dorsal agarre neutro cerrado",
        imagen: ['JalonDorsalEnPoleaAgarreCerrado.gif'],
        descripcion: '',
        material: [
          'gym',
          'polea',
          'poleaalta',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.jalonDorsalAUnaMano() {
    return Ejercicio(
       nombre: "_Ejercicios.jalón_dorsal_en_polea_a_una_mano".tr(),
        nombreEs: "Jalón dorsal en polea a una mano",
        imagen: ['JalonEnPoleaAUnaMano.gif'],
        descripcion: '',
        material: [
          'gym',
          'polea',
          'poleaalta',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.dominadasAgarreNeutroCerrado() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_con_agarre_neutro".tr(),
        nombreEs: "Dominadas con agarre neutro cerrado",
        imagen: ['DominadasCerradas.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.dominadasAsistidasAgarreNeutroCerrado() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_asistidas_con_agarre_neutro_cerrado".tr(),
        nombreEs: "Dominadas asistidas con agarre neutro cerrado",
        imagen: ['DominadasAsistidasAgarreNeutro.gif'],
        descripcion: 'Si vas sobrado puedes hacerlas libres',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.dominadasAgarreSupino() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_con_agarre_supino".tr(),
        nombreEs: "Dominadas con agarre supino",
        imagen: ['DominadasSupinas.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.dominadasAsistidasAgarreSupino() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_asistidas_con_agarre_supino".tr(),
        nombreEs: "Dominadas asistidas con agarre supino",
        imagen: ['DominadasAsistidasSupinas.gif'],
        descripcion: 'Si vas sobrado puedes hacerlas libres.',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoSentadoConBandasElasticas() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_sentado_con_banda_elástica".tr(),
        nombreEs: "Remo sentado con banda elástica",
        imagen: ['RemoSentadoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoAUnaManoConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_a_una_mano_con_banda_elástica".tr(),
        nombreEs: "Remo a una mano con banda elástica",
        imagen: ['RemoAUnaManoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.remoADosManosConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_a_dos_manos_con_banda_elástica".tr(),
        nombreEs: "Remo a dos manos con banda elástica",
        imagen: ['RemoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }

  factory Ejercicio.jalonSupinoConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_supino_con_banda_elástica".tr(),
        nombreEs: "Jalón supino con banda elástica",
        imagen: ['JalonSupinoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.jalonNeutroConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_neutro_con_banda_elástica".tr(),
        nombreEs: "Jalón neutro con banda elástica",
        imagen: ['JalonNeutroBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoEnTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_trx".tr(),
        nombreEs: "Remo en TRX",
        imagen: ['RemoSupinoEnTRX.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  factory Ejercicio.remoConKettlebel() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_kettlebel".tr(),
        nombreEs: "Remo con kettlebel",
        imagen: ['RemoConKetbell.gif'],
        descripcion: '',
        material: ['kettlebell'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 9);
  }
  // Aduccion de hombro
  factory Ejercicio.jalonDorsalEnMaquinaDivergente() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_dorsal_en_máquina_divergente".tr(),
        nombreEs: "Jalón dorsal en máquina divergente",
        imagen: ['JalonDorsalMaquinaDivergente.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }

  factory Ejercicio.jalonDorsalEnCruceDePoleas() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_dorsal_en_cruce_de_poleas".tr(),
        nombreEs: "Jalón dorsal en cruce de poleas",
        imagen: ['AduccionesEnPoleaAlta.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }

  factory Ejercicio.jalonTrasnuca() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_trasnuca".tr(),
        nombreEs: "Jalón trasnuca",
        imagen: ['JalonTrasnuca.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.dominadasTrasnuca() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_trasnuca".tr(),
        nombreEs: "Dominadas trasnuca",
        imagen: ['DominadasTrasnuca.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.dominadasAgarreNeutroAmplio() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_con_agarre_neutro_amplio".tr(),
        nombreEs: "Dominadas con agarre neutro amplio",
        imagen: ['DominadasConAgarreNeutroAmplio.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.aduccionDeHombroConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.aducción_de_hombro_con_banda_elástica".tr(),
        nombreEs: "Aducción de hombro con banda elástica",
        imagen: ['AduccionDeHombroBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.dominadasTRX() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_con_trx".tr(),
        nombreEs: "Dominadas con TRX",
        imagen: ['10881301-Suspender-Pull-up_Back_360.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
// Aproximacion de escapulas
  factory Ejercicio.remoconBarraCodosSeparadosConApoyoEnBancoInclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_barra_con_codos_separados_apoyado_en_banco_inclinado".tr(),
        nombreEs: "Remo con barra con codos separados apoyado en banco inclinado",
        imagen: ['RemoCodosSeparadosApoyoEnBanco.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }

  factory Ejercicio.remoconBarraCodosSeparados() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_barra_con_codos_separados".tr(),
        nombreEs: "Remo con barra con codos separados",
        imagen: ['RemoConCodosSeparados.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoConMancuernaCodosSeparadosEnBancoInclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_mancuerna_con_codos_separados_apoyo_en_banco_inclinado".tr(),
        nombreEs:
            "Remo con mancuerna con codos separados apoyo en banco inclinado",
        imagen: ['RemoConMancuernasConCodosSeparados.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoConMancuernaCodosSeparados() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_mancuerna_con_codos_separados".tr(),
        nombreEs: "Remo con mancuerna con codos separados",
        imagen: ['23261301-Dumbbell-Pronated-Grip-Row-_(female)_Back_180.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoAltoEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_alto_en_máquina".tr(),
        nombreEs: "Remo alto en máquina",
        imagen: ['RemoAltoEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }

  factory Ejercicio.remoConCodosSeparadosEnMultipower() {
    return Ejercicio(
       nombre: "_Ejercicios.remo_con_codos_separados_en_multipower".tr(),
        nombreEs: "Remo con codos separados en multipower",
        imagen: ['RemoConCodosSeparadosEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoConCodosSeparadosEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_máquina_con_codos_separados".tr(),
        nombreEs: "Remo en máquina con codos separados",
        imagen: ['RemoEnMaquinaConCodosSeparados.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }

  factory Ejercicio.remoEnPuntaAgarreAncho() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_punta_con_codos_separados".tr(),
        nombreEs: "Remo en punta con codos separados",
        imagen: ['RemoEnPuntaAgarreAbierto.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }

  factory Ejercicio.remoConCodosSeparadosEnPoleaBaja() {
    return Ejercicio(
       nombre: "_Ejercicios.remo_con_codos_separados_en_polea_baja".tr(),
        nombreEs: "Remo con codos separados en polea baja",
        imagen: ['RemoConCodosSeparadosEnPoleaBaja.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }

  factory Ejercicio.facePull() {
    return Ejercicio(
      nombre: "_Ejercicios.face_pull".tr(),
        nombreEs: "Face Pull",
        imagen: ['FacePull.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.facePullBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.face_pull_con_banda_elástica".tr(),
        nombreEs: "Face pull con banda elástica",
        imagen: ['FacePullBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoAltoConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_alto_con_banda_elástica".tr(),
        nombreEs: "Remo alto con banda elástica",
        imagen: ['RemoAltoConCodosSeparadosBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoConCodosSeparadosConBandaElastica() {
    return Ejercicio(
            nombre: "_Ejercicios.remo_con_codos_separados_con_banda_elástica".tr(),
        nombreEs: "Remo con codos separados con banda elástica",
        imagen: ['RemoConCodosSeparadosBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
  factory Ejercicio.remoConCodosSeparadosConTRX() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_con_codos_separados_con_trx".tr(),
        nombreEs: "Remo con codos separados con TRX",
        imagen: ['RemoInvertidoTRX.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
   factory Ejercicio.facePullConTRX() {
    return Ejercicio(
      nombre: "_Ejercicios.face_pull_con_trx".tr(),
        nombreEs: "Face Pull con TRX",
        imagen: ['11131301-Suspender-Face-Pull_Shoulders_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Trapecio',
          'Secundario3': 'Biceps'
        },
        patron: 10);
  }
// Aduccion + Extension
  factory Ejercicio.jalonDorsalProno() {
    return Ejercicio(
      nombre: "_Ejercicios.jalón_dorsal_prono".tr(),
        nombreEs: "Jalón dorsal prono",
        imagen: ['JalonDorsalPronoEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 12);
  }
  factory Ejercicio.dominadasPronas() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_agarre_prono".tr(),
        nombreEs: "Dominadas agarre prono",
        imagen: ['Dominadas.gif'],
        descripcion:
            'Si vas sobrado puedes lastrarte peso, si no cambia el ejercicio a dominadas asistidas',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 12);
  }
  factory Ejercicio.dominadasAsistidasPronas() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_asistidas_agarre_prono".tr(),
        nombreEs: "Dominadas asistidas agarre prono",
        imagen: ['DominadasAsistidasPronas.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 12);
  }
  factory Ejercicio.dominadasAsistidasEnCasaPronas() {
    return Ejercicio(
      nombre: "_Ejercicios.dominadas_asistidas_agarre_prono_(subido_en_banco)".tr(),
        nombreEs: "Dominadas asistidas agarre prono (subido en banco)",
        imagen: ['Dominadas.gif'],
        descripcion:
            'Si vas sobrado puedes lastrarte peso, si no cambia el ejercicio a dominadas asistidas',
        material: ['dominadas'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps'
        },
        patron: 12);
  }
// Extension + aprox escapulas

  factory Ejercicio.remoConBarra() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_con_barra".tr(),
        nombreEs: "Remo con barra",
        imagen: ['Remo.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  factory Ejercicio.remoPendlay() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_pendlay".tr(),
        nombreEs: "Remo pendlay",
        imagen: ['RemoPendlay.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  factory Ejercicio.remoConMancuernasAgarrePronoDePie() {
    return Ejercicio(
       nombre: "_Ejercicios.remo_con_mancuernas_agarre_prono".tr(),
        nombreEs: "Remo con mancuernas agarre prono",
        imagen: ['23261301-Dumbbell-Pronated-Grip-Row-_(female)_Back_180.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  factory Ejercicio.remoEnMultipower() {
    return Ejercicio(
       nombre: "_Ejercicios.remo_en_multipower".tr(),
        nombreEs: "Remo en multipower",
        imagen: ['RemoEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  factory Ejercicio.remoPendlayEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_pendlay_en_multipower".tr(),
        nombreEs: "Remo pendlay en multipower",
        imagen: ['RemoPendlayEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  factory Ejercicio.remoEnPoleaBaja() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_polea_baja".tr(),
        nombreEs: "Remo en polea baja",
        imagen: ['RemoEnPoleaBaja.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  factory Ejercicio.remoEnPoleaBajaAgarreAncho() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_en_polea_baja_agarre_ancho".tr(),
        nombreEs: "Remo en polea baja agarre ancho",
        imagen: ['RemoEnPoleaBajaAgarreAncho.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Espalda',
          'Secundario1': 'Hombro Posterior',
          'Secundario2': 'Biceps',
          'Secundario3': 'Trapecio'
        },
        patron: 13);
  }

  // HOMBRO

// Empuje vertical

  factory Ejercicio.pressMilitarSentado() {
    return Ejercicio(
       nombre: "_Ejercicios.press_militar_sentado".tr(),
        nombreEs: "Press militar sentado",
        imagen: ['PressMilitar.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoregulable'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }
  factory Ejercicio.pressMilitarDePie() {
    return Ejercicio(
      nombre: "_Ejercicios.press_militar_de_pie".tr(),
        nombreEs: "Press militar de pie",
        imagen: ['PressMilitarDePie.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressMilitarTrasnuca() {
    return Ejercicio(
        nombre: "_Ejercicios.press_militar_trasnuca".tr(),
        nombreEs: "Press militar trasnuca",
        imagen: ['PressMilitarTrasnuca.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressDeHombroConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.press_de_hombro_con_mancuernas".tr(),
        nombreEs: "Press de hombro con mancuernas",
        imagen: ['PressDeHombroConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressDeHombroConMancuernasAgarreNeutro() {
    return Ejercicio(
      nombre: "_Ejercicios.press_de_hombro_con_mancuernas_agarre_neutro".tr(),
        nombreEs: "Press de hombro con mancuernas agarre neutro",
        imagen: ['PressDeHombroAgarreNeutroConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }
  factory Ejercicio.pressArnold() {
    return Ejercicio(
        nombre: "_Ejercicios.press_arnold".tr(),
        nombreEs: "Press arnold",
        imagen: ['21371301-Dumbbell-Arnold-Press_Shoulders_180.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressDeHombroEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.press_de_hombro_en_máquina".tr(),
        nombreEs: "Press de hombro en máquina",
        imagen: ['PressDeHombroEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressMilitarEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.press_militar_en_multipower".tr(),
        nombreEs: "Press militar en multipower",
        imagen: ['PressMilitarEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressMilitarTrasnucaEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.press_militar_trasnuca_en_multipower".tr(),
        nombreEs: "Press militar trasnuca en multipower",
        imagen: ['PressTrasnucaEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }
  factory Ejercicio.pressMilitarEnPolea() {
    return Ejercicio(
      nombre: "_Ejercicios.press_militar_en_polea".tr(),
        nombreEs: "Press militar en polea",
        imagen: ['01481301-Cable-Alternate-Shoulder-Press_Shoulders_180.gif'],
        descripcion: '',
        material: [
          'polea',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }
  factory Ejercicio.pressMilitarConBandasElasticas() {
    return Ejercicio(
      nombre: "_Ejercicios.press_militar_con_banda_elástica".tr(),
        nombreEs: "Press militar con banda elástica",
        imagen: [
          'PressMilitarBandaElastica.gif',
          'PressMilitarBandaElastica2.gif'
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

  factory Ejercicio.pressMilitarConTRX() {
    return Ejercicio(
       nombre: "_Ejercicios.press_militar_con_trx".tr(),
        nombreEs: "Press militar con TRX",
        imagen: [
          '11151301-Suspender-Handstand-Push-up_Upper-arms_360.gif',
        ],
        descripcion: '',
        material: [
          'trx',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }
  factory Ejercicio.pressMilitarConKettblell() {
    return Ejercicio(
        nombre: "_Ejercicios.press_militar_con_kettlebell".tr(),
        nombreEs: "Press militar con kettlebell",
        imagen: [
          'PressMilitarConKetbell.gif',
        ],
        descripcion: '',
        material: [
          'kettlebell',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }

   factory Ejercicio.pressArnoldConKettblell() {
    return Ejercicio(
      nombre: "_Ejercicios.press_arnold_con_kettlebell".tr(),
        nombreEs: "Press arnold con kettlebell",
        imagen: [
          'PressArnoldConKetbell .gif',
        ],
        descripcion: '',
        material: [
          'kettlebell',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
        patron: 14);
  }
// flexion de hombro

  factory Ejercicio.elevacionFrontalConBarraRecta() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_frontal_con_barra_recta".tr(),
        nombreEs: "Elevación frontal con barra recta",
        imagen: ['ElevacionFrontal.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }
  factory Ejercicio.elevacionFrontalConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_frontal_con_mancuernas".tr(),
        nombreEs: "Elevación frontal con mancuernas",
        imagen: ['ElevacionFrontalConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }

  factory Ejercicio.elevacionFrontalEnPolea() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_frontal_en_polea".tr(),
        nombreEs: "Elevación frontal en polea",
        imagen: ['ElevacionFrontalEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }
  factory Ejercicio.elevacionFrontalConBandaElastica() {
    return Ejercicio(
       nombre: "_Ejercicios.elevación_frontal_con_banda_elástica".tr(),
        nombreEs: "Elevación frontal con banda elástica",
        imagen: ['ElevacionFrontalBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }
  factory Ejercicio.elevacionFrontalConTrx() {
    return Ejercicio(
       nombre: "_Ejercicios.elevación_frontal_con_trx".tr(),
        nombreEs: "Elevación frontal con TRX",
        imagen: ['10751301-Suspender-Front-Raise_Shoulders_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }
   factory Ejercicio.elevacionFrontalConKettlebell() {
    return Ejercicio(
       nombre: "_Ejercicios.elevación_frontal_con_kettlebell".tr(),
        nombreEs: "Elevación frontal con kettlebell",
        imagen: ['ElevacionFrontalConKetbell.gif'],
        descripcion: '',
        material: ['kettlebell'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }
  // Abduccion de hombro

  // - Tension constante

  factory Ejercicio.elevacionLateralConMancuernaEnBancoInclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_con_mancuerna_en_banco_inclinado".tr(),
        nombreEs: "Elevación lateral con mancuerna en banco inclinado",
        imagen: [
          'ElevacionLateralEnBancoInclinado.gif',
        ],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 16);
  }

  factory Ejercicio.elevacionLateralEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_en_máquina".tr(),
        nombreEs: "Elevación lateral en máquina",
        imagen: [
          'ElevacionesLateralesEnMaquina.gif',
        ],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 16);
  }

  factory Ejercicio.elevacionLateralEnCruceDePoleas() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_en_cruce_de_poleas".tr(),
        nombreEs: "Elevación lateral en cruce de poleas",
        imagen: [
          'ElevacionLateralEnCruceDePoleas.gif',
        ],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 16);
  }

  factory Ejercicio.elevacionLateralEnPoleaAUnaMano() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_en_polea_a_una_mano".tr(),
        nombreEs: "Elevación lateral en polea a una mano",
        imagen: [
          'ElevacionLateralEnPoleaAUnaMano.gif',
        ],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 16);
  }

  
  //- Acortamiento
  factory Ejercicio.remoAlMentonAgarreAncho() {
    return Ejercicio(
      nombre: "_Ejercicios.remo_al_mentón_agarre_abierto".tr(),
        nombreEs: "Remo al mentón agarre abierto",
        imagen: [
          'RemoAlMentonAgarreAmplio.gif',
          'RemoAlMentonAgarreAmplio2.gif'
        ],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }
  factory Ejercicio.elevacionLateralConBarra() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_con_barra".tr(),
        nombreEs: "Elevación lateral con barra",
        imagen: [
          '32371301-Landmine-Lateral-Raise_Shoulders_180.gif',
        ],
        descripcion: '',
        material: ['barra'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }
  factory Ejercicio.elevacionesLateralesCrucifixConMancuerna() {
    return Ejercicio(
       nombre: "_Ejercicios.elevación_lateral_crucifix_con_mancuernas".tr(),
        nombreEs: "Elevación lateral crucifix con mancuernas",
        imagen: [
          'ElevacionesLateralesCrucifixConMancuernas.gif',
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }

  factory Ejercicio.elevacionLateralConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_con_mancuerna".tr(),
        nombreEs: "Elevación lateral con mancuerna",
        imagen: [
          'ElevacionLateralConMancuerna.gif',
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }

  factory Ejercicio.elevacionLateralConMancuernaAUnaMano() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_con_mancuerna_a_una_mano".tr(),
        nombreEs: "Elevación lateral con mancuerna a una mano",
        imagen: [
          'ElevacionLateralConMancuernaAUnaMano.gif',
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }
  factory Ejercicio.elevacionLateralSentadoConMancuerna() {
    return Ejercicio(
       nombre: "_Ejercicios.elevación_lateral_sentado_con_mancuerna".tr(),
        nombreEs: "Elevación lateral sentado con mancuerna",
        imagen: [
          'ElevacionLateralSentado.gif',
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }

  factory Ejercicio.comodinElevacionLateral() {
    return Ejercicio(
       nombre: "_Ejercicios.comodin_elevación_lateral".tr(),
        nombreEs: "Elevación lateral",
        imagen: ['ElevacionLateralConMancuerna.gif'],
        descripcion: 'Usa una carga externa, por ejemplo una botella de agua',
        material: ['comodin'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }
  factory Ejercicio.elevacionLateralConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_con_banda_elástica".tr(),
        nombreEs: "Elevación lateral con banda elástica",
        imagen: ['ElevacionesLateralesBandaElastica.gif'],
        descripcion: '',
        material: ['gym', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }

  factory Ejercicio.elevacionLateralConBandaElasticaTecnica112() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_con_banda_elástica_(Técnica_1-1/2)".tr(),
        nombreEs: "Elevación lateral con banda elástica (Técnica 1-1/2)",
        imagen: ['ElevacionesLateralesBandaElastica.gif'],
        descripcion:
            'Sube, bajas a mitad,subes y bajas hasta abajo, eso es una repetición',
        material: ['gym', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }

  factory Ejercicio.elevacionLateralEnTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.elevación_lateral_en_trx".tr(),
        nombreEs: "Elevación lateral en TRX",
        imagen: [
          '11071301-Suspender-Y-Lateral-Raise_Shoulders_180.gif',
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }

  // -Estiramiento

  factory Ejercicio.elevacionLateralTumbadoConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.elevación_lateral_tumbado_con_mancuerna".tr(),
        nombreEs: "Elevación lateral tumbado con mancuerna",
        imagen: [
          'ElevacionLateralTumbado.gif',
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 18);
  }

  factory Ejercicio.comodinElevacionLateralTumbado() {
    return Ejercicio(
      nombre: "_Ejercicios.comodin_elevación_lateral_tumbado".tr(),
        nombreEs: "Elevación lateral tumbado",
        imagen: ['ElevacionLateralTumbado.gif'],
        descripcion: 'con carga externa (una botella de agua por ejemplo)',
        material: ['elasticos', 'barra', 'polea'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 18);
  }

  // Abduccion horizontal

  factory Ejercicio.esquiador() {
    return Ejercicio(
      nombre: "_Ejercicios.esquiador_con_barra_recta".tr(),
        nombreEs: "Esquiador con barra recta",
        imagen: ['Esquiador.gif'],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }
  factory Ejercicio.abduccionHorizontalDeHombroConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.abducción_horizontal_de_hombro_con_mancuerna".tr(),
        nombreEs: "Abducción horizontal de hombro con mancuerna",
        imagen: [
          'AbduccionHorizontalDeHombroConMancuerna.gif',
        ],
        descripcion: '',
        material: ['mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroConMancuernasSentado() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_con_mancuernas_sentado".tr(),
        nombreEs: "Pájaro con mancuernas sentado",
        imagen: ['PajaroConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroConMancuernasDePie() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_con_mancuernas_de_pie".tr(),
        nombreEs: "Pájaro con mancuernas de pie",
        imagen: ['PajaroPosteriorConMancuernasDePie.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroConMancuernasEnBancoPlano() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_con_mancuernas_tumbado".tr(),
        nombreEs: "Pájaro con mancuernas tumbado",
        imagen: ['PajaroPosteriorConMancuernasApoyoEnBanco.gif'],
        descripcion: '',
        material: ['mancuernas', 'bancoplano'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroConMancuernasEnBancoInclinado() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_con_mancuernas_con_apoyo_en_banco_inclinado".tr(),
        nombreEs: "Pájaro con mancuernas con apoyo en banco inclinado",
        imagen: ['PajaroPosteriorConMancuernasEnBancoInclinado.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }
  factory Ejercicio.abduccionHorizontalEnMaquinaContractoraInversa() {
    return Ejercicio(
      nombre: "_Ejercicios.hombro_posterior_en_máquina_contractora_inversa".tr(),
        nombreEs: "Hombro posterior en máquina contractora inversa",
        imagen: [
          'AbduccionHorizontalEnMaquinaContractoraInversa.gif',
        ],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.abduccionHorizontalEnCruceDePoleas() {
    return Ejercicio(
      nombre: "_Ejercicios.hombro_posterior_en_cruce_de_poleas_alto".tr(),
        nombreEs: "Hombro posterior en cruce de poleas alto",
        imagen: [
          'AbduccionHorizontalEnPoleaAlta.gif',
        ],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.abduccionHorizontalEnCruceDePoleasTumbado() {
    return Ejercicio(
      nombre: "_Ejercicios.hombro_posterior_en_cruce_de_poleas_tumbado".tr(),
        nombreEs: "Hombro posterior en cruce de poleas tumbado",
        imagen: [
          'AbduccionHorizontalTumbado.gif',
        ],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta', 'bancoplano'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroPosteriorEnPoleaBaja() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_posterior_en_cruce_de_poleas_de_pie".tr(),
        nombreEs: "Pájaro posterior en cruce de poleas de pie",
        imagen: [
          'PajaroPosteriorEnPolea.gif',
        ],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroPosteriorEnPoleaBajaSentado() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_posterior_sentado_en_cruce_de_poleas_de_pie".tr(),
        nombreEs: "Pájaro posterior sentado en cruce de poleas de pie",
        imagen: [
          'PajaroPosteriorEnCruceDePoleasSentado.gif',
        ],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.pajaroPosteriorConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_posterior_con_banda_elástica".tr(),
        nombreEs: "Pájaro posterior con banda elástica",
        imagen: [
          'PajaroPosteriorBandaElastica.gif',
        ],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  factory Ejercicio.abduccionDeHombroConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.abducción_horizontal_de_hombro_con_banda_elástica".tr(),
        nombreEs: "Abducción horizontal de hombro con banda elástica",
        imagen: [
          'AbduccionDeHombroBandaElastica.gif',
          'AbduccionHorizontalBandaElastica2.gif'
        ],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }
  factory Ejercicio.pajaroConTrxDePie() {
    return Ejercicio(
      nombre: "_Ejercicios.pájaro_con_trx_de_pie".tr(),
        nombreEs: "Pájaro con TRX de pie",
        imagen: [
          '10901301-Suspender-Reverse-Fly_Shoulders_180.gif',
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }


  factory Ejercicio.pajaroConTrxTumbado() {
    return Ejercicio(
       nombre: "_Ejercicios.pájaro_con_trx_tumbado".tr(),
        nombreEs: "Pájaro con TRX tumbado",
        imagen: [
          '11301301-Suspender-Reverse-Fly-Wake-up_Back_180.gif',
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Hombro Posterior',
        },
        patron: 19);
  }

  //BICEPS

  //HombroEnFlexion

  factory Ejercicio.curlArana() {
    return Ejercicio(
      
        nombre: "_Ejercicios.curl_araña".tr(),
        nombreEs: "Curl araña",
        imagen: ['CurlAraña.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  factory Ejercicio.curlConcentradoConBarra() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_concentrado_con_barra".tr(),
        nombreEs: "Curl concentrado con barra",
        imagen: ['CurlConcentrado.gif'],
        descripcion: '',
        material: ['barra'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }

  factory Ejercicio.curlBancoScoot() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_de_bíceps_en_banco_scott".tr(),
        nombreEs: "Curl de bíceps en banco scott",
        imagen: ['CurlScott.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }

  factory Ejercicio.curlAranaConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_araña_con_mancuernas".tr(),
        nombreEs: "Curl araña con mancuernas",
        imagen: ['CurlArañaConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  factory Ejercicio.curlConcentradoConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_concentrado_con_mancuerna".tr(),
        nombreEs: "Curl concentrado con mancuerna",
        imagen: ['CurlConcentradoConMancuerna.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }

  factory Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_concentrado_con_mancuerna_apoyado_en_banco_inclinado".tr(),
        nombreEs: "Curl concentrado con mancuerna apoyado en banco inclinado",
        imagen: ['CurlConcentradoEnBancoInclinado.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  factory Ejercicio.curlDeBicepsMartilloEnBancoScottConMancuerna() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_martillo_en_banco_scott_con_mancuerna".tr(),
        nombreEs: "Curl martillo en banco scott con mancuerna",
        imagen: ['CurlMartilloBancoScottMancuernas.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }

  factory Ejercicio.curlDeBicepsEnBancoScottConMancuerna() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_de_bíceps_en_banco_scott_con_mancuerna".tr(),
        nombreEs: "Curl de bíceps en banco scott con mancuerna",
        imagen: ['CurlScottConMancuernas.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }

  factory Ejercicio.curlDeBicepsEnMaquinaScott() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_en_máquina_scott".tr(),
        nombreEs: "Curl de bíceps en máquina scott",
        imagen: ['05921301-Lever-Preacher-Curl_Upper-Arms_180.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }

  factory Ejercicio.curlDeBicepsTumbadoEnPoleaAlta() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_tumbado_en_polea_alta".tr(),
        nombreEs: "Curl de bíceps tumbado en polea alta",
        imagen: ['CurlDeBicepsEnPoleaAltaTumbado.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta', 'bancoplano'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        principiantes: false,
        patron: 20);
  }
  factory Ejercicio.curlDeBicepsEnPoleaAltaADosManos() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_en_polea_alta_a_dos_manos".tr(),
        nombreEs: "Curl de bíceps en polea alta a dos manos",
        imagen: ['CurlDeBicepsEnPoleaADosManos.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  factory Ejercicio.curlDeBicepsConcentradoConBandaElastica() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_concentrado_con_banda_elástica".tr(),
        nombreEs: "Curl concentrado con banda elástica",
        imagen: ['CurlConcentradoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  factory Ejercicio.curlDeBicepsConTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_con_trx".tr(),
        nombreEs: "Curl de bíceps con TRX",
        imagen: ['11081301-Suspender-Arm-Curl-to-Ears_Upper-arms_360.gif'],
        descripcion: '',
        material: ['trx'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
   factory Ejercicio.curlDeBicepsConTrxAUnaMano() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_de_bíceps_con_trx_a_una_mano".tr(),
        nombreEs: "Curl de bíceps con TRX a una mano",
        imagen: ['11231301-Suspender-One-Arm-Biceps-Curl_Upper-arms_180.gif'],
        descripcion: '',
        material: ['trx'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  // Hombro anatomico

  factory Ejercicio.curlConBarraRectaYBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_con_barra_recta_y_banda_elástica".tr(),
        nombreEs: "Curl con barra recta + banda elástica",
        imagen: ['CurlConBarra+BandaElastica.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlConBarraRecta() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_con_barra_recta".tr(),
        nombreEs: "Curl de bíceps con barra recta",
        imagen: ['CurlDeBiceps.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlConBarraZ() {
    return Ejercicio(
         nombre: "_Ejercicios.curl_de_bíceps_barra_z".tr(),
        nombreEs: "Curl de bíceps barra Z",
        imagen: ['22381301-EZ-Barbell-Curl-(female)_Upper-Arms_180.gif'],
        descripcion: '',
        material: ['barra'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }
  factory Ejercicio.curlDeBicepsConMancuernasDePie() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_de_bíceps_con_mancuernas_de_pie".tr(),
        nombreEs: "Curl de bíceps con mancuernas de pie",
        imagen: ['CurlDeBicepsConMancuernasDePie.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlMartilloConMancuerna() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_martillo_con_mancuernas".tr(),
        nombreEs: "Curl martillo con mancuernas",
        imagen: ['CurlMartilloConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlDeBicepsConBarraEnPoleaBaja() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_con_barra_en_polea_baja".tr(),
        nombreEs: "Curl de bíceps con barra en polea baja",
        imagen: ['CurlDeBicepsEnPoleaBaja.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlDeBicepsConCuerdaEnPoleaBaja() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_de_bíceps_con_cuerda_en_polea_baja".tr(),
        nombreEs: "Curl de bíceps con cuerda en polea baja",
        imagen: ['CurlDeBicepsEnPoleaBajaConCuerda.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlDeBicepsTumbadoEnPoleaBaja() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_tumbado_en_polea_baja".tr(),
        nombreEs: "Curl de bíceps tumbado en polea baja",
        imagen: ['CurlDeBicepsEnPoleaBajaTumbado.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlDeBicepsConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_de_bíceps_con_banda_elástica".tr(),
        nombreEs: "Curl de bíceps con banda elástica",
        imagen: [
          'CurlDeBicepsBandaElastica.gif',
          'CurlDeBicepsBandaElastica2.gif'
        ],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }
  factory Ejercicio.curlDeBicepsConElasticoSentado() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_con_elástico_sentado".tr(),
        nombreEs: "Curl de bíceps con elástico sentado",
        imagen: ['31231301-Resistance-Band-Seated-Biceps-Curl_Chest_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }
  factory Ejercicio.curlDeBicepsMartilloConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_martillo_con_banda_elástica".tr(),
        nombreEs: "Curl martillo con banda elástica",
        imagen: ['CurlMartilloBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlDeBicepsConBandaElasticaAgarreReverso() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_de_bíceps_con_banda_elástica_agarre_reverso".tr(),
        nombreEs: "Curl de bíceps con banda elástica agarre reverso",
        imagen: ['CurlDeBicepsAgarreReversoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }

  factory Ejercicio.curlDeBicepsConKettlebellAgarreReverso() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_de_bíceps_con_kettlebell_agarre_reverso".tr(),
        nombreEs: "Curl de bíceps con kettlebell agarre reverso",
        imagen: ['05261301-Kettlebell-Double-Alternating-Hang-Clean_Forearms_180.gif'],
        descripcion: '',
        material: ['kettlebell'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }
// Hombro Extension

  factory Ejercicio.curlDeArrastreConBarraRecta() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_arrastre_con_barra_recta".tr(),
        nombreEs: "Curl de arrastre con barra recta",
        imagen: ['Barbell-Drag-Curl.jpg'],
        descripcion: 'Echa los codos hacia atras cuando subas.',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 22);
  }
  factory Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasAgarreNeutro() {
    return Ejercicio(
      nombre: "_Ejercicios.curl_de_bíceps_en_banco_inclinado_con_mancuernas_agarre_neutro".tr(),
        nombreEs:
            "Curl de bíceps en banco inclinado con mancuernas agarre neutro",
        imagen: ['CurlConMancuernasEnBancoInclinadoAgarreNeutro.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 22);
  }

  factory Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_de_bíceps_en_banco_inclinado_con_mancuernas".tr(),
        nombreEs: "Curl de bíceps en banco inclinado con mancuernas",
        imagen: ['CurlDeBicepsEnBancoInclinadoConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoregulable'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 22);
  }

  factory Ejercicio.curlDeBicepsEnPoleaBajaHombroExtension() {
    return Ejercicio(
       nombre: "_Ejercicios.curl_de_bíceps_en_polea_baja_a_una_mano".tr(),
        nombreEs: "Curl de bíceps en polea baja a una mano",
        imagen: ['CurlDeBicepsEnPoleaAUnaMano.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 22);
  }
  // TRICEPS

  // Empuje cerrado
  factory Ejercicio.pressCerrado() {
    return Ejercicio(
      nombre: "_Ejercicios.press_cerrado".tr(),
        nombreEs: "Press cerrado",
        imagen: ['PressCerrado.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }
  factory Ejercicio.pressCerradoConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.press_cerrado_con_mancuernas".tr(),
        nombreEs: "Press cerrado con mancuernas",
        imagen: ['PressCerradoMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }

  factory Ejercicio.fondosDeTriceps() {
    return Ejercicio(
        nombre: "_Ejercicios.fondos_de_tríceps".tr(),
        nombreEs: "Fondos de tríceps",
        imagen: ['Fondos.gif', 'Fondos2.gif'],
        descripcion: '',
        material: ['gym', 'paralelas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }
  factory Ejercicio.fondosDeTricepsEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.fondos_de_tríceps_en_máquina".tr(),
        nombreEs: "Fondos de tríceps en máquina",
        imagen: [
          'FondosEnMaquina.gif',
          'FondosEnMaquina3.gif',
          'FondosDeTricepsEnMaquina.gif'
        ],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }
  factory Ejercicio.pressCerradoEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.press_cerrado_en_multipower".tr(),
        nombreEs: "Press cerrado en multipower",
        imagen: [
          'PressCerradoEnMultipower.gif',
        ],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }

  factory Ejercicio.flexionesCerradas() {
    return Ejercicio(
      nombre: "_Ejercicios.flexiones_cerradas".tr(),
        nombreEs: "Flexiones cerradas",
        imagen: [
          'FlexionesCerradas.gif',
        ],
        descripcion:
            'Puedes añadir una carga externa si vas sobrado, por ejemplo, una mochila',
        material: ['polea', 'barra', 'mancuernas'],
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }

  factory Ejercicio.flexionesCerradasConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.flexiones_cerradas_con_banda_elástica".tr(),
        nombreEs: "Flexiones cerradas con banda elástica",
        imagen: [
          'FlexionesCerradasBandaElastica.gif',
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }

 factory Ejercicio.fondosDeTricepsConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.fondos_de_tríceps_con_trx".tr(),
        nombreEs: "Fondos de tríceps con TRX",
        imagen: [
          '10721301-Suspender-Chest-Dip_Chest_360.gif',
        ],
        descripcion: '',
        material: [
          'trx',
        ],
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }

  factory Ejercicio.pressCerradoConTrx() {
    return Ejercicio(
       nombre: "_Ejercicios.press_cerrado_con_trx".tr(),
        nombreEs: "Press cerrado con TRX",
        imagen: [
          '11111301-Suspender-Close-grip-Chest-Press_Chest_180.gif',
        ],
        descripcion: '',
        material: [
          'trx',
        ],
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }
// Extension de codo HombroFlexion
  factory Ejercicio.extensionDeTricepsConBarraRecta() {
    return Ejercicio(
      nombre: "_Ejercicios.extensión_de_tríceps_con_barra_recta".tr(),
        nombreEs: "Extensión de tríceps con barra recta",
        imagen: ['ExtensionDeTriceps.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
  factory Ejercicio.pressFrances() {
    return Ejercicio(
        nombre: "_Ejercicios.press_francés_con_barra_recta".tr(),
        nombreEs: "Press francés con barra recta",
        imagen: ['PressFrances.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
  factory Ejercicio.pressFrancesBarraZ() {
    return Ejercicio(
        nombre: "_Ejercicios.press_francés_con_barra_z".tr(),
        nombreEs: "Press francés con barra Z",
        imagen: ['04501301-EZ-Barbell-JM-Bench-Press_Upper-Arms_180.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_con_mancuerna_a_dos_manos_de_pie".tr(),
        nombreEs: "Extensión de tríceps con mancuerna a dos manos de pie",
        imagen: ['ExtensionDeTricepsConMancuernaAdosManosDePie.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsConMancuernaAUnaMano() {
    return Ejercicio(
      nombre: "_Ejercicios.extensión_de_tríceps_con_mancuerna_de_pie_a_una_mano".tr(),
        nombreEs: "Extensión de tríceps con mancuerna de pie a una mano",
        imagen: ['ExtensionDeTricepsConMancuernaAUnaMano.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsConMancuernaSentado() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_con_mancuerna_sentado".tr(),
        nombreEs: "Extensión de tríceps con mancuerna sentado",
        imagen: ['ExtensionDeTricepsConMancuernaSentado.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.pressFrancesConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.press_francés_con_mancuernas".tr(),
        nombreEs: "Press francés con mancuernas",
        imagen: ['PressFrancesConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsEnMaquina() {
    return Ejercicio(
      nombre: "_Ejercicios.extensión_de_tríceps_en_máquina".tr(),
        nombreEs: "Extensión de tríceps en máquina",
        imagen: ['ExtensionDeTricepsEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
  factory Ejercicio.extensionDeTricepsEnPoleaAltaConBarraRecta() {
    return Ejercicio(
      nombre: "_Ejercicios.extensión_de_tríceps_en_polea_alta_con_barra_recta".tr(),
        nombreEs: "Extensión de tríceps en polea alta con barra recta",
        imagen: ['ExtensionDeTricepsEnPoleaAltaConBarraRecta.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsEnPoleaAltaConCuerda() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_en_polea_alta_con_cuerda".tr(),
        nombreEs: "Extensión de tríceps en polea alta con cuerda",
        imagen: ['ExtensionDeTricepsEnPoleaAltaConCuerda.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsEnPoleaBajaADosManos() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_en_polea_baja_a_dos_manos".tr(),
        nombreEs: "Extensión de tríceps en polea baja a dos manos",
        imagen: ['ExtensionDeTricepsEnPoleaBajaADosManos.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsEnPoleaBajaAUnaMano() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_en_polea_baja_a_una_mano".tr(),
        nombreEs: "Extensión de tríceps en polea baja a una mano",
        imagen: ['ExtensionDeTricepsEnPoleaAUnaMano.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsElasticoAbajao() {
    return Ejercicio(
         nombre: "_Ejercicios.extensión_de_tríceps_con_elastico_apoyado_abajo".tr(),
        nombreEs: "Extensión de tríceps con elastico apoyado abajo",
        imagen: [
          'ExtensionDeTricepsEnPoleaAltaBandaElastica.gif',
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

  factory Ejercicio.extensionDeTricepsConElasticoArriba() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_con_banda_elástica_arriba".tr(),
        nombreEs: "Extensión de tríceps con banda elástica arriba",
        imagen: [
          'ExtensionDeTricepsEnPoleaBajaBandaElastica.gif',
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
  factory Ejercicio.extensionDeTricepsConBandaElasticaAUnaMano() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_con_banda_elástica_arriba_a_una_mano".tr(),
        nombreEs: "Extensión de tríceps con banda elástica arriba a una mano",
        imagen: [
          'ExtensionDeTricepsPoleaAltaAUnaManoBandaElastica.gif',
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
  factory Ejercicio.pressFrancesConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.press_francés_con_banda_elástica".tr(),
        nombreEs: "Press francés con banda elástica",
        imagen: [
          'PressFrancesBandaElastica.gif',
        ],
        descripcion: '',
        material: ['elasticos', 'bancoplano'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
  factory Ejercicio.extensionDeTricepsConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_con_trx".tr(),
        nombreEs: "Extensión de tríceps con TRX",
        imagen: [
          '11041301-Suspender-Triceps-Extension_Upper-Arms_360.gif',
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }

   factory Ejercicio.extensionDeTricepsTumbadoConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_tríceps_tumbado_con_trx".tr(),
        nombreEs: "Extensión de tríceps tumbado con TRX",
        imagen: [
          '11491301-Suspender-Triceps-Extension-Push-up_Upper-arms_180.gif',
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }


  factory Ejercicio.tricepsKickback() {
    return Ejercicio(
        nombre: "_Ejercicios.tríceps_kickback_con_trx".tr(),
        nombreEs: "Tríceps kickback con TRX",
        imagen: [
          '11501301-Suspender-Triceps-Kickback_Upper-arms_180.gif',
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 24);
  }
// Extension de codo HombroExtension

  factory Ejercicio.patadaDeTricepsConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_tríceps_con_mancuerna".tr(),
        nombreEs: "Patada de tríceps con mancuerna",
        imagen: [
          'PatadaDeTricepsConMancuerna.gif',
          'PatadaDeTricepsConMancuerna2.gif'
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 25);
  }
  factory Ejercicio.fondosEntreBancos() {
    return Ejercicio(
        nombre: "_Ejercicios.fondos_de_tríceps_entre_bancos_con_peso_corporal".tr(),
        nombreEs: "Fondos de tríceps entre bancos con peso corporal",
        imagen: ['FondosConPesoCorporal.gif'],
        descripcion: 'Si lo necesitas,ponte carga encima.',
        material: ['gym', 'mancuernas', 'barra', 'polea', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 25);
  }

  factory Ejercicio.fondosDeTricepsEnMaquinaDeDominadasAsistidas() {
    return Ejercicio(
        nombre: "_Ejercicios.fondos_de_tríceps_en_máquina_de_dominadas_asistidas".tr(),
        nombreEs: "Fondos de tríceps en máquina de dominadas asistidas",
        imagen: ['FondosDeTricepsEnMaquina2.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 25);
  }
  factory Ejercicio.patadaDeTricepsEnPoleaBaja() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_tríceps_en_polea_baja".tr(),
        nombreEs: "Patada de tríceps en polea baja",
        imagen: ['PatadaDeTricepsEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 25);
  }

  factory Ejercicio.patadaDeTricepsConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_tríceps_con_banda_elástica".tr(),
        nombreEs: "Patada de tríceps con banda elástica",
        imagen: ['PatadaDeTricepsBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Triceps',
        },
        patron: 25);
  }
//CUADRICEPS

// Flexion de rodilla con extension de cadera

  factory Ejercicio.sentadilla() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_con_barra".tr(),
        nombreEs: "Sentadilla con barra",
        imagen: ['Sentadilla.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }
  factory Ejercicio.sentadillaConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_con_mancuernas".tr(),
        nombreEs: "Sentadilla con mancuernas",
        imagen: ['SentadillaConMancuernas.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }
  factory Ejercicio.sentadillaConMancuernasAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_con_mancuernas_a_una_pierna".tr(),
        nombreEs: "Sentadilla con mancuernas a una pierna",
        imagen: ['SentadillaAUnaPiernaConMancuerna.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }

  factory Ejercicio.sentadillaEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_en_multipower".tr(),
        nombreEs: "Sentadilla en multipower",
        imagen: ['SentadillaEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }
  factory Ejercicio.sentadillaAUnaPiernaPesoCorporal() {
    return Ejercicio(
      nombre: "_Ejercicios.sentadilla_a_una_pierna_con_peso_corporal".tr(),
        nombreEs: "Sentadilla a una pierna con peso corporal",
        imagen: ['SentadillaAUnaPierna.gif'],
        descripcion:
            'Puedes añadir carga externa si lo necesitas,por ejemplo con una mochila',
        material: [
          'polea',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }

  factory Ejercicio.sentadillaConGomaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_con_banda_elástica".tr(),
        nombreEs: "Sentadilla con banda elástica",
        imagen: ['SentadillasBandaElastica.gif'],
        descripcion: 'Puedes añadir mas carga externa si lo necesitas,por ejemplo con una mochila',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }
  factory Ejercicio.sentadillaConTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.sentadilla_con_trx".tr(),
        nombreEs: "Sentadilla con trx",
        imagen: ['11431301-Suspender-Squat_Thighs_180.gif'],
        descripcion: 'Puedes añadir mas carga externa si lo necesitas,por ejemplo con una mochila',
        material: [
          'trx',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
          'Secundario1': 'Gluteo',
          'Secundario2': 'Femoral',
        },
        patron: 26);
  }

// Flexion de rodilla Pesada

  factory Ejercicio.sentadillaFrontal() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_frontal".tr(),
        nombreEs: "Sentadilla frontal",
        imagen: ['SentadillaFrontal.gif', 'SentadillaFrontal2.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
  factory Ejercicio.sentadillaHackConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_hack_con_barra".tr(),
        nombreEs: "Sentadilla hack con barra",
        imagen: [
          'SentadillaHack.gif',
        ],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.splitSquat() {
    return Ejercicio(
        nombre: "_Ejercicios.split_squat".tr(),
        nombreEs: "Split squat",
        imagen: [
          'SplitSquat.gif',
        ],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.sentadillaFrontalConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_frontal_con_mancuerna".tr(),
        nombreEs: "Sentadilla frontal con mancuerna",
        imagen: ['SentadillaFrontalConMancuerna.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.sentadillaEnMultipowerCaderaPerpendicular() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_en_multipower_bajando_con_cadera_perpendicular".tr(),
        nombreEs: "Sentadilla en multipower bajando con cadera perpendicular",
        imagen: ['SentadillaEnMultipowerCaderaPerpendicular.gif'],
        descripcion: 'Baja con la cadera perpendicular al suelo',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.prensaInclinada() {
    return Ejercicio(
      nombre: "_Ejercicios.prensa_inclinada".tr(),
        nombreEs: "Prensa inclinada",
        imagen: ['PrensaInclinada.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.sentadillaFrontalEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_frontal_en_multipower".tr(),
        nombreEs: "Sentadilla frontal en multipower",
        imagen: ['SentadillaFrontalEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
  factory Ejercicio.sentadillaHackEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_hack_en_multipower".tr(),
        nombreEs: "Sentadilla hack en multipower",
        imagen: ['SentadillaHackEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.sentadillaHack() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_hack".tr(),
        nombreEs: "Sentadilla hack",
        imagen: ['SentadillaHackEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
  factory Ejercicio.prensaHorizontalEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.prensa_horizontal_en_máquina".tr(),
        nombreEs: "Prensa horizontal en máquina",
        imagen: ['PrensaEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
  factory Ejercicio.prensaVerticalEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.prensa_vertical_en_multipower".tr(),
        nombreEs: "Prensa vertical en multipower",
        imagen: ['PrensaEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.sentadillaFrontalEnPolea() {
    return Ejercicio(
       nombre: "_Ejercicios.sentadilla_frontal_en_polea".tr(),
        nombreEs: "Sentadilla frontal en polea",
        imagen: ['33541101-Cable-Front-Squat-(VERSION-2)_Thighs_small.png'],
        descripcion: '',
        material: [
          'polea',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.sentadillaBulgaraConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_búlgara_con_bandas_elásticas".tr(),
        nombreEs: "Sentadilla búlgara con bandas elásticas",
        imagen: ['SentadillaBulgaraBandaElastica.gif'],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexión de rodilla. Si lo necesitas, puedes añadir carga con una mochila o una garrafa de agua',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.zancadasConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_con_banda_elástica".tr(),
        nombreEs: "Zancadas con banda elástica",
        imagen: [
          'ZancadasBandaElastica.gif',
          '24241301-Resistance-Band-Lunge_Thighs_180.gif'
        ],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexión de rodilla. Si lo necesitas, puedes añadir carga con una mochila o una garrafa de agua',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
  factory Ejercicio.sentadillaBulgaraConTrx() {
    return Ejercicio(
       nombre: "_Ejercicios.sentadilla_búlgara_con_trx".tr(),
        nombreEs: "Sentadilla búlgara con TRX",
        imagen: [
          'SentadillaBulgaraEnTRX.gif',
        ],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexión de rodilla. Si lo necesitas, puedes añadir carga con una mochila o una garrafa de agua',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
  factory Ejercicio.sentadillaFrontalConKettlebell() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_frontal_con_kettlebell".tr(),
        nombreEs: "Sentadilla frontal con kettlebell",
        imagen: [
          'SentadillaFrontalConKetbell.gif',
        ],
        descripcion:
            'Si lo necesitas, puedes añadir carga con una mochila.',
        material: ['kettlebell'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
// Flexion de rodilla ligera

  factory Ejercicio.sentadillaBulgaraConBarraRecta() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_búlgara_con_barra".tr(),
        nombreEs: "Sentadilla búlgara con barra",
        imagen: ['SentadillaBulgara2.gif'],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.zancadasConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_con_barra".tr(),
        nombreEs: "Zancadas con barra",
        imagen: ['Zancadas.gif'],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.sentadillaBulgaraConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_búlgara_con_mancuernas".tr(),
        nombreEs: "Sentadilla búlgara con mancuernas",
        imagen: ['SentadillaBulgaraConMancuerna.gif'],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.zancadasConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_con_mancuernas".tr(),
        nombreEs: "Zancadas con mancuernas",
        imagen: ['ZancadasConMancuerna.gif'],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.extensionDeCuadricepsEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cuádriceps".tr(),
        nombreEs: "Extensión de cuádriceps",
        imagen: ['ExtensionDeCuadricepsEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.prensaHorizontalEnMaquinaConPiesAbajo() {
    return Ejercicio(
        nombre: "_Ejercicios.prensa_horizontal_en_máquina_con_pies_abajo".tr(),
        nombreEs: "Prensa horizontal en máquina con pies abajo",
        imagen: ['PrensaConPiesAbajo.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.prensaVerticalEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.prensa_vertical_en_máquina".tr(),
        nombreEs: "Prensa vertical en máquina",
        imagen: ['PrensaEnMaquinaAUnaPierna.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
 

  factory Ejercicio.zancadasEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_en_multipower".tr(),
        nombreEs: "Zancadas en multipower",
        imagen: ['ZancadasEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.sentadillaBulgaraEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_búlgara_en_multipower".tr(),
        nombreEs: "Sentadilla búlgara en multipower",
        imagen: ['SentadillaBulgaraEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.zancadasEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_en_polea".tr(),
        nombreEs: "Zancadas en polea",
        imagen: ['33511101-Cable-Lunge_Thighs_small.png'],
        descripcion: '',
        material: [
          'polea',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.sentadillaSissy() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_sissy".tr(),
        nombreEs: "Sentadilla sissy",
        imagen: ['SentadillaSisy.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'barra', 'mancuernas', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
  factory Ejercicio.extensionDeCuadricepsConBandaElasticaDePie() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cuádriceps_con_banda_elástica_de_pie".tr(),
        nombreEs: "Extensión de cuádriceps con banda elástica de pie",
        imagen: [
          'ExtensionDeCuadricepsBandaElastica.gif',
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
  factory Ejercicio.extensionDeCuadricepsConBandaElasticaSentado() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cuádriceps_con_banda_elástica_sentado".tr(),
        nombreEs: "Extensión de cuádriceps con banda elástica sentado",
        imagen: [
          '30081301-Resistance-Band-Leg-Extension-(female)_Thighs_180.gif',
        ],
        descripcion: '',
        material: [
          'elasticos',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
factory Ejercicio.sentadillaLateralConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_lateral_con_trx".tr(),
        nombreEs: "Sentadilla lateral con TRX",
        imagen: [
          '11321301-Suspender-Side-Lunge_Thighs_180.gif',
        ],
        descripcion: '',
        material: [
          'trx',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
  factory Ejercicio.zancadasConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_con_trx".tr(),
        nombreEs: "Zancadas con TRX",
        imagen: [
          '11191301-Suspender-Lunge-Back-Crossover_Thighs_180.gif',
        ],
        descripcion: '',
        material: [
          'trx',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

  factory Ejercicio.sentadillaAUnaPiernaConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_a_una_pierna_con_trx".tr(),
        nombreEs: "Sentadilla a una pierna con TRX",
        imagen: [
          '11191301-Suspender-Lunge-Back-Crossover_Thighs_180.gif',
        ],
        descripcion: '',
        material: [
          'trx',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
  factory Ejercicio.pistolSquatConKettlebell() {
    return Ejercicio(
        nombre: "_Ejercicios.pistol_squat_con_kettlebell".tr(),
        nombreEs: "Pistol squat con kettlebell",
        imagen: [
          'PistolSquatConKetbell.gif',
        ],
        descripcion: '',
        material: [
          'kettlebell',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }

factory Ejercicio.zancadasConKettlebell() {
    return Ejercicio(
        nombre: "_Ejercicios.zancadas_con_kettlebell".tr(),
        nombreEs: "Zancadas con kettlebell",
        imagen: [
          ' ZancadasConKetbell.gif',
        ],
        descripcion: '',
        material: [
          'kettlebell',
        ],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 28);
  }
 
  // FEMORAL

  // flexion de rodilla

  factory Ejercicio.nordicCurl() {
    return Ejercicio(
        nombre: "_Ejercicios.nordic_curl".tr(),
        nombreEs: "Nordic curl",
        imagen: ['NordicCurl.gif'],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }
  factory Ejercicio.femoralTumbadoConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.femoral_tumbado_con_mancuerna".tr(),
        nombreEs: "Femoral tumbado con mancuerna",
        imagen: ['FemoralTumbadoConMancuerna.gif'],
        descripcion: '',
        material: ['mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }

  factory Ejercicio.curlFemoralConToalla() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_con_toalla".tr(),
        nombreEs: "Curl femoral con toalla",
        imagen: ['hamstringworkwithblanket.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas', 'poleas', 'elasticos'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }

  factory Ejercicio.curlFemoralSentadoEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_sentado".tr(),
        nombreEs: "Curl femoral sentado",
        imagen: ['CurlFemoralSentado.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }

  factory Ejercicio.curlFemoralDePie() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_de_pie".tr(),
        nombreEs: "Curl femoral de pie",
        imagen: ['FemoralDePie.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }

  factory Ejercicio.curlFemoralTumbado() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_tumbado".tr(),
        nombreEs: "Curl femoral tumbado",
        imagen: ['FemoralTumbado.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }

  factory Ejercicio.nordicCurlAsistidoEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.nordic_curl_asistido_en_polea".tr(),
        nombreEs: "Nordic curl asistido en polea",
        imagen: ['NordicCurlAsistidoEnPolea.gif'],
        descripcion: '',
        material: ['polea', 'poleaalta'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }
  factory Ejercicio.curlFemoralDePieConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_de_pie_con_banda_elástica".tr(),
        nombreEs: "Curl femoral de pie con banda elástica",
        imagen: [
          '24221301-Resistance-Band-Leg-Curl_Thighs_180.gif',
          'FemoralDePieBandaElastica.gif',
        ],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }

  factory Ejercicio.curlFemoralTumbadoConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_tumbado_con_banda_elástica".tr(),
        nombreEs: "Curl femoral tumbado con banda elástica",
        imagen: ['CurlFemoralBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }
  factory Ejercicio.curlFemoralTumbadoConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_femoral_tumbado_con_trx".tr(),
        nombreEs: "Curl femoral tumbado con TRX",
        imagen: ['10831301-Suspender-Leg-Curl_Thighs_360.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }
  // Extension de cadera rodilla sin flexion (rigida o semirigida)

  factory Ejercicio.buenosDias() {
    return Ejercicio(
        nombre: "_Ejercicios.buenos_días".tr(),
        nombreEs: "Buenos días",
        imagen: ['BuenosDias.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pesoMuertoAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.peso_muerto_a_una_pierna".tr(),
        nombreEs: "Peso muerto a una pierna",
        imagen: ['PesoMuertoAUnaPierna.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoRumano() {
    return Ejercicio(
        nombre: "_Ejercicios.peso_muerto_rumano".tr(),
        nombreEs: "Peso muerto rumano",
        imagen: ['PesoMuertoRumano.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pesoMuertoPiernasRigidasConMancuernas() {
    return Ejercicio(
       nombre: "_Ejercicios.peso_muerto_piernas_rígidas_con_mancuernas".tr(),
        nombreEs: "Peso muerto piernas rígidas con mancuernas",
        imagen: ['PesoMuertoPiernasRigidasConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoRumanoConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.peso_muerto_rumano_con_mancuernas".tr(),
        nombreEs: "Peso muerto rumano con mancuernas",
        imagen: ['PesoMuertoRumanoConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoAUnaPiernaConMancuernas() {
    return Ejercicio(
        nombre: "_Ejercicios.peso_muerto_a_una_pierna_con_mancuernas".tr(),
        nombreEs: "Peso muerto a una pierna con mancuernas",
        imagen: [
          '27501301-Dumbbell-Single-Leg-Deadlift-with-Wall-Support-(female)_Hips_360.gif'
        ],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.hiperextensionesReversasEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.hiperextensiones_reversas_en_máquina".tr(),
        nombreEs: "Hiperextensiones reversas en máquina",
        imagen: ['HiperExtensionesReversasEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.hiperExtensionesReversas() {
    return Ejercicio(
        nombre: "_Ejercicios.hiperextensiones_reversas".tr(),
        nombreEs: "Hiperextensiones reversas",
        imagen: ['HiperExtensionesReversas.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas', 'polea', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pullThroughPiernasRigidasEnPolea() {
    return Ejercicio(
      nombre: "_Ejercicios.pull_through_piernas_rígidas_en_polea".tr(),
        nombreEs: "Pull through piernas rígidas en polea",
        imagen: ['PullThroughPiernasRigidasEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.buenosDiasConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.buenos_días_con_banda_elástica".tr(),
        nombreEs: "Buenos días con banda elástica",
        imagen: ['BuenosDiasBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pesoMuertoRumanoConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.peso_muerto_rumano_con_banda_elástica".tr(),
        nombreEs: "Peso muerto rumano con banda elástica",
        imagen: ['PesoMuertoPiernasRigidasBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoAUnaPiernaConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.peso_muerto_rumano_a_una_pierna_con_banda_elástica".tr(),
        nombreEs: "Peso muerto rumano a una pierna con banda elástica",
        imagen: ['PesoMuertoRumanoAUnaPiernaBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.extensionDeCaderaPiernasRigidasConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cadera_piernas_rígidas_con_banda_elástica".tr(),
        nombreEs: "Extensión de cadera piernas rígidas con banda elástica",
        imagen: ['09011301-Band-hip-extension_Hips_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.extensionDeCaderaPiernasRigidasConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cadera_piernas_rígidas_con_trx".tr(),
        nombreEs: "Extensión de cadera piernas rígidas con TRX",
        imagen: ['11571301-Suspender-Hip-Hinge_Hips_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
factory Ejercicio.pesoMuertoRumanoAUnaPiernaConTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_rumano_a_una_pierna_con_trx".tr(),
        nombreEs: "Peso muerto rumano a una pierna con TRX",
        imagen: ['11551301-Suspender-Single-Leg-Deadlift_Hips_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  // GLUTEO

// Axial

  factory Ejercicio.sentadillaSumo() {
    return Ejercicio(
      nombre: "_Ejercicios.sentadilla_sumo".tr(),
        nombreEs: "Sentadilla sumo",
        imagen: ['SentadillaSumo.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.pesoMuertoSumo() {
    return Ejercicio(
      nombre: "_Ejercicios.peso_muerto_sumo".tr(),
        nombreEs: "Peso muerto sumo",
        imagen: ['PesoMuertoSumo.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.sentadillaSumoConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_sumo_con_mancuerna".tr(),
        nombreEs: "Sentadilla sumo con mancuerna",
        imagen: ['SentadillaSumoConMancuerna.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }

  factory Ejercicio.sentadillaSumoConMancuernaEntreBancos() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_sumo_con_mancuerna_entre_bancos".tr(),
        nombreEs: "Sentadilla sumo con mancuerna entre bancos",
        imagen: [
          '24311301-Dumbbell-Sumo-Squat-off-Benches-(female)_Hips_180.gif'
        ],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }

  factory Ejercicio.sentadillaSumoEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.sentadilla_sumo_en_multipower".tr(),
        nombreEs: "Sentadilla sumo en multipower",
        imagen: ['SentadillaSumoEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.sentadillaSumoEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_sumo_en_polea".tr(),
        nombreEs: "Sentadilla sumo en polea",
        imagen: ['33541101-Cable-Front-Squat-(VERSION-2)_Thighs_small.png'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        material: ['polea'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }

  factory Ejercicio.sentadillaSumoConBandasElasticas() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_sumo_con_bandas_elásticas".tr(),
        nombreEs: "Sentadilla sumo con bandas elásticas",
        imagen: ['SentadillasBandaElastica.gif'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }

  factory Ejercicio.sentadillaSumoAUnaPiernaConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_sumo_a_una_pierna_con_trx".tr(),
        nombreEs: "Sentadilla sumo a una pierna con TRX",
        imagen: ['SentadillaAbiertaAUnaPiernaEnTRX.gif'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        material: ['trx'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.sentadillaSumoConKettlebell() {
    return Ejercicio(
      nombre: "_Ejercicios.sentadilla_sumo_con_kettlebell".tr(),
        nombreEs: "Sentadilla sumo con kettlebell",
        imagen: ['SentadillaSumoConKetbell.gif','SentadillaSumoConKetbellSinStep.gif'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        material: ['kettlebell'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  // Ejercicios Horizontales pesados

  factory Ejercicio.hipThrust() {
    return Ejercicio(
        nombre: "_Ejercicios.hip_thrust".tr(),
        nombreEs: "Hip Thrust",
        imagen: ['HipThrust.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }

  factory Ejercicio.puenteDeGluteosConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.puente_de_glúteos_con_barra".tr(),
        nombreEs: "Puente de glúteos con barra",
        imagen: ['PuenteDeGluteos.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }
  factory Ejercicio.hipThrustPesoCorporal() {
    return Ejercicio(
        nombre: "_Ejercicios.hip_thrust_con_carga_externa".tr(),
        nombreEs: "Hip Thrust con carga externa",
        imagen: ['HipThrustPesoCorporal.gif'],
        descripcion: 'Añade carga encima de ti, por ejemplo con una mochila',
        material: ['mancuernas', 'polea'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }
  factory Ejercicio.hipThrustEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.hip_thrust_en_máquina".tr(),
        nombreEs: "Hip Thrust en máquina",
        imagen: ['HipThrustEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }

  factory Ejercicio.hipThrustConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.hip_thrust_con_banda_elástica".tr(),
        nombreEs: "Hip Thrust con banda elástica",
        imagen: [
          '27601301-Resistance-Band-Hip-Thrust_Hips_180.gif',
          'HipThrustBandaElastica.gif'
        ],
        descripcion: 'Puedes añadir mas carga si lo necesitas',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }

  factory Ejercicio.hipThrustDeRodillasConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.hip_thrust_de_rodillas_con_banda_elástica".tr(),
        nombreEs: "Hip Thrust de rodillas con banda elástica",
        imagen: [
          '32361301-Resistance-Band-Hip-Thrusts-on-Knees-(Female)_Hips_360.gif'
        ],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }

  // Ejercicios Horizontales ligeros

  factory Ejercicio.hipThrustAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.hip_thrust_a_una_pierna".tr(),
        nombreEs: "Hip thrust a una pierna",
        imagen: ['HipThrustAUnaPierna.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.stepUpEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.step_up_en_multipower".tr(),
        nombreEs: "Step up en multipower",
        imagen: ['StepUpEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  } 
  factory Ejercicio.sentadillaBulgaraEnfasisGluteo() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_búlgara_con_barra_(enfasis_glúteo)".tr(),
        nombreEs: "Sentadilla búlgara con barra (enfasis glúteo)",
        imagen: ['SentadillaBulgara.gif'],
        descripcion:
            'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.frogHipThrust() {
    return Ejercicio(
        nombre: "_Ejercicios.frog_hip_thrust".tr(),
        nombreEs: "Frog hip thrust",
        imagen: ['FrogHipThrust.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.puenteDeGluteosAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.puente_de_glúteos_a_una_pierna".tr(),
        nombreEs: "Puente de glúteos a una pierna",
        imagen: ['PuenteDeGluteosAUnaPierna.gif'],
        descripcion: 'Añade carga encima de ti, por ejemplo con una mochila',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.extensionDeGluteoAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.extensiones_de_glúteo_a_una_pierna".tr(),
        nombreEs: "Extensiones de glúteo a una pierna",
        imagen: ['ExtensionDeGluteoAUnaPierna.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.patadaDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_glúteo".tr(),
        nombreEs: "Patada de glúteo",
        imagen: ['PatadaDeGluteoPesoCorporal.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteo() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla búlgara con mancuernas (énfasis glúteo)".tr(),
        nombreEs: "Sentadilla búlgara con mancuernas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraConMancuerna.gif'],
        descripcion:
            'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteoGym() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla búlgara con mancuernas (énfasis glúteo)".tr(),
        nombreEs: "Sentadilla búlgara con mancuernas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraConMancuerna.gif'],
        descripcion:
            'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.hiperextensionesReversasEnMultipower() {
    return Ejercicio(
         nombre: "_Ejercicios.hiperextensiones reversas en multipower".tr(),
        nombreEs: "Hiperextensiones reversas en multipower",
        imagen: ['HiperextensionesReversasEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.patadaDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_glúteos_en_máquina".tr(),
        nombreEs: "Patada de glúteos en máquina",
        imagen: ['PatadaDeGluteoEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.patadaDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_glúteo_en_polea".tr(),
        nombreEs: "Patada de glúteo en polea",
        imagen: ['PatadaDeGluteoEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.pullThroughEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.pull_through_en_polea".tr(),
        nombreEs: "Pull through en polea",
        imagen: ['PullThroughEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.pullThroughConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.pull_through_con_banda_elástica".tr(),
        nombreEs: "Pull through con banda elástica",
        imagen: ['PullThroughBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.extensionDeCaderaConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cadera_con_banda_elástica".tr(),
        nombreEs: "Extensión de cadera con banda elástica",
        imagen: ['ExtensionDeCaderaBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.patadaDeGluteoConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.patada_de_glúteo_con_banda_elástica".tr(),
        nombreEs: "Patada de glúteo con banda elástica",
        imagen: ['PatadaDeGluteoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.sentadillaBulgaraConBandasElasticasEnfasisGluteo() {
    return Ejercicio(
        nombre: "_Ejercicios.sentadilla_búlgara_con_bandas_elásticas_(énfasis_glúteo)".tr(),
        nombreEs: "Sentadilla búlgara con bandas elásticas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraBandaElastica.gif'],
        descripcion:
            'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
   factory Ejercicio.extensionDeCaderaConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cadera_con_trx".tr(),
        nombreEs: "Extensión de cadera con TRX",
        imagen: ['10791301-Suspender-Hyperextension_Back_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
   factory Ejercicio.puenteDeGluteosConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.puente_de_glúteos_con_trx".tr(),
        nombreEs: "Puente de glúteos con TRX",
        imagen: ['10781301-Suspender-Hip-Bridge_Hips_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
   factory Ejercicio.extensionDeCaderaConKettlebell() {
    return Ejercicio(
        nombre: "_Ejercicios.extensión_de_cadera_con_kettlebell".tr(),
        nombreEs: "Extensión de cadera con kettlebell",
        imagen: ['PullThroughtConKetbell.gif'],
        descripcion: '',
        material: ['kettlebell'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  // AbduccionDeGluteo

  factory Ejercicio.abduccionDeGluteoConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_con_barra".tr(),
        nombreEs: "Abducción de glúteo con barra",
        imagen: ['AbduccionDeGluteo.gif'],
        descripcion: '',
        material: ['barra'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }
  factory Ejercicio.abduccionDeGluteoConCaderaExtendida() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_con_cadera_extendida".tr(),
        nombreEs: "Abducción de glúteo con cadera extendida",
        imagen: ['AbduccionDeGluteoPesoCorporal.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.abduccionDeGluteoConPesoCorporal() {
    return Ejercicio(
         nombre: "_Ejercicios.abducción_de_glúteo_con_peso_corporal".tr(),
        nombreEs: "Abducción de glúteo con peso corporal",
        imagen: ['AbduccionDeGluteoPesoCorporal2.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.abduccionDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_sentado_en_máquina".tr(),
        nombreEs: "Abducción de glúteo sentado en máquina",
        imagen: ['AbduccionesEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.abduccionesDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_en_máquina".tr(),
        nombreEs: "Abducción de glúteo en máquina",
        imagen: ['AbduccionesMaquinaDeGluteo.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.abduccionDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_en_polea".tr(),
        nombreEs: "Abducción de glúteo en polea",
        imagen: ['08791301-Cable-hip-abduction-(version-2)_Hips_180.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.abduccionDeGluteoConGomaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_con_banda_elástica".tr(),
        nombreEs: "Abducción de glúteo con banda elástica",
        imagen: ['AbduccionesDeGluteoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }
  factory Ejercicio.abduccionDeGluteoConGomaElasticaTumbado() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_con_banda_elástica_tumbado".tr(),
        nombreEs: "Abducción de glúteo con banda elástica tumbado",
        imagen: ['24211301-Resistance-Band-Lying-Abduction_Hips_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }
  factory Ejercicio.abduccionDeGluteoConGomaElasticaDeRodillas() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_con_banda_elástica_de_rodillas".tr(),
        nombreEs: "Abducción de glúteo con banda elástica de rodillas",
        imagen: [
          '24181301-Resistance-Band-Bent-Leg-Side-Kick-(kneeling)_Hips_180.gif'
        ],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.pasosLateralesConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.pasos_laterales_con_banda_elástica".tr(),
        nombreEs: "Pasos laterales con banda elástica",
        imagen: ['24601301-Resistance-Band-Lateral-Walk_Hips_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }

  factory Ejercicio.abduccionDeGluteoConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_con_trx".tr(),
        nombreEs: "Abducción de glúteo con TRX",
        imagen: [
          '10771301-Suspender-Hip-Abduction_Hips_180.gif'
        ],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }
  // Aduccion de gluteo
  factory Ejercicio.aduccionDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "_Ejercicios.aducciones_de_glúteo_con_peso_corporal".tr(),
        nombreEs: "Aducciones de glúteo con peso corporal",
        imagen: ['AduccionDeGluteoPesoCorporal.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 35);
  }

  factory Ejercicio.aduccionesEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.abducción_de_glúteo_sentado_en_máquina".tr(),
        nombreEs: "Aductores en máquina sentado",
        imagen: ['AduccionesEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 35);
  }
  factory Ejercicio.aduccionDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.aducción_de_glúteo_en_polea".tr(),
        nombreEs: "Aducción de glúteo en polea",
        imagen: ['AduccionEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 35);
  }
  factory Ejercicio.aduccionDeGluteoConGomaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.aducción_de_glúteo_con_banda_elástica".tr(),
        nombreEs: "Aducción de glúteo con banda elástica",
        imagen: ['AduccionesBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 35);
  }
  // TRAPECIO

  factory Ejercicio.remoAlMentonConBarraRecta() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_al_mentón_con_barra".tr(),
        nombreEs: "Remo al mentón con barra",
        imagen: ['RemoAlMenton.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }

  factory Ejercicio.encogimientosDeTrapecioConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_de_trapecio_con_barra".tr(),
        nombreEs: "Encogimientos de trapecio con barra",
        imagen: ['00951301-Barbell-Shrug_Back_180.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }
  factory Ejercicio.encogimientosDeTrapecioConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_de_trapecio_con_mancuerna".tr(),
        nombreEs: "Encogimientos de trapecio con mancuerna",
        imagen: ['EncogimientosDeTrapecioConMancuerna.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }

  factory Ejercicio.remoAlMentonConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_al_mentón_con_mancuerna".tr(),
        nombreEs: "Remo al mentón con mancuerna",
        imagen: ['RemoAlMentonConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }

  factory Ejercicio.encogimientosDeTrapecioEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_de_trapecio_en_multipower".tr(),
        nombreEs: "Encogimientos de trapecio en multipower",
        imagen: ['EncogimientosDeTrapecioEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }

  factory Ejercicio.remoAlMentonEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_al_mentón_en_multipower".tr(),
        nombreEs: "Remo al mentón en multipower",
        imagen: ['RemoAlMentonEnMultipower.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }

  factory Ejercicio.remoAlMentonEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_al_mentón_en_polea".tr(),
        nombreEs: "Remo al mentón en polea",
        imagen: ['RemoAlMentonEnPoleaBaja.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }

  factory Ejercicio.encogimientosDeTrapecioEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_de_trapecio_en_polea".tr(),
        nombreEs: "Encogimientos de trapecio en polea",
        imagen: ['02201301-Cable-Shrug_Back_180.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }
  factory Ejercicio.encogimientosDeTrapecioConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_de_trapecio_con_banda_elástica".tr(),
        nombreEs: "Encogimientos de trapecio con banda elástica",
        imagen: ['EncomientosDeTrapecioBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }
  factory Ejercicio.remoAlMentonConBandaElastica() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_al_mentón_con_banda_elástica".tr(),
        nombreEs: "Remo al mentón con banda elástica",
        imagen: ['RemoAlMentonBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Trapecio',
        },
        patron: 36);
  }
  // ABDOMINALES

// recto abdominal
  factory Ejercicio.ruedaAbdominalConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.rueda_abdominal_con_barra".tr(),
        nombreEs: "Rueda abdominal con barra",
        imagen: ['RuedaAbdominalBarra.gif'],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.encogimientosAbdominales() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales".tr(),
        nombreEs: "Encogimientos abdominales",
        imagen: ['AbdominalesEnElSuelo.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'barra', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }

  factory Ejercicio.encogimientosAbdominalesColgado() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales_colgado".tr(),
        nombreEs: "Encogimientos abdominales colgado",
        imagen: ['AbdominalesColgado.gif', 'AbdominalesColgados.gif'],
        descripcion: '',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.encogimientosAbdominalesEnFondos() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales_en_máquina_de_fondos".tr(),
        nombreEs: "Encogimientos abdominales en máquina de fondos",
        imagen: ['AbdominalesEnFondos.gif'],
        descripcion: '',
        material: ['gym', 'paralelas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }

  factory Ejercicio.encogimientosAbdominalesEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales_en_máquina".tr(),
        nombreEs: "Encogimientos abdominales en máquina",
        imagen: ['AbdominalesEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.absRoller() {
    return Ejercicio(
        nombre: "_Ejercicios.abs_roller".tr(),
        nombreEs: "Abs roller",
        imagen: ['AbsRoller.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.encogimientosAbdominalesEnPolea() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales_en_polea".tr(),
        nombreEs: "Encogimientos abdominales en polea",
        imagen: ['EncogimientosAbdominalesEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.ruedaAbdominal() {
    return Ejercicio(
        nombre: "_Ejercicios.rueda_abdominal".tr(),
        nombreEs: "Rueda abdominal",
        imagen: ['23321301-Wheel-Rollout-(female)_Waist_360.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }

  factory Ejercicio.planchaAbdominal() {
    return Ejercicio(
        nombre: "_Ejercicios.plancha_abdominal".tr(),
        nombreEs: "Plancha abdominal",
        imagen: ['04651101-Front-Plank_Waist_small.png'],
        descripcion: '',
        material: ['gym', 'barra', 'mancuernas', 'polea', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.planchaAbdominalConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.plancha_abdominal_con_trx".tr(),
        nombreEs: "Plancha abdominal con TRX",
        imagen: ['11351301-Suspender-Single-Leg-Plank_Waist_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.ruedaAbdominalConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.rueda_abdominal_con_trx".tr(),
        nombreEs: "Rueda abdominal con TRX",
        imagen: ['10911301-Suspender-Rollout_Waist_180.gif',
        'AbdominalesConTRX.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
   factory Ejercicio.encogimientosAbdominalesConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales_con_trx".tr(),
        nombreEs: "Encogimientos abdominales con TRX",
        imagen: ['11471301-Suspender-Supine-Crunch_Waist_180.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
  factory Ejercicio.encogimientosAbdominalesInvertidosConTrx() {
    return Ejercicio(
        nombre: "_Ejercicios.encogimientos_abdominales_invertidos_con_trx".tr(),
        nombreEs: "Encogimientos abdominales invertidos con TRX",
        imagen: ['CrunchAbdominalInvertidoConTRX.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
// rotacion de tronco

  factory Ejercicio.encogimientosAbdominalesColgadoConTorsion() {
    return Ejercicio(
      nombre: "_Ejercicios.encogimientos_abdominales_colgado_con_rotación_de_tronco".tr(),
      nombreEs: "Encogimientos abdominales colgado con rotación de tronco",
      imagen: ['OblicuosColgado.gif'],
      descripcion: '',
      material: ['gym', 'dominadas'],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
      principiantes: false,
    );
  }

  factory Ejercicio.encogimientosAbdominalesConTorsion() {
    return Ejercicio(
      nombre: "_Ejercicios.encogimientos_abdominales_con_rotación_de_tronco".tr(),
      nombreEs: "Encogimientos abdominales con rotación de tronco",
      imagen: ['AbdominalesConGiro.gif'],
      descripcion: '',
      material: ['gym', 'polea', 'barra', 'mancuernas', 'elasticos'],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }

  factory Ejercicio.planchaLateral() {
    return Ejercicio(
      nombre: "_Ejercicios.plancha_lateral".tr(),
      nombreEs: "Plancha lateral",
      imagen: ['07151301-Side-Plank-m_Waist_180.gif'],
      descripcion: '',
      material: ['gym', 'polea', 'barra', 'mancuernas', 'elasticos'],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }

  factory Ejercicio.lenador() {
    return Ejercicio(
      nombre: "_Ejercicios.leñador".tr(),
      nombreEs: "Leñador",
      imagen: ['Leñador.gif'],
      descripcion: '',
      material: [
        'gym',
        'polea',
      ],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }

  factory Ejercicio.pressPallof() {
    return Ejercicio(
      nombre: "_Ejercicios.press_pallof".tr(),
      nombreEs: "Press pallof",
      imagen: ['PressPallof.gif'],
      descripcion: '',
      material: [
        'gym',
        'polea',
      ],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }

  factory Ejercicio.lenadorConElasticos() {
    return Ejercicio(
      nombre: "_Ejercicios.leñador_con_elástico".tr(),
      nombreEs: "Leñador con elástico",
      imagen: ['LeñadorBandaElastica.gif'],
      descripcion: '',
      material: [
        'elasticos',
      ],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }

  factory Ejercicio.pressPallofConBandaElastica() {
    return Ejercicio(
      nombre: "_Ejercicios.press_pallof_con_elástico".tr(),
      nombreEs: "Press pallof con elástico",
      imagen: ['PressPallofBandaElastica.gif'],
      descripcion: '',
      material: [
        'elasticos',
      ],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }
  factory Ejercicio.planchaLateralConTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.plancha_lateral_con_trx".tr(),
      nombreEs: "Plancha lateral con TRX",
      imagen: ['11451301-Suspender-Star-Plank_Waist_180.gif'],
      descripcion: '',
      material: [
        'trx',
      ],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }
  factory Ejercicio.kettlebellWindmill() {
    return Ejercicio(
      nombre: "_Ejercicios.kettlebell_windmill".tr(),
      nombreEs: "Kettlebell windmill",
      imagen: ['05541301-KettlebellWindmillWaist.gif'],
      descripcion: '',
      material: [
        'kettlebell',
      ],
      musculosTrabajados: {
        'Primario1': 'Abs',
      },
      patron: 40,
    );
  }
// Gemelo Rodilla Extendida
  factory Ejercicio.gemeloDePieConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_con_barra_recta".tr(),
        nombreEs: "Gemelo de pie con barra recta",
        imagen: ['GemeloDePie.gif'],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloDePieConMancuerna() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_con_mancuerna".tr(),
        nombreEs: "Gemelo de pie con mancuerna",
        imagen: ['04171301-Dumbbell-Standing-Calf-Raise_Calf_180.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloDePieConMancuernaAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_con_mancuerna_a_una_pierna".tr(),
        nombreEs: "Gemelo de pie con mancuerna a una pierna",
        imagen: ['04091301-Dumbbell-Single-Leg-Calf-Raise_Calves_180.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloDePie() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie".tr(),
        nombreEs: "Gemelo de pie",
        imagen: ['GemeloDePieEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }

  factory Ejercicio.gemeloEnMaquina() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_en_máquina".tr(),
        nombreEs: "Gemelo en máquina",
        imagen: ['GemeloEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }

  factory Ejercicio.gemeloDePieEnMultipower() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_en_multipower".tr(),
        nombreEs: "Gemelo de pie en multipower",
        imagen: ['GemeloDePieEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }

  factory Ejercicio.gemeloEnPrensaInclinada() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_en_prensa_inclinada".tr(),
        nombreEs: "Gemelo en prensa inclinada",
        imagen: ['GemeloEnPrensa2.gif', 'GemeloEnPrensa.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloDePieConCargaExterna() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_con_carga_externa".tr(),
        nombreEs: "Gemelo de pie con carga externa",
        imagen: ['GemeloDePie.gif'],
        descripcion:
            'Hazlo con una carga externa, por ejemplo una mochila o una garrafa de agua',
        material: ['comodin'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }

  factory Ejercicio.gemeloDePieConBandasElasticas() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_con_banda_elástica".tr(),
        nombreEs: "Gemelo de pie con banda elástica",
        imagen: ['GemeloBandaElastica.gif', 'GemeloBandaElastica2.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  
  factory Ejercicio.gemeloDePieConBandasElasticasAUnaPierna() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_de_pie_a_una_pierna_con_banda_elástica".tr(),
        nombreEs: "Gemelo de pie a una pierna con banda elástica",
        imagen: ['GemeloDePieAUnaPierna.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloDePieConTrx() {
    return Ejercicio(
      nombre: "_Ejercicios.gemelo_de_pie_con_trx".tr(),
        nombreEs: "Gemelo de pie con TRX",
        imagen: ['11541301-Suspender-Calf-Raise_Calves_360.gif'],
        descripcion: '',
        material: ['trx'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
// Gemelo Rodilla Flexionada

  factory Ejercicio.gemeloSentadoConBarra() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_sentado_con_barra_recta".tr(),
        nombreEs: "Gemelo sentado con barra recta",
        imagen: ['GemloSentado.gif'],
        descripcion: '',
        material: ['barra'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 38);
  }

  factory Ejercicio.gemeloSentadoConMancuernas() {
    return Ejercicio(
      nombre: "_Ejercicios.gemelo_sentado_con_mancuernas".tr(),
        nombreEs: "Gemelo sentado con mancuernas",
        imagen: ['GemeloSentadoConMancuernas.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 38);
  }

  factory Ejercicio.gemeloSentado() {
    return Ejercicio(
       nombre: "_Ejercicios.gemelo_sentado".tr(),
        nombreEs: "Gemelo sentado",
        imagen: ['GemeloSentadoEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 38);
  }
  factory Ejercicio.gemeloSentadoEnMultipower() {
    return Ejercicio(
      nombre: "_Ejercicios.gemelo_sentado_en_multipower".tr(),
        nombreEs: "Gemelo sentado en multipower",
        imagen: ['GemeloSentadoEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 38);
  }
  factory Ejercicio.gemeloSentadoConCargaExterna() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_sentado_con_carga_externa".tr(),
        nombreEs: "Gemelo sentado con carga externa",
        imagen: ['GemloSentado.gif'],
        descripcion:
            'Hazlo con una carga externa, por ejemplo, con una mochila encima de tus piernas.',
        material: ['comodin'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 38);
  }

  // factory Ejercicio.pressInclinadoConBarraSerieDescendente() {
  //   return Ejercicio(
       
  //       nombreEs: "Press inclinado con barra (Serie descendente doble)",
  //       imagen: ['PressBanca.gif'],
  //       descripcion: '',
  //       comentarios: Comentarios(
  //           semana1: 'Malas Sensaciones,dolor en los hombros',
  //           semana2: 'null',
  //           semana3: 'null',
  //           semana4: 'null'),
  //       material: ['gym'],
  //       patron: 38);
  // }
  factory Ejercicio.gemeloSentadoConBandasElasticas() {
    return Ejercicio(
        nombre: "_Ejercicios.gemelo_sentado_con_banda_elástica".tr(),
        nombreEs: "Gemelo sentado con banda elástica",
        imagen: ['24251301-Resistance-Band-Calf-Raise_Calves_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 38);
  }
  // factory Ejercicio.pressInclinadoConBarraDescansoPausa() {
  //   return Ejercicio(
  //       nombre: 'Press inclinado con barra (Descanso-Pausa simple de 20")',
  //       imagen: ['PressInclinadoConBarra.jpg'],
  //       descripcion: '',
  //       comentarios: Comentarios(
  //           semana1: 'Malas Sensaciones,dolor en los hombros',
  //           semana2: 'null',
  //           semana3: 'null',
  //           semana4: 'null'),
  //       material: ['gym'],
  //       patron: 38);
  // }
factory Ejercicio.pressHorizontalEnMaquinaAgarreNeutro1() {
    return Ejercicio(
        nombre: "_Ejercicios.press_vertical_en_máquina_agarre_neutro".tr(),
        nombreEs: "Press vertical en máquina agarre neutro",
        imagen: ['PressVerticalEnMaquinaAgarreNeutro.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
factory Ejercicio.pressHorizontalEnMaquina1() {
    return Ejercicio(
        nombre: "_Ejercicios.press_vertical_en_máquina".tr(),
        nombreEs: "Press vertical en máquina",
        imagen: ['PressVerticalEnMaquina.gif'],
        descripcion: '',
        material: [
          'gym',
        ],
        musculosTrabajados: {
          'Primario1': 'Pecho',
          'Secundario1': 'Hombro Frontal',
          'Secundario2': 'Triceps'
        },
        patron: 1);
  }
factory Ejercicio.flexionesPliometricas1() {
    return Ejercicio(
        nombre: "_Ejercicios.flexiones_pliométricas".tr(),
        nombreEs: "Flexiones pliométricas",
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
        musculosTrabajados:{'Primario1':'Pecho',},
        patron: 4    
        
            );
       
  }
  factory Ejercicio.wipersIsometricos1() {
    return Ejercicio(
        nombre: "_Ejercicios.wipers_ismétricos".tr(),
        nombreEs: "Wipers ismétricos",
        imagen: ['05001301-Isometric-Wipers_Chest_360.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);}
  factory Ejercicio.jalonDorsalAgarreCerrado1() {
    return Ejercicio(
        nombre: "_Ejercicios.jalón_dorsal_agarre_en_V_invertida".tr(),
        nombreEs: "Jalón dorsal agarre en V invertida",
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
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'},
        patron: 9
      
            );
    
  }
    factory Ejercicio.remoEnPuntaAgarreAncho1() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_en_punta_agarre_ancho".tr(),
        nombreEs: "Remo en punta agarre ancho",
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
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'},
        patron: 10
            );
    
       
  }
      factory Ejercicio.elevacionLateralEnMaquina1() {
    return Ejercicio(
        nombre: "_Ejercicios.elevaciones_laterales_en_máquina".tr(),
        nombreEs: "Elevaciones laterales en máquina",
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',} ,
        patron: 16   
        
            ); }

  factory Ejercicio.elevacionLateralEnCruceDePoleas1() {
    return Ejercicio(
        nombre: "_Ejercicios.elevaciones_laterales_en_cruce_de_poleas".tr(),
        nombreEs: "Elevaciones laterales en cruce de poleas",
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',} ,
        patron: 16   
     
            ); } 
  factory Ejercicio.remoAlMentonAgarreAncho1() {
    return Ejercicio(
        nombre: "_Ejercicios.remo_al_mentón_agarre_ancho".tr(),
        nombreEs: "Remo al mentón agarre ancho",
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',}   ,
        patron: 17
            ); }
          
         factory Ejercicio.elevacionesLateralesCrucifixConMancuerna1() {
    return Ejercicio(
        nombre: "_Ejercicios.elevaciones_laterales_crucifix_con_mancuernas".tr(),
        nombreEs: "Elevaciones laterales crucifix con mancuernas",
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    ,
        patron: 17

        
            ); }
     
        
  factory Ejercicio.abduccionHorizontalEnCruceDePoleas1() {
    return Ejercicio(
        nombre: "_Ejercicios.hombro_posterior_en_cruce_de_poleas".tr(),
        nombreEs: "Hombro posterior en cruce de poleas",
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
         musculosTrabajados:{'Primario1':'Hombro Posterior',} ,
        patron: 19  
        
            ); }
factory Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna1() {
    return Ejercicio(
        nombre: "_Ejercicios.curl_concentrado_en_banco_inclinado_con_mancuerna".tr(),
        nombreEs: "Curl concentrado en banco inclinado con mancuerna",
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
        musculosTrabajados:{'Primario1':'Biceps',} ,
        patron: 20
        
       
            );
    
       
  }
//    factory Ejercicio.bandasElasticasElevacionLateral() {
//     return Ejercicio(
//         nombre: "Elevacion lateral con bandas elasticas",
//         imagen: ['ElevacionLateralConMancuernas.jpg'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
        nombre:
            "Serie Alterna Curl de biceps en banco inclinado con mancuernas y press frances",
        imagen: [
          'PressBanca.gif',
          'PressBanca.gif',
        ],
        descripcion: '',
        material: ['gym']);
  }

//   factory Ejercicio.flexionesCerradasConBandasElasticas() {
//     return Ejercicio(
//         nombre: "Flexiones Cerradas con bandas elasticas",
//         imagen: ['PressBanca.gif'],
//         descripcion: '',
//         apuntescarga: Apuntescarga(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana4: ['no', 'no', 'no', 'no', 'no', 'no', 'no']),
//         apuntesreps: Apuntesreps(
//             semana1: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana2: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
//             semana3: ['no', 'no', 'no', 'no', 'no', 'no', 'no','no','no','no','no','no'],
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
    nombreEs = json['nombre'];
    imagen = json['imagen'] != null ? json['imagen'].cast<String>() : null;
    descripcion = json['descripcion'];

    apuntescarga = json['apuntescarga'] != null
        ? new Apuntescarga.fromJson(json['apuntescarga'])
        : Apuntescarga(semana1: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ], semana2: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ], semana3: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ], semana4: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ]);
    apuntesreps = json['apuntesreps'] != null
        ? new Apuntesreps.fromJson(json['apuntesreps'])
        : Apuntesreps(semana1: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ], semana2: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ], semana3: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ], semana4: [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ]);
    comentarios = json['comentarios'] != null
        ? new Comentarios.fromJson(json['comentarios'])
        : Comentarios(
            semana1: 'null', semana2: 'null', semana3: 'null', semana4: 'null');
  
    // musculosTrabajados = json['musculosTrabajados'];
    //  material = json['material'] != null ?
    //    json['material'].cast<String>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombre'] = this.nombreEs;
    // data['imagen'] = this.imagen;
    data['descripcion'] = (this.descripcion != "") ? this.descripcion : null;
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
   
    semana1 = (json['semana 1'] != null) ? json['semana 1'] : 'null';
    semana2 = (json['semana 2'] != null) ? json['semana 2'] : 'null';
    semana3 = (json['semana 3'] != null) ? json['semana 3'] : 'null';
    semana4 = (json['semana 4'] != null) ? json['semana 4'] : 'null';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['semana 1'] = (this.semana1 != 'null') ? this.semana1 : null;
    data['semana 2'] = (this.semana2 != 'null') ? this.semana2 : null;
    data['semana 3'] = (this.semana3 != 'null') ? this.semana3 : null;
    data['semana 4'] = (this.semana4 != 'null') ? this.semana4 : null;
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
    List<String> semana11 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];
    List<String> semana22 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];
    List<String> semana33 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];
    List<String> semana44 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];

    semana1 = (json['semana 1'] != null)
        ? (json['semana 1'] is! Map)
            ? json['semana 1'].cast<String>()
            : json['semana 1'].entries.forEach((element) {
                semana11.insert(
                    int.parse(element.key), element.value.toString());
                semana1 = semana11;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 1'] is! Map) ? semana1 = semana1 : semana1 = semana11;
    (json['semana 1'] != null && semana1.length < 12)
        ? semana1.insertAll(
            semana1.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana1 = semana1;
    semana2 = (json['semana 2'] != null)
        ? (json['semana 2'] is! Map)
            ? json['semana 2'].cast<String>()
            : json['semana 2'].entries.forEach((element) {
                semana22.insert(
                    int.parse(element.key), element.value.toString());
                semana2 = semana22;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 2'] is! Map) ? semana2 = semana2 : semana2 = semana22;
    (json['semana 2'] != null && semana2.length < 12)
        ? semana2.insertAll(
            semana2.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana2 = semana2;

    semana3 = (json['semana 3'] != null)
        ? (json['semana 3'] is! Map)
            ? json['semana 3'].cast<String>()
            : json['semana 3'].entries.forEach((element) {
                semana33.insert(
                    int.parse(element.key), element.value.toString());
                semana3 = semana33;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 3'] is! Map) ? semana3 = semana3 : semana3 = semana33;
    (json['semana 3'] != null && semana3.length < 12)
        ? semana3.insertAll(
            semana3.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana3 = semana3;

    semana4 = (json['semana 4'] != null)
        ? (json['semana 4'] is! Map)
            ? json['semana 4'].cast<String>()
            : json['semana 4'].entries.forEach((element) {
                semana44.insert(
                    int.parse(element.key), element.value.toString());
                semana4 = semana44;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 4'] is! Map) ? semana4 = semana4 : semana4 = semana44;
    (json['semana 4'] != null && semana4.length < 12)
        ? semana4.insertAll(
            semana4.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana4 = semana4;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['semana 1'] = (listEquals(this.semana1, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana1
        : null;
    data['semana 2'] = (listEquals(this.semana2, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana2
        : null;
    data['semana 3'] = (listEquals(this.semana3, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana3
        : null;
    data['semana 4'] = (listEquals(this.semana4, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana4
        : null;
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
    List<String> semana11 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];
    List<String> semana22 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];
    List<String> semana33 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];
    List<String> semana44 = [
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no',
      'no'
    ];

    semana1 = (json['semana 1'] != null)
        ? (json['semana 1'] is! Map)
            ? json['semana 1'].cast<String>()
            : json['semana 1'].entries.forEach((element) {
                semana11.insert(
                    int.parse(element.key), element.value.toString());

                semana1 = semana11;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 1'] is! Map) ? semana1 = semana1 : semana1 = semana11;
      (json['semana 1'] != null && semana1.length < 12)
        ? semana1.insertAll(
            semana1.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana1 = semana1;

    semana2 = (json['semana 2'] != null)
        ? (json['semana 2'] is! Map)
            ? json['semana 2'].cast<String>()
            : json['semana 2'].entries.forEach((element) {
                semana22.insert(
                    int.parse(element.key), element.value.toString());
                semana2 = semana22;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 2'] is! Map) ? semana2 = semana2 : semana2 = semana22;
     (json['semana 2'] != null && semana2.length < 12)
        ? semana2.insertAll(
            semana2.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana2 = semana2;

    semana3 = (json['semana 3'] != null)
        ? (json['semana 3'] is! Map)
            ? json['semana 3'].cast<String>()
            : json['semana 3'].entries.forEach((element) {
                semana33.insert(
                    int.parse(element.key), element.value.toString());
                semana3 = semana33;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 3'] is! Map) ? semana3 = semana3 : semana3 = semana33;
    (json['semana 3'] != null && semana3.length < 12)
        ? semana3.insertAll(
            semana3.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana3 = semana3;

    semana4 = (json['semana 4'] != null)
        ? (json['semana 4'] is! Map)
            ? json['semana 4'].cast<String>()
            : json['semana 4'].entries.forEach((element) {
                semana44.insert(
                    int.parse(element.key), element.value.toString());
                semana4 = semana44;
              })
        : [
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no',
            'no'
          ];
    (json['semana 4'] is! Map) ? semana4 = semana4 : semana4 = semana44;
    (json['semana 4'] != null && semana4.length < 12)
        ? semana4.insertAll(
            semana4.length,
            [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ],
          )
        : semana4 = semana4;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['semana 1'] = (listEquals(this.semana1, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana1
        : null;
    data['semana 2'] = (listEquals(this.semana2, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana2
        : null;
    data['semana 3'] = (listEquals(this.semana3, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana3
        : null;
    data['semana 4'] = (listEquals(this.semana4, [
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no',
              'no'
            ]) ==
            false)
        ? this.semana4
        : null;
    return data;
  }
}
