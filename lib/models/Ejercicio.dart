import 'package:flutter/foundation.dart';

class Ejercicio {
  @required
  String nombre;
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
        nombre: "Press de banca",
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
        nombre: "Press plano con mancuernas",
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
        nombre: "Press plano con mancuernas agarre neutro",
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
        nombre: "Fondos de pecho en barras paralelas",
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
        nombre: "Fondos de pecho en barra",
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
        nombre: "Press plano en multipower",
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
        nombre: "Press Horizontal sentado en máquina",
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
        nombre: "Press horizontal sentado en máquina agarre neutro",
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
        nombre: "Flexiones planas",
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
        nombre: "Flexiones planas con banda elástica",
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
        nombre: "Press vertical con bandas elásticas",
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
        nombre: "Press plano con bandas elásticas",
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
// Empuje Inclinado

  factory Ejercicio.pressInclinadoConBarra() {
    return Ejercicio(
        nombre: "Press inclinado con barra",
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
        nombre: "Press inclinado con mancuernas",
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
        nombre: "Flexiones declinadas",
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
        nombre: "Press inclinado convergente",
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
        nombre: "Press inclinado en máquina",
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
        nombre: "Press inclinado en multipower",
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
        nombre: "Press inclinado con bandas elásticas",
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

// Empuje Declinado
  factory Ejercicio.pressDeclinado() {
    return Ejercicio(
        nombre: "Press declinado",
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
        nombre: "Press declinado con mancuernas",
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
        nombre: "Press declinado en máquina",
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
        nombre: "Press declinado en multipower",
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
        nombre: "Flexiones inclinadas",
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

// Aduccion Horizontal plana para barra recta lo solucionaremos con un ej comodin (aperturas con carga externa)
  factory Ejercicio.flexionesPliometricas() {
    return Ejercicio(
        nombre: "Flexiones archer",
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
        nombre: "Wipers isométricos",
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
        nombre: "Aperturas planas con mancuernas",
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
        nombre: "Cruces en máquina",
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
        nombre: "Peck deck",
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
        nombre: "Cruces en polea a altura central",
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
        nombre: "Aperturas planas en cruce de poleas",
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
        nombre: "Cruces con elásticos a altura media",
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

// Aduccion Horizontal inclinada para barra recta lo solucionaremos con un ej comodin (aperturas con carga externa)

  factory Ejercicio.aperturasInclinadasConMancuernas() {
    return Ejercicio(
        nombre: "Aperturas inclinadas con mancuernas",
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
        nombre: "Aperturas inclinadas en cruce de poleas",
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
        nombre: "Cruces en polea desde abajo",
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
        nombre: "Cruces con elásticos desde abajo",
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
        nombre: "Aperturas declinadas con mancuernas",
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
        nombre: "Aperturas declinadas en polea",
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
        nombre: "Cruces en polea desde arriba",
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
        nombre: "Cruces con elásticos desde arriba",
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
// flexion de hombro

  factory Ejercicio.pullOverBarraRecta() {
    return Ejercicio(
        nombre: "Pull over con barra recta",
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
        nombre: "Pull over con mancuerna",
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
        nombre: "Pull over en polea alta",
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
        nombre: "Pull over en polea alta tumbado en banco inclinado",
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
        nombre: "Pull over en polea baja tumbado",
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
        nombre: "Rack Pull",
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
        nombre: "Peso Muerto",
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
        nombre: "Peso Muerto con barra hexagonal",
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
        nombre: "Peso Muerto agarre snatch",
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
        nombre: "Peso muerto con mancuernas",
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
        nombre: "Peso muerto en multipower",
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
        nombre: "Peso Muerto en polea",
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
        nombre: "Peso Muerto con bandas elásticas",
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
        nombre: "Remo a una mano con barra",
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
        nombre: "Remo supino con barra",
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
        nombre: "Remo en punta agarre cerrado",
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
        nombre: "Remo con mancuerna",
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
        nombre: "Seal row",
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
        nombre: "Remo supino con mancuernas con apoyo en banco inclinado",
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
        nombre: "Remo neutro con mancuernas de pie",
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
        nombre: "Remo con mancuernas con neutrosupinación de pie",
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
        nombre: "Jalón dorsal en máquina agarre supino",
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
        nombre: "Remo en máquina agarre neutro",
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
        nombre: "Remo en máquina agarre supino",
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
        nombre: "Remo supino en multipower",
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
        nombre: "Remo en polea a una mano",
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
        nombre: "Remo en polea baja sentado a una mano",
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
        nombre: "Remo en polea baja sentado agarre supino",
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
        nombre: "Remo en polea baja sentado agarre neutro cerrado",
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
        nombre: "Jalón dorsal agarre supino",
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
        nombre: "Jalón dorsal agarre neutro cerrado",
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
        nombre: "Jalón dorsal en polea a una mano",
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
        nombre: "Dominadas con agarre neutro cerrado",
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
        nombre: "Dominadas asistidas con agarre neutro cerrado",
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
        nombre: "Dominadas con agarre supino",
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
        nombre: "Dominadas asistidas con agarre supino",
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
        nombre: "Remo sentado con banda elástica",
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
        nombre: "Remo a una mano con banda elástica",
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
        nombre: "Remo a dos manos con banda elástica",
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
        nombre: "Jalón supino con banda elástica",
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
        nombre: "Jalón neutro con banda elástica",
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
  // Aduccion de hombro
  factory Ejercicio.jalonDorsalEnMaquinaDivergente() {
    return Ejercicio(
        nombre: "Jalón dorsal en máquina divergente",
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
        nombre: "Jalón dorsal en cruce de poleas",
        imagen: ['AduccionesEnPoleaAlta.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }

  factory Ejercicio.jalonTrasnuca() {
    return Ejercicio(
        nombre: "Jalón trasnuca",
        imagen: ['JalonTrasnuca.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleaalta'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.dominadasTrasnuca() {
    return Ejercicio(
        nombre: "Dominadas trasnuca",
        imagen: ['DominadasTrasnuca.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.dominadasAgarreNeutroAmplio() {
    return Ejercicio(
        nombre: "Dominadas con agarre neutro amplio",
        imagen: ['DominadasConAgarreNeutroAmplio.gif'],
        descripcion: 'Si vas sobrado puedes lastrarte peso.',
        material: ['gym', 'dominadas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
  factory Ejercicio.aduccionDeHombroConBandaElastica() {
    return Ejercicio(
        nombre: "Aducción de hombro con banda elástica",
        imagen: ['AduccionDeHombroBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Espalda', 'Secundario1': 'Biceps'},
        patron: 8);
  }
// Aproximacion de escapulas
  factory Ejercicio.remoconBarraCodosSeparadosConApoyoEnBancoInclinado() {
    return Ejercicio(
        nombre: "Remo con barra con codos separados apoyado en banco inclinado",
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
        nombre: "Remo con barra con codos separados",
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
        nombre:
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
        nombre: "Remo con mancuerna con codos separados",
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
        nombre: "Remo alto en máquina",
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
        nombre: "Remo con codos separados en multipower",
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
        nombre: "Remo en máquina con codos separados",
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
        nombre: "Remo en punta con codos separados",
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
        nombre: "Remo con codos separados en polea baja",
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
        nombre: "Face Pull",
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
        nombre: "Face pull con banda elástica",
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
        nombre: "Remo alto con banda elástica",
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
        nombre: "Remo con codos separados con banda elástica",
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
// Aduccion + Extension
  factory Ejercicio.jalonDorsalProno() {
    return Ejercicio(
        nombre: "Jalón dorsal prono",
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
        nombre: "Dominadas agarre prono",
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
        nombre: "Dominadas asistidas agarre prono",
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
        nombre: "Dominadas asistidas agarre prono (subido en banco)",
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
        nombre: "Remo con barra",
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
        nombre: "Remo pendlay",
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
        nombre: "Remo con mancuernas agarre prono",
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
        nombre: "Remo en multipower",
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
        nombre: "Remo pendlay en multipower",
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
        nombre: "Remo en polea baja",
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
        nombre: "Remo en polea baja agarre ancho",
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
        nombre: "Press militar sentado",
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
        nombre: "Press militar de pie",
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
        nombre: "Press militar trasnuca",
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
        nombre: "Press de hombro con mancuernas",
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
        nombre: "Press de hombro con mancuernas agarre neutro",
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
        nombre: "Press arnold",
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
        nombre: "Press de hombro en máquina",
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
        nombre: "Press militar en multipower",
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
        nombre: "Press militar trasnuca en multipower",
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
        nombre: "Press militar en polea",
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
        nombre: "Press militar con banda elástica",
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
// flexion de hombro

  factory Ejercicio.elevacionFrontalConBarraRecta() {
    return Ejercicio(
        nombre: "Elevación frontal con barra recta",
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
        nombre: "Elevación frontal con mancuernas",
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
        nombre: "Elevación frontal en polea",
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
        nombre: "Elevación frontal con banda elástica",
        imagen: ['ElevacionFrontalBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
        },
        patron: 15);
  }
  // Abduccion de hombro

  // - Tension constante

  factory Ejercicio.elevacionLateralConMancuernaEnBancoInclinado() {
    return Ejercicio(
        nombre: "Elevación lateral con mancuerna en banco inclinado",
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
        nombre: "Elevación lateral en máquina",
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
        nombre: "Elevación lateral en cruce de poleas",
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
        nombre: "Elevación lateral en polea a una mano",
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
        nombre: "Remo al mentón agarre abierto",
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
        nombre: "Elevación lateral con barra",
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
        nombre: "Elevación lateral crucifix con mancuernas",
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
        nombre: "Elevación lateral con mancuerna",
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
        nombre: "Elevación lateral con mancuerna a una mano",
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
        nombre: "Elevación lateral sentado con mancuerna",
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
        nombre: "Elevación lateral",
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
        nombre: "Elevación lateral con banda elástica",
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
        nombre: "Elevación lateral con banda elástica (Técnica 1-1/2)",
        imagen: ['ElevacionesLateralesBandaElastica.gif'],
        descripcion:
            'Sube, bajas a mitad,subes y bajas hasta abajo, eso es una repetición',
        material: ['gym', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Hombro Lateral',
        },
        patron: 17);
  }
  // -Estiramiento

  factory Ejercicio.elevacionLateralTumbadoConMancuerna() {
    return Ejercicio(
        nombre: "Elevación lateral tumbado con mancuerna",
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
        nombre: "Elevación lateral tumbado",
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
        nombre: "Esquiador con barra recta",
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
        nombre: "Abducción horizontal de hombro con mancuerna",
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
        nombre: "Pájaro con mancuernas sentado",
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
        nombre: "Pájaro con mancuernas de pie",
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
        nombre: "Pájaro con mancuernas tumbado",
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
        nombre: "Pájaro con mancuernas con apoyo en banco inclinado",
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
        nombre: "Hombro posterior en máquina contractora inversa",
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
        nombre: "Hombro posterior en cruce de poleas alto",
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
        nombre: "Hombro posterior en cruce de poleas tumbado",
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
        nombre: "Pájaro posterior en cruce de poleas de pie",
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
        nombre: "Pájaro posterior sentado en cruce de poleas de pie",
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
        nombre: "Pájaro posterior con banda elástica",
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
        nombre: "Abducción horizontal de hombro con banda elástica",
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

  //BICEPS

  //HombroEnFlexion

  factory Ejercicio.curlArana() {
    return Ejercicio(
        nombre: "Curl araña",
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
        nombre: "Curl concentrado con barra",
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
        nombre: "Curl de bíceps en banco scott",
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
        nombre: "Curl araña con mancuernas",
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
        nombre: "Curl concentrado con mancuerna",
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
        nombre: "Curl concentrado con mancuerna apoyado en banco inclinado",
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
        nombre: "Curl martillo en banco scott con mancuerna",
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
        nombre: "Curl de bíceps en banco scott con mancuerna",
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
        nombre: "Curl de bíceps en máquina scott",
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
        nombre: "Curl de bíceps tumbado en polea alta",
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
        nombre: "Curl de bíceps en polea alta a dos manos",
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
        nombre: "Curl concentrado con banda elástica",
        imagen: ['CurlConcentradoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        principiantes: false,
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 20);
  }
  // Hombro anatomico

  factory Ejercicio.curlConBarraRectaYBandaElastica() {
    return Ejercicio(
        nombre: "Curl con barra recta + banda elástica",
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
        nombre: "Curl de bíceps con barra recta",
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
        nombre: "Curl de bíceps barra Z",
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
        nombre: "Curl de bíceps con mancuernas de pie",
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
        nombre: "Curl martillo con mancuernas",
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
        nombre: "Curl de bíceps con barra en polea baja",
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
        nombre: "Curl de bíceps con cuerda en polea baja",
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
        nombre: "Curl de bíceps tumbado en polea baja",
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
        nombre: "Curl de bíceps con banda elástica",
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
        nombre: "Curl de bíceps con elástico sentado",
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
        nombre: "Curl martillo con banda elástica",
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
        nombre: "Curl de bíceps con banda elástica agarre reverso",
        imagen: ['CurlDeBicepsAgarreReversoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Biceps',
        },
        patron: 21);
  }
// Hombro Extension

  factory Ejercicio.curlDeArrastreConBarraRecta() {
    return Ejercicio(
        nombre: "Curl de arrastre con barra recta",
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
        nombre:
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
        nombre: "Curl de bíceps en banco inclinado con mancuernas",
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
        nombre: "Curl de bíceps en polea baja a una mano",
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
        nombre: "Press cerrado",
        imagen: ['PressCerrado.gif'],
        descripcion: '',
        material: ['gym', 'barra', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }
  factory Ejercicio.pressCerradoConMancuernas() {
    return Ejercicio(
        nombre: "Press cerrado con mancuernas",
        imagen: ['PressCerradoMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }

  factory Ejercicio.fondosDeTriceps() {
    return Ejercicio(
        nombre: "Fondos de tríceps",
        imagen: ['Fondos.gif', 'Fondos2.gif'],
        descripcion: '',
        material: ['gym', 'paralelas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Triceps', 'Secundario1': 'Pecho'},
        patron: 23);
  }
  factory Ejercicio.fondosDeTricepsEnMaquina() {
    return Ejercicio(
        nombre: "Fondos de tríceps en máquina",
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
        nombre: "Press cerrado en multipower",
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
        nombre: "Flexiones cerradas",
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
        nombre: "Flexiones cerradas con banda elástica",
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

// Extension de codo HombroFlexion
  factory Ejercicio.extensionDeTricepsConBarraRecta() {
    return Ejercicio(
        nombre: "Extensión de tríceps con barra recta",
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
        nombre: "Press francés con barra recta",
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
        nombre: "Press francés con barra Z",
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
        nombre: "Extensión de tríceps con mancuerna a dos manos de pie",
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
        nombre: "Extensión de tríceps con mancuerna de pie a una mano",
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
        nombre: "Extensión de tríceps con mancuerna sentado",
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
        nombre: "Press francés con mancuernas",
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
        nombre: "Extensión de tríceps en máquina",
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
        nombre: "Extensión de tríceps en polea alta con barra recta",
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
        nombre: "Extensión de tríceps en polea alta con cuerda",
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
        nombre: "Extensión de tríceps en polea baja a dos manos",
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
        nombre: "Extensión de tríceps en polea baja a una mano",
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
        nombre: "Extensión de tríceps con elastico apoyado abajo",
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
        nombre: "Extensión de tríceps con banda elástica arriba",
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
        nombre: "Extensión de tríceps con banda elástica arriba a una mano",
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
        nombre: "Press francés con banda elástica",
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
// Extension de codo HombroExtension

  factory Ejercicio.patadaDeTricepsConMancuerna() {
    return Ejercicio(
        nombre: "Patada de tríceps con mancuerna",
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
        nombre: "Fondos de tríceps entre bancos con peso corporal",
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
        nombre: "Fondos de tríceps en máquina de dominadas asistidas",
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
        nombre: "Patada de tríceps en polea baja",
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
        nombre: "Patada de tríceps con banda elástica",
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
        nombre: "Sentadilla con barra",
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
        nombre: "Sentadilla con mancuernas",
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
        nombre: "Sentadilla con mancuernas a una pierna",
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
        nombre: "Sentadilla en multipower",
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
        nombre: "Sentadilla a una pierna con peso corporal",
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
        nombre: "Sentadilla con banda elástica",
        imagen: ['SentadillasBandaElastica.gif'],
        descripcion: '',
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

// Flexion de rodilla Pesada

  factory Ejercicio.sentadillaFrontal() {
    return Ejercicio(
        nombre: "Sentadilla frontal",
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
        nombre: "Sentadilla hack con barra",
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
        nombre: "Split squat",
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
        nombre: "Sentadilla frontal con mancuerna",
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
        nombre: "Sentadilla en multipower bajando con cadera perpendicular",
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
        nombre: "Prensa inclinada",
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
        nombre: "Sentadilla frontal en multipower",
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
        nombre: "Sentadilla hack en multipower",
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
        nombre: "Sentadilla hack",
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
        nombre: "Prensa horizontal en máquina",
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
        nombre: "Prensa vertical en multipower",
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
        nombre: "Sentadilla frontal en polea",
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
        nombre: "Sentadilla búlgara con bandas elásticas",
        imagen: ['SentadillaBulgaraBandaElastica.gif'],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }

  factory Ejercicio.zancadasConBandaElastica() {
    return Ejercicio(
        nombre: "Zancadas con banda elástica",
        imagen: [
          'ZancadasBandaElastica.gif',
          '24241301-Resistance-Band-Lunge_Thighs_180.gif'
        ],
        descripcion:
            'Baja con la cadera perpendicular al suelo para trabajar el cuadriceps con un movimiento basado en la flexion de rodilla',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Cuadriceps',
        },
        patron: 27);
  }
// Flexion de rodilla ligera

  factory Ejercicio.sentadillaBulgaraConBarraRecta() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con barra",
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
        nombre: "Zancadas con barra",
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
        nombre: "Sentadilla búlgara con mancuernas",
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
        nombre: "Zancadas con mancuernas",
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
        nombre: "Extensión de cuádriceps",
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
        nombre: "Prensa horizontal en máquina con pies abajo",
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
        nombre: "Prensa vertical en máquina",
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
        nombre: "Zancadas en multipower",
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
        nombre: "Sentadilla búlgara en multipower",
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
        nombre: "Zancadas en polea",
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
        nombre: "Sentadilla sissy",
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
        nombre: "Extensión de cuádriceps con banda elástica de pie",
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
        nombre: "Extensión de cuádriceps con banda elástica sentado",
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

  // FEMORAL

  // flexion de rodilla

  factory Ejercicio.nordicCurl() {
    return Ejercicio(
        nombre: "Nordic curl",
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
        nombre: "Femoral tumbado con mancuerna",
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
        nombre: "Curl femoral con toalla",
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
        nombre: "Curl femoral sentado",
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
        nombre: "Curl femoral de pie",
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
        nombre: "Curl femoral tumbado",
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
        nombre: "Nordic curl asistido en polea",
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
        nombre: "Curl femoral de pie con banda elástica",
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
        nombre: "Curl femoral tumbado con banda elástica",
        imagen: ['CurlFemoralBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Femoral',
        },
        patron: 29);
  }
  // Extension de cadera rodilla sin flexion (rigida o semirigida)

  factory Ejercicio.buenosDias() {
    return Ejercicio(
        nombre: "Buenos días",
        imagen: ['BuenosDias.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pesoMuertoAUnaPierna() {
    return Ejercicio(
        nombre: "Peso muerto a una pierna",
        imagen: ['PesoMuertoAUnaPierna.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoRumano() {
    return Ejercicio(
        nombre: "Peso muerto rumano",
        imagen: ['PesoMuertoRumano.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pesoMuertoPiernasRigidasConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto piernas rígidas con mancuernas",
        imagen: ['PesoMuertoPiernasRigidasConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoRumanoConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto rumano con mancuernas",
        imagen: ['PesoMuertoRumanoConMancuernas.gif'],
        descripcion: '',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoAUnaPiernaConMancuernas() {
    return Ejercicio(
        nombre: "Peso muerto a una pierna con mancuernas",
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
        nombre: "Hiperextensiones reversas en máquina",
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
        nombre: "Hiperextensiones reversas",
        imagen: ['HiperExtensionesReversas.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas', 'polea', 'bancoplano'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pullThroughPiernasRigidasEnPolea() {
    return Ejercicio(
        nombre: "Pull through piernas rígidas en polea",
        imagen: ['PullThroughPiernasRigidasEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.buenosDiasConBandaElastica() {
    return Ejercicio(
        nombre: "Buenos días con banda elástica",
        imagen: ['BuenosDiasBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  factory Ejercicio.pesoMuertoRumanoConBandaElastica() {
    return Ejercicio(
        nombre: "Peso muerto rumano con banda elástica",
        imagen: ['PesoMuertoPiernasRigidasBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.pesoMuertoAUnaPiernaConBandaElastica() {
    return Ejercicio(
        nombre: "Peso muerto rumano a una pierna con banda elástica",
        imagen: ['PesoMuertoRumanoAUnaPiernaBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }

  factory Ejercicio.extensionDeCaderaPiernasRigidasConBandaElastica() {
    return Ejercicio(
        nombre: "Extensión de cadera piernas rígidas con banda elástica",
        imagen: ['09011301-Band-hip-extension_Hips_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Femoral', 'Secundario1': 'Gluteo'},
        patron: 30);
  }
  // GLUTEO

// Axial

  factory Ejercicio.sentadillaSumo() {
    return Ejercicio(
        nombre: "Sentadilla sumo",
        imagen: ['SentadillaSumo.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.pesoMuertoSumo() {
    return Ejercicio(
        nombre: "Peso muerto sumo",
        imagen: ['PesoMuertoSumo.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.sentadillaSumoConMancuerna() {
    return Ejercicio(
        nombre: "Sentadilla sumo con mancuerna",
        imagen: ['SentadillaSumoConMancuerna.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }

  factory Ejercicio.sentadillaSumoConMancuernaEntreBancos() {
    return Ejercicio(
        nombre: "Sentadilla sumo con mancuerna entre bancos",
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
        nombre: "Sentadilla sumo en multipower",
        imagen: ['SentadillaSumoEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  factory Ejercicio.sentadillaSumoEnPolea() {
    return Ejercicio(
        nombre: "Sentadilla sumo en polea",
        imagen: ['33541101-Cable-Front-Squat-(VERSION-2)_Thighs_small'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        material: ['polea'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }

  factory Ejercicio.sentadillaSumoConBandasElasticas() {
    return Ejercicio(
        nombre: "Sentadilla sumo con bandas elásticas",
        imagen: ['SentadillasBandaElastica.gif'],
        descripcion: 'Abre mas las piernas que en una sentadilla convencional',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 31);
  }
  // Ejercicios Horizontales pesados

  factory Ejercicio.hipThrust() {
    return Ejercicio(
        nombre: "Hip Thrust",
        imagen: ['HipThrust.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }

  factory Ejercicio.puenteDeGluteosConBarra() {
    return Ejercicio(
        nombre: "Puente de glúteos con barra",
        imagen: ['PuenteDeGluteos.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }
  factory Ejercicio.hipThrustPesoCorporal() {
    return Ejercicio(
        nombre: "Hip Thrust con carga externa",
        imagen: ['HipThrustPesoCorporal.gif'],
        descripcion: 'Añade carga encima de ti, por ejemplo con una mochila',
        material: ['mancuernas', 'polea'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }
  factory Ejercicio.hipThrustEnMaquina() {
    return Ejercicio(
        nombre: "Hip Thrust en máquina",
        imagen: ['HipThrustEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 32);
  }

  factory Ejercicio.hipThrustConBandaElastica() {
    return Ejercicio(
        nombre: "Hip Thrust con banda elástica",
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
        nombre: "Hip Thrust de rodillas con banda elástica",
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
        nombre: "Hip thrust a una pierna",
        imagen: ['HipThrustAUnaPierna.gif'],
        descripcion: '',
        material: ['gym', 'barra'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.stepUpEnMultipower() {
    return Ejercicio(
        nombre: "Step up en multipower",
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
        nombre: "Sentadilla búlgara con barra (enfasis glúteo)",
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
        nombre: "Frog hip thrust",
        imagen: ['FrogHipThrust.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.puenteDeGluteosAUnaPierna() {
    return Ejercicio(
        nombre: "Puente de glúteos a una pierna",
        imagen: ['PuenteDeGluteosAUnaPierna.gif'],
        descripcion: 'Añade carga encima de ti, por ejemplo con una mochila',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.extensionDeGluteoAUnaPierna() {
    return Ejercicio(
        nombre: "Extensiones de glúteo a una pierna",
        imagen: ['ExtensionDeGluteoAUnaPierna.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.patadaDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "Patada de glúteo",
        imagen: ['PatadaDeGluteoPesoCorporal.gif'],
        descripcion: '',
        material: ['mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteo() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con mancuernas (énfasis glúteo)",
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
        nombre: "Sentadilla búlgara con mancuernas (énfasis glúteo)",
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
        nombre: "Hiperextensiones reversas en multipower",
        imagen: ['HiperextensionesReversasEnMultipower.gif'],
        descripcion: '',
        material: ['gym'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.patadaDeGluteoEnMaquina() {
    return Ejercicio(
        nombre: "Patada de glúteos en máquina",
        imagen: ['PatadaDeGluteoEnMaquina.gif'],
        descripcion: '',
        material: ['gym'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.patadaDeGluteoEnPolea() {
    return Ejercicio(
        nombre: "Patada de glúteo en polea",
        imagen: ['PatadaDeGluteoEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.pullThroughEnPolea() {
    return Ejercicio(
        nombre: "Pull through en polea",
        imagen: ['PullThroughEnPolea.gif'],
        descripcion: '',
        material: ['gym', 'polea', 'poleabaja'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.pullThroughConBandaElastica() {
    return Ejercicio(
        nombre: "Pull through con banda elástica",
        imagen: ['PullThroughBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  factory Ejercicio.extensionDeCaderaConBandaElastica() {
    return Ejercicio(
        nombre: "Extensión de cadera con banda elástica",
        imagen: ['ExtensionDeCaderaBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.patadaDeGluteoConBandaElastica() {
    return Ejercicio(
        nombre: "Patada de glúteo con banda elástica",
        imagen: ['PatadaDeGluteoBandaElastica.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }

  factory Ejercicio.sentadillaBulgaraConBandasElasticasEnfasisGluteo() {
    return Ejercicio(
        nombre: "Sentadilla búlgara con bandas elásticas (énfasis glúteo)",
        imagen: ['SentadillaBulgaraBandaElastica.gif'],
        descripcion:
            'Baja llevando la cadera hacia atras, separando el pie y con una rotación externa para maximizar el trabajo de glúteo',
        material: ['gym', 'mancuernas'],
        principiantes: false,
        musculosTrabajados: {'Primario1': 'Gluteo', 'Secundario1': 'Femoral'},
        patron: 33);
  }
  // AbduccionDeGluteo

  factory Ejercicio.abduccionDeGluteoConBarra() {
    return Ejercicio(
        nombre: "Abducción De glúteo con barra",
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
        nombre: "Abducción de glúteo con cadera extendida",
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
        nombre: "Abducción de glúteo con peso corporal",
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
        nombre: "Abducción de glúteo sentado en máquina",
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
        nombre: "Abducción de glúteo en máquina",
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
        nombre: "Abducción de glúteo en polea",
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
        nombre: "Abducción de glúteo con banda elástica",
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
        nombre: "Abducción de glúteo con banda elástica tumbado",
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
        nombre: "Abducción de glúteo con banda elástica de rodillas",
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
        nombre: "Pasos laterales con banda elástica",
        imagen: ['24601301-Resistance-Band-Lateral-Walk_Hips_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gluteo',
        },
        patron: 34);
  }
  // Aduccion de gluteo
  factory Ejercicio.aduccionDeGluteoConPesoCorporal() {
    return Ejercicio(
        nombre: "Aducciones de glúteo con peso corporal",
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
        nombre: "Aductores en máquina sentado",
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
        nombre: "Aducción de glúteo en polea",
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
        nombre: "Aducción de glúteo con banda elástica",
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
        nombre: "Remo al mentón con barra",
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
        nombre: "Encogimientos de trapecio con barra",
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
        nombre: "Encogimientos de trapecio con mancuerna",
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
        nombre: "Remo al mentón con mancuerna",
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
        nombre: "Encogimientos de trapecio en multipower",
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
        nombre: "Remo al mentón en multipower",
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
        nombre: "Remo al mentón en polea",
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
        nombre: "Encogimientos de trapecio en polea",
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
        nombre: "Encogimientos de trapecio con banda elástica",
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
        nombre: "Remo al mentón con banda elástica",
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
        nombre: "Rueda abdominal con barra",
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
        nombre: "Encogimientos abdominales",
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
        nombre: "Encogimientos abdominales colgado",
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
        nombre: "Encogimientos abdominales en máquina de fondos",
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
        nombre: "Encogimientos abdominales en máquina",
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
        nombre: "Abs roller",
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
        nombre: "Encogimientos abdominales en polea",
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
        nombre: "Rueda abdominal",
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
        nombre: "Plancha abdominal",
        imagen: ['04651101-Front-Plank_Waist_small.png'],
        descripcion: '',
        material: ['gym', 'barra', 'mancuernas', 'polea', 'elasticos'],
        musculosTrabajados: {
          'Primario1': 'Abs',
        },
        patron: 39);
  }
// rotacion de tronco

  factory Ejercicio.encogimientosAbdominalesColgadoConTorsion() {
    return Ejercicio(
      nombre: "Encogimientos abdominales colgado con rotación de tronco",
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
      nombre: "Encogimientos abdominales con rotación de tronco",
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
      nombre: "Plancha lateral",
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
      nombre: "Leñador",
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
      nombre: "Press pallof",
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
      nombre: "Leñador con elástico",
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
      nombre: "Press pallof con elástico",
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
// Gemelo Rodilla Extendida
  factory Ejercicio.gemeloDePieConBarra() {
    return Ejercicio(
        nombre: "Gemelo de pie con barra recta",
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
        nombre: "Gemelo de pie con mancuerna",
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
        nombre: "Gemelo de pie con mancuerna a una pierna",
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
        nombre: "Gemelo de pie",
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
        nombre: "Gemelo en máquina",
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
        nombre: "Gemelo de pie en multipower",
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
        nombre: "Gemelo en prensa inclinada",
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
        nombre: "Gemelo de pie con carga externa",
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
        nombre: "Gemelo de pie con banda elástica",
        imagen: ['GemeloBandaElastica.gif', 'GemeloBandaElastica2.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloSentadoConBandasElasticas() {
    return Ejercicio(
        nombre: "Gemelo sentado con banda elástica",
        imagen: ['24251301-Resistance-Band-Calf-Raise_Calves_180.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
  factory Ejercicio.gemeloDePieConBandasElasticasAUnaPierna() {
    return Ejercicio(
        nombre: "Gemelo de pie a una pierna con banda elástica",
        imagen: ['GemeloDePieAUnaPierna.gif'],
        descripcion: '',
        material: ['elasticos'],
        musculosTrabajados: {
          'Primario1': 'Gemelo',
        },
        patron: 37);
  }
// Gemelo Rodilla Flexionada

  factory Ejercicio.gemeloSentadoConBarra() {
    return Ejercicio(
        nombre: "Gemelo sentado con barra recta",
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
        nombre: "Gemelo sentado con mancuernas",
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
        nombre: "Gemelo sentado",
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
        nombre: "Gemelo sentado en multipower",
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
        nombre: "Gemelo sentado con carga externa",
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

  factory Ejercicio.pressInclinadoConBarraSerieDescendente() {
    return Ejercicio(
        nombre: "Press inclinado con barra (Serie descendente doble)",
        imagen: ['PressBanca.gif'],
        descripcion: '',
        comentarios: Comentarios(
            semana1: 'Malas Sensaciones,dolor en los hombros',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        patron: 38);
  }
  factory Ejercicio.pressInclinadoConBarraDescansoPausa() {
    return Ejercicio(
        nombre: 'Press inclinado con barra (Descanso-Pausa simple de 20")',
        imagen: ['PressInclinadoConBarra.jpg'],
        descripcion: '',
        comentarios: Comentarios(
            semana1: 'Malas Sensaciones,dolor en los hombros',
            semana2: 'null',
            semana3: 'null',
            semana4: 'null'),
        material: ['gym'],
        patron: 38);
  }
factory Ejercicio.pressHorizontalEnMaquinaAgarreNeutro1() {
    return Ejercicio(
        nombre: "Press vertical en máquina agarre neutro",
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
        nombre: "Press vertical en máquina",
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
        musculosTrabajados:{'Primario1':'Pecho',},
        patron: 4    
        
            );
       
  }
  factory Ejercicio.wipersIsometricos1() {
    return Ejercicio(
        nombre: "Wipers ismétricos",
        imagen: ['05001301-Isometric-Wipers_Chest_360.gif'],
        descripcion: '',
        material: ['barra', 'mancuernas'],
        musculosTrabajados: {
          'Primario1': 'Pecho',
        },
        patron: 4);}
  factory Ejercicio.jalonDorsalAgarreCerrado1() {
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
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'},
        patron: 9
      
            );
    
  }
    factory Ejercicio.remoEnPuntaAgarreAncho1() {
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
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'},
        patron: 10
            );
    
       
  }
      factory Ejercicio.elevacionLateralEnMaquina1() {
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',} ,
        patron: 16   
        
            ); }

  factory Ejercicio.elevacionLateralEnCruceDePoleas1() {
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',} ,
        patron: 16   
     
            ); } 
  factory Ejercicio.remoAlMentonAgarreAncho1() {
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',}   ,
        patron: 17
            ); }
          
         factory Ejercicio.elevacionesLateralesCrucifixConMancuerna1() {
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
        musculosTrabajados:{'Primario1':'Hombro Lateral',}    ,
        patron: 17

        
            ); }
     
        
  factory Ejercicio.abduccionHorizontalEnCruceDePoleas1() {
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
         musculosTrabajados:{'Primario1':'Hombro Posterior',} ,
        patron: 19  
        
            ); }
factory Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna1() {
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
    nombre = json['nombre'];
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
    data['nombre'] = this.nombre;
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