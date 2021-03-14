import 'package:flutter/foundation.dart';
import './Ejercicio.dart';
import 'Configuracion.dart';

class Patron {
// static Patron empujeVertical = Patron(configuracion:configuracionejercicios:[Ejercicio.pressMilitar,Ejercicio.pressDeHombroConMancuernas,Ejercicio.pressDeHombroEnMultipower]  ,ejercicioSeleccionado:Ejercicio.pressMilitar,objetivo:'Porcion Frontal, menos enfasis en haz clavicular pero tambien.' );
// static Patron empujeHorizontal = Patron(configuracion:configuracionejercicios:[Ejercicio.pressBanca,Ejercicio.pressPlanoConMancuernas,Ejercicio.pressPlanoEnMaquina]  ,ejercicioSeleccionado:Ejercicio.pressBanca,objetivo: 'Haz Esternocostal con ejercicio de empuje plano' );

// static Patron empujeInclinado = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pressInclinadoConBarra,Ejercicio.pressInclinadoConMancuernas,Ejercicio.pressInclinadoEnMultipower]  ,ejercicioSeleccionado:Ejercicio.pressInclinadoConBarra,objetivo: 'Haz clavicular con ejercicio de empuje inclinado, menos enfasis en hombro frontal pero tambien.' );
// static Patron flexiondeHombroyAduccionHorizontal = Patron(configuracion:configuracion,ejercicios:[Ejercicio.aperturasBayasi,Ejercicio.aperturasInclinadasenCruceDePoleas,Ejercicio.crucesEnPoleaDesdeAbajo]  ,ejercicioSeleccionado:Ejercicio.aperturasBayasi,objetivo: 'Haz clavicular con ejercicio de flexion y aduccion horizontal de hombro, menos enfasis en hombro frontal pero tambien.' );
// static Patron visagraCadera = Patron(configuracion:configuracionejercicios:[Ejercicio.pesoMuerto,Ejercicio.rackPull,Ejercicio.pesoMuertoAgarreSnatch]  ,ejercicioSeleccionado:Ejercicio.pesoMuerto,objetivo: 'Trabajo de espalda alta con ejercicio de visagra de cadera.' );
// static Patron extensionHombro = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.dominadasSupinas,Ejercicio.jalonDorsalSupino,Ejercicio.remoConBarraSupino,Ejercicio.remoConMancuerna,Ejercicio.remoEnMaquinaAgarreNeutro]  ,ejercicioSeleccionado:Ejercicio.dominadasSupinas,objetivo: 'Trabajar el dorsal alto con un ejercicio de extension de hombro' );
// static Patron aducciondeHombro = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.jalonDorsalEnMaquinaDivergente,Ejercicio.jalonTrasnuca,Ejercicio.jalonDorsalAgarreNeutroAmplio,]  ,ejercicioSeleccionado:Ejercicio.jalonDorsalEnMaquinaDivergente,objetivo: 'Enfatizar en la zona baja del dorsal con un ejercicio de aduccion de hombro' );
// static Patron aproximacionEscapular = Patron(configuracion:configuracion,ejercicios:[Ejercicio.remoConBarraAgarreAmplio,Ejercicio.remoConMancuernasConCodosSeparados,Ejercicio.remoEnMaquinaConCodosSeparados,Ejercicio.remoEnPuntaAgarreAmplio]  ,ejercicioSeleccionado:Ejercicio.remoConMancuernasConCodosSeparados,objetivo: 'Trabajar porcion posterior del deltoides,romboides y trapecio con un ejercicio de aproximacion escapular' );
// static Patron genericoPierna = Patron(configuracion:configuracionejercicios:[Ejercicio.sentadilla,Ejercicio.sentadillaEnMultipower,Ejercicio.prensaInclinada]  ,ejercicioSeleccionado:Ejercicio.sentadilla,objetivo: 'Ejercicio pesado pierna' );
// static Patron extensionRodillaPesado = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.sentadillaHack,Ejercicio.sentadillaEnMultipower,Ejercicio.zancadasCerradas]  ,ejercicioSeleccionado:Ejercicio.sentadillaHack,objetivo: 'Ejercicio pesado de extension de rodilla para trabajar el cuadriceps' );
// static Patron extensionRodillaLigero = Patron(configuracion:configuracion,ejercicios:[Ejercicio.extensionDeCuadriceps,Ejercicio.sentadillaSissy,Ejercicio.zancadasCerradas]  ,ejercicioSeleccionado:Ejercicio.extensionDeCuadriceps,objetivo: 'Ejercicio ligero de extension de rodilla para trabajar el cuadriceps' );
// static Patron extensionDeCaderaRodillaSinFlexion = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pesoMuertoRumano,Ejercicio.buenosDias,Ejercicio.prensaInclinadaPiesArriba]  ,ejercicioSeleccionado:Ejercicio.pesoMuertoRumano,objetivo: 'Ejercicio basado en la extension de cadera con la rodilla bloqueada para trabajar los isquios.' );
// static Patron extensionDeCaderaRodillaEnFlexion = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.sentadillaSumo,Ejercicio.hipThrust,]  ,ejercicioSeleccionado:Ejercicio.hipThrust,objetivo: 'Ejercicio basado en la extension de cadera con la rodilla en flexion para trabajar el gluteo mayor.' );
// static Patron extensionDeCaderaLigero = Patron(configuracion:configuracion,ejercicios:[Ejercicio.patadaDeGluteo,]  ,ejercicioSeleccionado:Ejercicio.patadaDeGluteo,objetivo: 'Ejercicio ligero basado en la extension de cadera para trabajar el gluteo mayor.' );
// static Patron abduccionDecadera = Patron(configuracion:configuracion,ejercicios:[Ejercicio.abduccionesDeGluteoEnPolea,Ejercicio.abduccionesDeGluteoConGomaElastica,]  ,ejercicioSeleccionado:Ejercicio.abduccionesDeGluteoEnPolea,objetivo: 'Ejercicio ligero basado en la abduccion de cadera para trabajar el gluteo medio' );
// static Patron curlFemoral = Patron(configuracion:configuracion,ejercicios:[Ejercicio.femoralSentado,Ejercicio.femoralTumbado,Ejercicio.nordicCurl]  ,ejercicioSeleccionado:Ejercicio.femoralTumbado,objetivo: 'Ejercicio basado en la flexion de rodilla para trabajar los isquios' );
// static Patron hombroLateralEstiramiento = Patron(configuracion:configuracion,ejercicios:[Ejercicio.elevacionLateralTumbado]  ,ejercicioSeleccionado:Ejercicio.elevacionLateralTumbado,objetivo: 'Ejercicio para trabajar la cabeza lateral del hombro en estiramiento' );
// static Patron hombroLateralAcortamiento = Patron(configuracion:configuracion,ejercicios:[Ejercicio.elevacionLateralConMancuerna]  ,ejercicioSeleccionado:Ejercicio.elevacionLateralConMancuerna,objetivo: 'Ejercicio para trabajar la cabeza lateral del hombro en acortamiento' );
// static Patron hombroLateralTensionConstante = Patron(configuracion:configuracion,ejercicios:[Ejercicio.elevacionLateralenPolea]  ,ejercicioSeleccionado:Ejercicio.elevacionLateralenPolea,objetivo: 'Ejercicio para trabajar la cabeza lateral del hombro con tension constante' );
// static Patron bicepsHombroAnatomico = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.curlDeBicepsConBarraRecta,Ejercicio.curlDeBicepsConMancuernas,Ejercicio.curlDeBicepsEnPoleabajaConBarraRecta]  ,ejercicioSeleccionado:Ejercicio.curlDeBicepsConBarraRecta,objetivo: 'Ejercicio pesado de biceps' );
// static Patron bicepsHombroFlexion = Patron(configuracion:configuracion,ejercicios:[Ejercicio.curlDeBicepsEnBancoScoot,Ejercicio.curlDeBicepsEnPoleaAlta]  ,ejercicioSeleccionado:Ejercicio.curlDeBicepsEnBancoScoot,objetivo: 'Ejercicio de biceps con el hombro en flexion para trabajar cabeza corta' );
// static Patron bicepsHombroExtension = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.curlDeArrastre,Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas]  ,ejercicioSeleccionado:Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas,objetivo: 'Ejercicio de biceps con el hombro en extension para trabajar cabeza larga' );
// static Patron tricepsHombroAnatomico = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pressCerrado,Ejercicio.floorPress]  ,ejercicioSeleccionado:Ejercicio.floorPress,objetivo: 'Ejercicio pesado de triceps' );
// static Patron tricepsHombroFlexion = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pressFrances,Ejercicio.extensionDeTricepsEnPoleaAlta]  ,ejercicioSeleccionado:Ejercicio.pressFrances,objetivo: 'Ejercicio de triceps con el hombro en flexion' );
// static Patron tricepsHombroExtension = Patron(configuracion:configuracion,ejercicios:[Ejercicio.patadadeTricepsConMancuerna]  ,ejercicioSeleccionado:Ejercicio.patadadeTricepsConMancuerna,objetivo: 'Ejercicio de triceps con el hombro en extension' );
// static Patron elevacionPosterior = Patron(configuracion:configuracion,ejercicios:[Ejercicio.pajaroPosteriorConMancuernas]  ,ejercicioSeleccionado:Ejercicio.pajaroPosteriorConMancuernas,objetivo: 'Ejercicio de elevacion posterior para trabajar la porcion posterior del deltoides' );
// static Patron abduccionHorizontal = Patron(configuracion:configuracion,ejercicios:[Ejercicio.posteriorEnMaquinaContractoraInversa]  ,ejercicioSeleccionado:Ejercicio.posteriorEnMaquinaContractoraInversa,objetivo: 'Ejercicio de abduccion horizontal para trabajar la porcion posterior del deltoides.' );

  @required
  Configuracion configuracion;
  List<Ejercicio> ejerciciosComodin;
  @required
  List<Ejercicio> ejercicios;
  @required
  Ejercicio ejercicioSeleccionado;
  @required
  String objetivo;
  Map<String, dynamic> musculosTrabajados;
  String comentario;
  ListaConfiguraciones configuraciones;
  int numeroPatron;

  Patron(
      {this.configuracion,
      this.ejerciciosComodin,
      this.ejercicios,
      this.ejercicioSeleccionado,
      this.objetivo,
     
      this.musculosTrabajados,this.comentario,this.configuraciones,this.numeroPatron});

  // static Patron empujeHorizontal = Patron(configuracion:configuracionejercicios:[Ejercicio.pressBanca,Ejercicio.pressPlanoConMancuernas,Ejercicio.pressPlanoEnMaquina]  ,ejercicioSeleccionado:Ejercicio.pressBanca,objetivo: 'Haz Esternocostal con ejercicio de empuje plano' );

// static Patron empujeInclinado = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pressInclinadoConBarra,Ejercicio.pressInclinadoConMancuernas,Ejercicio.pressInclinadoEnMultipower]  ,ejercicioSeleccionado:Ejercicio.pressInclinadoConBarra,objetivo: 'Haz clavicular con ejercicio de empuje inclinado, menos enfasis en hombro frontal pero tambien.' );
// static Patron flexiondeHombroyAduccionHorizontal = Patron(configuracion:configuracion,ejercicios:[Ejercicio.aperturasBayasi,Ejercicio.aperturasInclinadasenCruceDePoleas,Ejercicio.crucesEnPoleaDesdeAbajo]  ,ejercicioSeleccionado:Ejercicio.aperturasBayasi,objetivo: 'Haz clavicular con ejercicio de flexion y aduccion horizontal de hombro, menos enfasis en hombro frontal pero tambien.' );

// static Patron hombroLateralEstiramiento = Patron(configuracion:configuracion,ejercicios:[Ejercicio.elevacionLateralTumbado]  ,ejercicioSeleccionado:Ejercicio.elevacionLateralTumbado,objetivo: 'Ejercicio para trabajar la cabeza lateral del hombro en estiramiento' );
// static Patron hombroLateralAcortamiento = Patron(configuracion:configuracion,ejercicios:[Ejercicio.elevacionLateralConMancuerna]  ,ejercicioSeleccionado:Ejercicio.elevacionLateralConMancuerna,objetivo: 'Ejercicio para trabajar la cabeza lateral del hombro en acortamiento' );
// static Patron hombroLateralTensionConstante = Patron(configuracion:configuracion,ejercicios:[Ejercicio.elevacionLateralenPolea]  ,ejercicioSeleccionado:Ejercicio.elevacionLateralenPolea,objetivo: 'Ejercicio para trabajar la cabeza lateral del hombro con tension constante' );
// static Patron bicepsHombroAnatomico = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.curlDeBicepsConBarraRecta,Ejercicio.curlDeBicepsConMancuernas,Ejercicio.curlDeBicepsEnPoleabajaConBarraRecta]  ,ejercicioSeleccionado:Ejercicio.curlDeBicepsConBarraRecta,objetivo: 'Ejercicio pesado de biceps' );
// static Patron bicepsHombroFlexion = Patron(configuracion:configuracion,ejercicios:[Ejercicio.curlDeBicepsEnBancoScoot,Ejercicio.curlDeBicepsEnPoleaAlta]  ,ejercicioSeleccionado:Ejercicio.curlDeBicepsEnBancoScoot,objetivo: 'Ejercicio de biceps con el hombro en flexion para trabajar cabeza corta' );
// static Patron bicepsHombroExtension = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.curlDeArrastre,Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas]  ,ejercicioSeleccionado:Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas,objetivo: 'Ejercicio de biceps con el hombro en extension para trabajar cabeza larga' );
// static Patron tricepsHombroAnatomico = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pressCerrado,Ejercicio.floorPress]  ,ejercicioSeleccionado:Ejercicio.floorPress,objetivo: 'Ejercicio pesado de triceps' );
// static Patron tricepsHombroFlexion = Patron(configuracion:Configuracion.confif2,ejercicios:[Ejercicio.pressFrances,Ejercicio.extensionDeTricepsEnPoleaAlta]  ,ejercicioSeleccionado:Ejercicio.pressFrances,objetivo: 'Ejercicio de triceps con el hombro en flexion' );
// static Patron tricepsHombroExtension = Patron(configuracion:configuracion,ejercicios:[Ejercicio.patadadeTricepsConMancuerna]  ,ejercicioSeleccionado:Ejercicio.patadadeTricepsConMancuerna,objetivo: 'Ejercicio de triceps con el hombro en extension' );
// static Patron elevacionPosterior = Patron(configuracion:configuracion,ejercicios:[Ejercicio.pajaroPosteriorConMancuernas]  ,ejercicioSeleccionado:Ejercicio.pajaroPosteriorConMancuernas,objetivo: 'Ejercicio de elevacion posterior para trabajar la porcion posterior del deltoides' );
// static Patron abduccionHorizontal = Patron(configuracion:configuracion,ejercicios:[Ejercicio.posteriorEnMaquinaContractoraInversa]  ,ejercicioSeleccionado:Ejercicio.posteriorEnMaquinaContractoraInversa,objetivo: 'Ejercicio de abduccion horizontal para trabajar la porcion posterior del deltoides.' );


  factory Patron.empujeHorizontal(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      
        configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
          Ejercicio.flexionesPlanas(), 
          Ejercicio.pressVerticalConElasticos(),
          Ejercicio.pressPlanoConBandasElasticas(),
          Ejercicio.flexionesPlanasConElasticos()],
        ejercicios: [
          Ejercicio.pressBanca(),
          Ejercicio.pressPlanoConMancuernas(),
          
          Ejercicio.fondosDePechoEnBarra(),
          Ejercicio.fondosDePechoEnBarrasParalelas(),
          Ejercicio.pressHorizontalEnMaquinaAgarreNeutro(),
          Ejercicio.pressHorizontalEnMaquina(),
          Ejercicio.pressPlanoEnMultipower(),
         
          

        ],
       
        objetivo: 'Trabajamos el pectoral mayor con énfasis en el haz esternocostal con ejercicio de empuje horizontal.',
        musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'},
        comentario: comentario,
        numeroPatron: 1,
        );
  }
  
  factory Patron.empujeInclinado(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
          Ejercicio.flexionesDeclinadas(),
          Ejercicio.pressInclinadoConBandasElasticas()
          ],
        ejercicios: [
          Ejercicio.pressInclinadoConBarra(),
          Ejercicio.pressInclinadoConMancuernas(),
           
          
          Ejercicio.pressInclinadoConvergente(),
          Ejercicio.pressInclinadoEnMultipower(),
          Ejercicio.pressInclinadoEnMaquina(),
          

        ],
       
        objetivo:
            'Trabajamos el pectoral mayor con énfasis en el haz clavicular con ejercicio de empuje en banco inclinado.',
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'},   
         comentario: comentario,   
         numeroPatron: 2
            );
  }
  factory Patron.empujeDeclinado(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin:[Ejercicio.flexionesInclinadas(),Ejercicio.pressPlanoConBandasElasticas(),Ejercicio.pressVerticalConElasticos(),Ejercicio.flexionesPlanasConElasticos()] ,
        ejercicios: [
        Ejercicio.pressDeclinado(),
        Ejercicio.pressDeclinadoConMancuernas(),
        Ejercicio.pressDeclinadoEnMultipower(),
        Ejercicio.pressDeclinadoEnMaquina(),
        
        ],
       
        objetivo:
            'Trabajamos el pectoral mayor con énfasis en el haz esternocostal con ejercicio de empuje horizontal.',
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'},
            comentario: comentario,
            numeroPatron: 3

            
            );
  }
  factory Patron.flexiondeHombroyAduccionHorizontal(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(

         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.flexionesPliometricas(),Ejercicio.wipersIsometricos(),Ejercicio.crucesConElasticosDesdeAbajo()],
        ejercicios: [
          Ejercicio.aperturasInclinadasConMancuernas(),
          Ejercicio.aperturasInclinadasEnCruceDePoleas(),
          Ejercicio.crucesEnPoleaDesdeAbajo(),
          
          
        ],
        
        objetivo:
            'Trabajo del pectoral mayor con énfasis en el haz clavicular con ejercicio de de flexión de hombro y aducción horizontal. También metemos bastante trabajo al deltoides frontal al hacer una flexión de hombro.',
        musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal',},
            comentario: comentario,    
            numeroPatron: 5
            );
  }
  factory Patron.aduccionHorizontal(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
         Ejercicio.flexionesPliometricas(),Ejercicio.wipersIsometricos(), Ejercicio.crucesConElasticoAAlturaMedia()
          
          
          ],
        ejercicios: [
        
          Ejercicio.aperturasPlanasConMancuernas(),
          Ejercicio.crucesEnMaquina(),
          Ejercicio.peckDeck(),
          Ejercicio.crucesEnPoleaAAlturaMedia(),
          Ejercicio.aperturasPlanasEnPolea(),
         
        ],
        
        objetivo:
            'Trabajo del pectoral mayor (en concreto del haz esternocostal) con ejercicio de aducción horizontal.',
        musculosTrabajados:{'Primario1':'Pecho',},
            comentario: comentario,
            numeroPatron: 4   
            );
  }
 factory Patron.aduccionDeHombroYAduccionHorizontal(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
         Ejercicio.flexionesInclinadas(),Ejercicio.wipersIsometricos(),Ejercicio.crucesConElasticosDesdeArriba()
          
          
          ],
        ejercicios: [
        Ejercicio.aperturasDeclinadasConMancuernas(),
        Ejercicio.aperturasDeclinadasEnPolea(),
        Ejercicio.crucesEnPoleaDesdeArriba(),
        
        ],
        
        objetivo:
            'Trabajo del pectoral mayor (en concreto del haz esternocostal) con ejercicio de aducción de hombro y aducción horizontal.',
        musculosTrabajados:{'Primario1':'Pecho',} ,
            comentario: comentario,   
            numeroPatron: 6
            );
  }
 



// ESPALDA


factory Patron.visagraCadera(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.pesoMuertoConMancuernas(),Ejercicio.pesoMuertoEnPolea(),Ejercicio.pesoMuertoBandasElasticas()],
        ejercicios: [
          Ejercicio.pesoMuerto(),
          Ejercicio.pesoMuertoHexagonal(),
          Ejercicio.pesoMuertoAgarreSnatch(),
          Ejercicio.rackPull(),
          
          Ejercicio.pesoMuertoEnMultipower(),
          
           
        ],
        
        objetivo:
            'Ejercicio basado en el movimiento de visagra de cadera con el trabajamos toda la cadena posterior del cuerpo (espalda,femoral,trapecios,hombro posterior etc).',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Femoral','Secundario2':'Trapecio','Secundario3':'Hombro Posterior'},
            comentario: comentario,   
            numeroPatron: 7 
            );
  }


factory Patron.aduccionDeHombro(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.remoAUnaManoConBarra(),Ejercicio.remoEnPuntaAgarreCerrado(),Ejercicio.remoSupinoConBarra(),Ejercicio.remoNeutroConMancuernas(),Ejercicio.remoSupinoConMancuernasEnBancoInclinado(),Ejercicio.sealRow(),Ejercicio.remoNeutroSupinacionConMancuernas(),Ejercicio.remoConMancuerna()],
        ejercicios: [
          
          Ejercicio.jalonDorsalEnMaquinaDivergente(),
          Ejercicio.jalonDorsalEnCruceDePoleas(),
          Ejercicio.jalonTrasnuca(),
          Ejercicio.dominadasTrasnuca(),
          Ejercicio.dominadasAgarreNeutroAmplio(),
          Ejercicio.aduccionDeHombroConBandaElastica()
          
        ],
        
        objetivo: 'Trabajo del dorsal ancho (en concreto este patrón de movimiento es el mejor para trabajar la zona baja del dorsal) con un movimiento de aducción de hombro',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Biceps'},
            comentario: comentario,
            numeroPatron: 8
        );
  }
  factory Patron.extensionDeHombroFlexionDeCodo(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
           Ejercicio.remoSentadoConBandasElasticas(),
         Ejercicio.remoAUnaManoConBandaElastica(),
         Ejercicio.remoADosManosConBandaElastica(),
         Ejercicio.jalonSupinoConBandaElastica(),
         Ejercicio.jalonNeutroConBandaElastica(),
         Ejercicio.dominadasAgarreNeutroCerrado(),
         Ejercicio.dominadasAgarreSupino(),
         Ejercicio.dominadasAsistidasAgarreNeutroCerrado(),
         Ejercicio.dominadasAsistidasAgarreSupino(),
        ],
        ejercicios: [
          Ejercicio.remoEnPuntaAgarreCerrado(),
          Ejercicio.remoAUnaManoConBarra(),
          Ejercicio.remoSupinoConBarra(),
          
        
         Ejercicio.remoNeutroConMancuernas(),
         Ejercicio.remoSupinoConMancuernasEnBancoInclinado(),
         Ejercicio.sealRow(),
         Ejercicio.remoNeutroSupinacionConMancuernas(),
         Ejercicio.remoConMancuerna(),

         Ejercicio.jalonEnMaquinaAgarreSupino(),
         Ejercicio.remoEnMaquinaAgarreNeutro(),
         Ejercicio.remoEnMaquinaAgarreSupino(),
         Ejercicio.remoSupinoEnMultipower(),

         
         Ejercicio.remoEnPoleaBajaAUnaMano(),
         Ejercicio.remoEnPoleaBajaSentadoAUnaMano(),
         Ejercicio.remoEnPoleaBajaSentadoAgarreNeutroCerrado(),
         Ejercicio.remoEnPoleaBajaSentadoAgarreSupino(),
         Ejercicio.jalonDorsalAgarreSupino(),
         Ejercicio.jalonDorsalAgarreCerrado(),
         Ejercicio.jalonDorsalAUnaMano(),
         
         

       


          
        ],
        
        objetivo: 'Trabajo del dorsal ancho (en concreto este patrón de movimiento es el mejor para trabajar la parte alta del dorsal ancho) con un movimiento de extensión de hombro',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'},
            comentario: comentario,
            numeroPatron: 9
        );
  }
  factory Patron.apximacionDeEscapulas(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejercicios: [
         Ejercicio.remoconBarraCodosSeparados(),
         Ejercicio.remoconBarraCodosSeparadosConApoyoEnBancoInclinado(),
          Ejercicio.remoConMancuernaCodosSeparados(),
          Ejercicio.remoAltoEnMaquina(),
          Ejercicio.remoConCodosSeparadosEnMaquina(),
          Ejercicio.remoConCodosSeparadosEnMultipower(),
          Ejercicio.remoEnPuntaAgarreAncho(),
          Ejercicio.remoConCodosSeparadosEnPoleaBaja(),
          Ejercicio.facePull(),
          Ejercicio.facePullBandaElastica(),
          Ejercicio.remoAltoConBandaElastica(),
          Ejercicio.remoConCodosSeparadosConBandaElastica()
        
        ],
        
        objetivo: 'Trabajo de la parte alta de la espalda(trapecio medio, romboides, hombro posterior etc)',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Trapecio','Secundario3':'Biceps'},
            comentario: comentario,
            numeroPatron: 10
        );
  }
factory Patron.extensionDeHombroSinFlexionDeCodo(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.pullOverBarraRecta(),Ejercicio.pullOverConMancuerna(),Ejercicio.jalonNeutroConBandaElastica(),Ejercicio.jalonSupinoConBandaElastica(),
        Ejercicio.remoAUnaManoConBarra(),Ejercicio.remoEnPuntaAgarreCerrado(),Ejercicio.remoSupinoConBarra(),Ejercicio.remoNeutroConMancuernas(),Ejercicio.remoSupinoConMancuernasEnBancoInclinado(),Ejercicio.sealRow(),Ejercicio.remoNeutroSupinacionConMancuernas(),Ejercicio.remoConMancuerna()
        ],
        ejercicios: [
         Ejercicio.pullOverPoleaAlta(),
         Ejercicio.pullOverPoleaAltaTumbadoEnBancoInclinado(),
         Ejercicio.pullOverPoleaBajaTumbado()
         
        ],
        
        objetivo: 'Trabajo del dorsal ancho (en concreto este patrón de movimiento es el mejor para trabajar la parte alta del dorsal ancho) con un movimiento de extensión de hombro en el que además no se flexiona el codo como en un remo con mancuerna, por ejemplo.',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior'},
            comentario: comentario,
            numeroPatron: 11
        );
  }
factory Patron.aduccionYExtensionDeHombro(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.remoAUnaManoConBarra(),Ejercicio.remoEnPuntaAgarreCerrado(),Ejercicio.remoSupinoConBarra(),Ejercicio.remoNeutroConMancuernas(),Ejercicio.remoSupinoConMancuernasEnBancoInclinado(),Ejercicio.sealRow(),Ejercicio.remoNeutroSupinacionConMancuernas(),Ejercicio.remoConMancuerna(),Ejercicio.jalonNeutroConBandaElastica(),Ejercicio.jalonSupinoConBandaElastica()],
        ejercicios: [
         Ejercicio.jalonDorsalProno(),
         Ejercicio.dominadasPronas(),
         Ejercicio.dominadasAsistidasEnCasaPronas(),
         Ejercicio.dominadasAsistidasPronas()
        ],
        
        objetivo: 'Movimiento que combina la aducción con la extensión de hombro con el que trabajamos el dorsal ancho.',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps'},
            comentario: comentario,
            numeroPatron: 12
        );
  }

factory Patron.extensionDeHombroYAproximacionDeEscapulas(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.remoConMancuernasAgarrePronoDePie(),Ejercicio.remoSentadoConBandasElasticas(),Ejercicio.remoAUnaManoConBandaElastica(),Ejercicio.remoADosManosConBandaElastica()],
        ejercicios: [
         Ejercicio.remoConBarra(),
         Ejercicio.remoPendlay(),
         
         Ejercicio.remoEnMultipower(),
         Ejercicio.remoAltoEnMaquina(),
         Ejercicio.remoEnPoleaBaja(),
         Ejercicio.remoEnPoleaBajaAgarreAncho()
        ],
        
        objetivo: 'Movimiento que combina la extensión de hombro con la aproximación escapular para trabajar los aproximadores de escápulas junto con el dorsal ancho.',
        musculosTrabajados:{'Primario1':'Espalda','Secundario1':'Hombro Posterior','Secundario2':'Biceps','Secundario3':'Trapecio'},
            comentario: comentario,
            numeroPatron: 13
        );
  }


// HOMBRO 

factory Patron.empujeVertical(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin:[ Ejercicio.pressMilitarEnPolea(),Ejercicio.pressMilitarConBandasElasticas()] ,
        ejercicios: [
          Ejercicio.pressMilitarSentado(),
          Ejercicio.pressMilitarDePie(),
          Ejercicio.pressMilitarTrasnuca(),
          Ejercicio.pressDeHombroConMancuernas(),
          Ejercicio.pressDeHombroConMancuernasAgarreNeutro(),
          Ejercicio.pressDeHombroEnMaquina(),
          Ejercicio.pressMilitarEnMultipower(),
          Ejercicio.pressMilitarTrasnucaEnMultipower(),
         
        ],
        
        objetivo:
            'Trabajo del deltoides frontal con un ejercicio de empuje por encima de la cabeza.',
        musculosTrabajados: {
          'Primario1': 'Hombro Frontal',
          'Secundario1': 'Triceps',
          'Secundario2': 'Pecho',
        },
            comentario: comentario,
            numeroPatron: 14
        
        );
  }
  factory Patron.flexionDeHombro(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}){
    

    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
     
        ejercicios: [
          Ejercicio.elevacionFrontalConBarraRecta(),
          Ejercicio.elevacionFrontalConMancuernas(),
          Ejercicio.elevacionFrontalEnPolea(),
          Ejercicio.elevacionFrontalConBandaElastica()
        
        ],
       
        objetivo:
            'Movimiento de flexión de hombro para trabajar el deltoides anterior ',
        musculosTrabajados:{'Primario1':'Hombro Frontal',},
            comentario: comentario,  
            numeroPatron: 15      
            );
  


   }
  factory Patron.hombroLateralTensionConstante(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
          
        Ejercicio.remoAlMentonAgarreAncho(),
          Ejercicio.elevacionLateralConBarra(),
          Ejercicio.elevacionLateralConMancuerna(),
          Ejercicio.elevacionLateralConMancuernaAUnaMano(),
          Ejercicio.elevacionLateralSentadoConMancuerna(),
          Ejercicio.elevacionesLateralesCrucifixConMancuerna(),
          Ejercicio.elevacionLateralConBandaElastica(),
          Ejercicio.elevacionLateralConBandaElasticaTecnica112()

        
        ],
        ejercicios: [
          Ejercicio.elevacionLateralConMancuernaEnBancoInclinado(),
          Ejercicio.elevacionLateralEnMaquina(),
          Ejercicio.elevacionLateralEnCruceDePoleas(),
          Ejercicio.elevacionLateralEnPoleaAUnaMano(),
        
        ],
     
        objetivo:
            'Trabajo de la cabeza lateral del deltoides con tensión constante.',
        musculosTrabajados:{'Primario1':'Hombro Lateral',},
            comentario: comentario, 
            numeroPatron: 16       
            );
  }
   factory Patron.hombroLateralAcortamiento(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.comodinElevacionLateral()],
        ejercicios: [
          
          Ejercicio.remoAlMentonAgarreAncho(),
          Ejercicio.elevacionLateralConBarra(),
          Ejercicio.elevacionLateralConMancuerna(),
          Ejercicio.elevacionLateralConMancuernaAUnaMano(),
          Ejercicio.elevacionLateralSentadoConMancuerna(),
          Ejercicio.elevacionesLateralesCrucifixConMancuerna(),
          Ejercicio.elevacionLateralConBandaElastica(),
          Ejercicio.elevacionLateralConBandaElasticaTecnica112()
        
        ],
       
        objetivo:
            'Trabajo de la cabeza lateral del deltoides en acortamiento',
        musculosTrabajados:{'Primario1':'Hombro Lateral',},
            comentario: comentario,  
            numeroPatron: 17
            );
  }
 factory Patron.hombroLateralEstiramiento(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.comodinElevacionLateralTumbado()],
        ejercicios: [Ejercicio.elevacionLateralTumbadoConMancuerna(),
       
        ],
        
        objetivo:
            'Trabajo de la cabeza lateral del deltoides en estiramiento.',
        musculosTrabajados:{'Primario1':'Hombro Lateral',},
            comentario: comentario, 
            numeroPatron: 18  
            );
  }
 
  
  
   
   
   
   
     factory Patron.abduccionHorizontal(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [ Ejercicio.esquiador(),Ejercicio.pajaroPosteriorConBandaElastica(),
          Ejercicio.abduccionDeHombroConBandaElastica()],
        ejercicios: [
         
          Ejercicio.pajaroConMancuernasDePie(),
          Ejercicio.pajaroConMancuernasEnBancoInclinado(),
          Ejercicio.pajaroConMancuernasSentado(),
          // Ejercicio.abduccionHorizontalDeHombroConMancuerna(),
          Ejercicio.abduccionHorizontalEnMaquinaContractoraInversa(),
          Ejercicio.abduccionHorizontalEnCruceDePoleas(),
          Ejercicio.abduccionHorizontalEnCruceDePoleasTumbado(),
          Ejercicio.pajaroPosteriorEnPoleaBaja(),
          Ejercicio.pajaroPosteriorEnPoleaBajaSentado(),
          
          
          ],
       
        objetivo:
            'Movimiento de abducción horizontal para trabajar el deltoides posterior.',
         musculosTrabajados:{'Primario1':'Hombro Posterior',} ,
            comentario: comentario,  
            numeroPatron: 19    
            );
  }
   
   //BICEPS
   
   factory Patron.bicepsHombroFlexion(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [ Ejercicio.curlDeBicepsConcentradoConBandaElastica()],
        ejercicios: [
          Ejercicio.curlConcentradoConBarra(),
          Ejercicio.curlBancoScoot(),
          Ejercicio.curlArana(),
          Ejercicio.curlAranaConMancuernas(),
          Ejercicio.curlConcentradoConMancuerna(),
          Ejercicio.curlConcentradoEnBancoInclinadoConMancuerna(),
          Ejercicio.curlDeBicepsEnBancoScottConMancuerna(),
          Ejercicio.curlDeBicepsMartilloEnBancoScottConMancuerna(),
          Ejercicio.curlDeBicepsTumbadoEnPoleaAlta(),
          Ejercicio.curlDeBicepsEnPoleaAltaADosManos(),
          Ejercicio.curlDeBicepsConcentradoConBandaElastica(),

         
        
          
         
        ],
       
        objetivo:
            'Trabajo del bíceps (especialmente de la cabeza corta) con el hombro en flexión.',
        musculosTrabajados:{'Primario1':'Biceps',},
            comentario: comentario,
            numeroPatron: 20        
            );
  }
   
  factory Patron.bicepsHombroAnatomico(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejercicios: [
          Ejercicio.curlConBarraRectaYBandaElastica(),
          Ejercicio.curlConBarraRecta(),
          Ejercicio.curlConBarraZ(),
          Ejercicio.curlDeBicepsConMancuernasDePie(),
          Ejercicio.curlMartilloConMancuerna(),
          
          Ejercicio.curlDeBicepsConBarraEnPoleaBaja(),
          Ejercicio.curlDeBicepsConCuerdaEnPoleaBaja(),
          Ejercicio.curlDeBicepsTumbadoEnPoleaBaja(),
         
          Ejercicio.curlDeBicepsConBandaElastica(),
          Ejercicio.curlDeBicepsConBandaElasticaAgarreReverso(),
          Ejercicio.curlDeBicepsConElasticoSentado(),
          Ejercicio.curlDeBicepsMartilloConBandaElastica()
        ],
        
        objetivo: 'Trabajo del bíceps con el hombro en posición anatómica',
        musculosTrabajados:{'Primario1':'Biceps',},
            comentario: comentario,
            numeroPatron: 21    
        );
  } 
  
   factory Patron.bicepsHombroExtension(Configuracion configuracion, {String comentario='No', ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.curlDeBicepsEnPoleaBajaHombroExtension(),Ejercicio.curlDeBicepsMartilloConBandaElastica(),Ejercicio.curlDeBicepsConBandaElastica(),Ejercicio.curlDeBicepsConBandaElasticaAgarreReverso(),Ejercicio.curlMartilloConMancuerna(),Ejercicio.curlDeBicepsConMancuernasDePie()],
        ejercicios: [
          Ejercicio.curlDeArrastreConBarraRecta(),
          Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernas(),
          Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasAgarreNeutro(),
          
          
        ],
      
        objetivo:
            'Trabajo del bíceps (especialmente de la cabeza larga) con el hombro en extensión',
            
        musculosTrabajados:{'Primario1':'Biceps',},
            comentario: comentario,
            numeroPatron: 22        
            );
  }
   
   
  // TRICEPS 

factory Patron.empujeCerrado(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.flexionesCerradas(),],
        ejercicios: [
          Ejercicio.pressCerrado(), 
        Ejercicio.pressCerradoConMancuernas(),
        Ejercicio.fondosDeTriceps(),
        Ejercicio.fondosDeTricepsEnMaquina(),
        Ejercicio.pressCerradoEnMultipower(),
        Ejercicio.flexionesCerradasConBandaElastica()
        
        
        ],
        
        objetivo: 'Trabajo del tríceps con ejercicio de empuje con agarre cerrado.',
        musculosTrabajados:{'Primario1':'Triceps','Secundario1':'Pecho'},
            comentario: comentario,
            numeroPatron: 23    
        
        );
  }

 factory Patron.tricepsHombroFlexion(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejercicios: [
          Ejercicio.pressFrances(),
          Ejercicio.pressFrancesBarraZ(),
          Ejercicio.extensionDeTricepsConBarraRecta(),
          
          Ejercicio.pressFrancesConMancuernas(),
          Ejercicio.extensionDeTricepsConMancuerna(),
          Ejercicio.extensionDeTricepsConMancuernaAUnaMano(),
          Ejercicio.extensionDeTricepsConMancuernaSentado(),
          Ejercicio.extensionDeTricepsEnMaquina(),

          Ejercicio.extensionDeTricepsEnPoleaAltaConBarraRecta(),
          Ejercicio.extensionDeTricepsEnPoleaAltaConCuerda(),
          Ejercicio.extensionDeTricepsEnPoleaBajaADosManos(),
          Ejercicio.extensionDeTricepsEnPoleaBajaAUnaMano(),

          Ejercicio.extensionDeTricepsConElasticoArriba(),
          Ejercicio.extensionDeTricepsConBandaElasticaAUnaMano(),
          Ejercicio.extensionDeTricepsElasticoAbajao(),
          Ejercicio.pressFrancesConBandaElastica()
        ],
       
        objetivo: 'Trabajo de tríceps (énfasis en la cabeza medial) con el hombro en flexion',
        musculosTrabajados:{'Primario1':'Triceps',},
            comentario: comentario, 
            numeroPatron: 24   
        
        );
  }   
  factory Patron.tricepsHombroExtension(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [],
        ejercicios: [
          Ejercicio.patadaDeTricepsConMancuerna(),
        Ejercicio.fondosEntreBancos(),
        Ejercicio.fondosDeTricepsEnMaquinaDeDominadasAsistidas(),
        Ejercicio.patadaDeTricepsEnPoleaBaja(),
        Ejercicio.patadaDeTricepsConBandaElastica()
        
        ],
        
        objetivo: 'Trabajo de tríceps (énfasis en la cabeza larga) con el hombro en extensión',
         musculosTrabajados:{'Primario1':'Triceps',},
            comentario: comentario, 
            numeroPatron: 25   
        
        );
  }


// CUADRICEPS 
  factory Patron.extensionDeRodillaConExtensionDeCadera(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
          Ejercicio.sentadillaConMancuernas(),
          Ejercicio.sentadillaConMancuernasAUnaPierna(),
          Ejercicio.sentadillaAUnaPiernaPesoCorporal(),
          Ejercicio.sentadillaConGomaElastica()

        ],
        ejercicios: [
          Ejercicio.sentadilla(),
          
          Ejercicio.sentadillaEnMultipower(),
          
          ],
        
        objetivo: 'Trabajo del cuádriceps (también del femoral y glúteo) con un ejercicio pesado que combina la extensión de rodilla y de cadera.',
         musculosTrabajados:{'Primario1':'Cuadriceps','Secundario1':'Gluteo','Secundario2':'Femoral',},
            comentario: comentario,   
            numeroPatron: 26 
        
        );
  }

    factory Patron.extensionDeRodillaPesada(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.sentadillaFrontal(),Ejercicio.sentadillaHackConBarra(), Ejercicio.splitSquat(),Ejercicio.sentadillaFrontalConMancuerna(),Ejercicio.sentadillaFrontalEnPolea(),Ejercicio.sentadillaBulgaraConBandaElastica(),Ejercicio.zancadasConBandaElastica()],
        ejercicios: [
          
        
        Ejercicio.sentadillaEnMultipowerCaderaPerpendicular(),
        Ejercicio.sentadillaHack(),
        Ejercicio.sentadillaHackEnMultipower(),
        Ejercicio.sentadillaFrontalEnMultipower(),
        Ejercicio.prensaInclinada(),
        Ejercicio.prensaVerticalEnMultipower(),
        Ejercicio.prensaHorizontalEnMaquina(),

        ],
        
        objetivo: 'Trabajo del cuádriceps con un ejercicio pesado de extensión de rodilla.',
         musculosTrabajados:{'Primario1':'Cuadriceps',},
            comentario: comentario, 
            numeroPatron: 27   
        
        );
  }
 
  factory Patron.extensionDeRodillaLigera(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        
        ejercicios: [Ejercicio.zancadasConBarra(),
        Ejercicio.sentadillaBulgaraConBarraRecta(),
        Ejercicio.sentadillaBulgaraConMancuernas(),
        Ejercicio.zancadasConMancuernas(),
        Ejercicio.extensionDeCuadricepsEnMaquina(),
        Ejercicio.prensaHorizontalEnMaquinaConPiesAbajo(),
        Ejercicio.prensaVerticalEnMaquina(),
       
        Ejercicio.zancadasEnMultipower(),
        Ejercicio.sentadillaBulgaraEnMultipower(),
        Ejercicio.sentadillaSissy(),
        Ejercicio.zancadasEnPolea(),
        Ejercicio.extensionDeCuadricepsConBandaElasticaDePie(),
        Ejercicio.extensionDeCuadricepsConBandaElasticaSentado(),
       

        ],
        
        objetivo: 'Trabajo del cuádriceps con un ejercicio ligero de extensión de rodilla.',
         musculosTrabajados:{'Primario1':'Cuadriceps',},
            comentario: comentario, 
            numeroPatron: 28   
        
        );
  }
factory Patron.extensionDeRodillaLigera1(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        
        ejercicios: [Ejercicio.zancadasConBarra(),
        Ejercicio.sentadillaBulgaraConBarraRecta(),
        Ejercicio.sentadillaBulgaraConMancuernas(),
        Ejercicio.zancadasConMancuernas(),
        
      
       
        Ejercicio.zancadasConBandaElastica(),
        Ejercicio.zancadasEnMultipower(),
        Ejercicio.sentadillaBulgaraEnMultipower(),
      
        Ejercicio.zancadasEnPolea(),
       

        ],
        
        objetivo: 'Trabajo del cuádriceps con un ejercicio ligero de extensión de rodilla.',
         musculosTrabajados:{'Primario1':'Cuadriceps',},
            comentario: comentario,  
            
        
        );
  }
factory Patron.extensionDeRodillaLigera2(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        
        ejercicios: [
        Ejercicio.extensionDeCuadricepsEnMaquina(),
        Ejercicio.prensaHorizontalEnMaquinaConPiesAbajo(),
        Ejercicio.prensaVerticalEnMaquina(),
       
      
        Ejercicio.sentadillaSissy(),
     
        Ejercicio.extensionDeCuadricepsConBandaElasticaDePie(),
        Ejercicio.extensionDeCuadricepsConBandaElasticaSentado(),
       

        ],
        
        objetivo: 'Trabajo del cuádriceps con un ejercicio ligero de extensión de rodilla.',
         musculosTrabajados:{'Primario1':'Cuadriceps',},
            comentario: comentario,    
        
        );
  }
  // FEMORAL 
  factory Patron.flexionDeRodilla(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        
        ejercicios: [Ejercicio.nordicCurl(),
        Ejercicio.femoralTumbadoConMancuerna(),
        Ejercicio.curlFemoralConToalla(),
        Ejercicio.curlFemoralSentadoEnMaquina(),
        Ejercicio.curlFemoralDePie(),
        Ejercicio.curlFemoralTumbado(),
        Ejercicio.nordicCurlAsistidoEnPolea(),
        Ejercicio.curlFemoralTumbadoConBandaElastica(),
        Ejercicio.curlFemoralDePieConBandaElastica()
        ],
        
        objetivo: 'Trabajo del fermoral con ejercicio basado en la flexión de rodilla',
         musculosTrabajados:{'Primario1':'Femoral',},
            comentario: comentario,   
            numeroPatron: 29 
        
        );
  }

   factory Patron.extensionDeCaderaRodillaFija(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
          Ejercicio.pesoMuertoRumanoConBandaElastica(),
        Ejercicio.pesoMuertoAUnaPiernaConBandaElastica(),
        Ejercicio.buenosDiasConBandaElastica(),
        Ejercicio.extensionDeCaderaPiernasRigidasConBandaElastica()
        ],
        ejercicios: [Ejercicio.pesoMuertoRumano(),
        Ejercicio.pesoMuertoAUnaPierna(),
        Ejercicio.buenosDias(),
        Ejercicio.pesoMuertoPiernasRigidasConMancuernas(),
        Ejercicio.pesoMuertoRumanoConMancuernas(),
        Ejercicio.pesoMuertoAUnaPiernaConMancuernas(),
        Ejercicio.hiperExtensionesReversas(),
        Ejercicio.hiperextensionesReversasEnMaquina(),
        Ejercicio.pullThroughPiernasRigidasEnPolea(),
        
        ],
        
        objetivo: 'Movimiento de extensión de cadera manteniendo rígidas o semirígidas las rodillas para priorizar el trabajo de femoral sobre el glúteo',
         musculosTrabajados:{'Primario1':'Femoral','Secundario1':'Gluteo'},
            comentario: comentario, 
            numeroPatron: 30   
        
        );
  }

 // GLUTEO 

   factory Patron.extensionDeCaderaConCargaAxial(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [ Ejercicio.sentadillaSumoConMancuerna(),Ejercicio.sentadillaSumoEnPolea(),Ejercicio.sentadillaSumoConBandasElasticas()],
        ejercicios: [Ejercicio.pesoMuertoSumo(),
        Ejercicio.sentadillaSumo(),
        
        Ejercicio.sentadillaSumoConMancuernaEntreBancos(),
        Ejercicio.sentadillaSumoEnMultipower(),
        
        
        
        ],
        
        objetivo: 'Ejercicio basado en la extensión de cadera con carga axial priorizando el trabajo de glúteo mayor sobre el femoral.',
         musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'},
            comentario: comentario,  
            numeroPatron: 31  
        
        );
  }


  factory Patron.extensionDeCaderaConCargaHorizontalPesado(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
      configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.hipThrustPesoCorporal(),Ejercicio.hipThrustConBandaElastica(),Ejercicio.hipThrustDeRodillasConBandaElastica()],
        ejercicios: [Ejercicio.hipThrust(),
        Ejercicio.puenteDeGluteosConBarra(),
        
        Ejercicio.hipThrustEnMaquina(),
        
        
        ],
        
        objetivo: 'Ejercicio basado en la extensión de cadera con carga horizontal priorizando el trabajo de glúteo mayor.',
         musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'},
            comentario: comentario, 
            numeroPatron: 32   
        
        );
  }

  factory Patron.extensionDeCaderaLigero(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [
          Ejercicio.frogHipThrust(),
        Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteo(),
        Ejercicio.puenteDeGluteosAUnaPierna(),
        Ejercicio.extensionDeGluteoAUnaPierna(),
        Ejercicio.patadaDeGluteoConBandaElastica()
        ],
        ejercicios: [Ejercicio.hipThrustAUnaPierna(),
        Ejercicio.sentadillaBulgaraEnfasisGluteo(),
         Ejercicio.stepUpEnMultipower(),
        Ejercicio.sentadillaBulgaraConMancuernasEnfasisGluteoGym(),
        
        Ejercicio.patadaDeGluteoConPesoCorporal(),
        Ejercicio.hiperextensionesReversasEnMultipower(),
        Ejercicio.patadaDeGluteoEnMaquina(),
        Ejercicio.patadaDeGluteoEnPolea(),
        Ejercicio.pullThroughEnPolea(),
        


        
        ],
        
        objetivo: 'Ejercicio ligero basado en la extensión de cadera para trabajar el glúteo mayor.',
         musculosTrabajados:{'Primario1':'Gluteo','Secundario1':'Femoral'},
            comentario: comentario,    
            numeroPatron: 33
        
        );
  }

  factory Patron.abduccionDeCadera(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.abduccionDeGluteoConPesoCorporal(),
          Ejercicio.abduccionDeGluteoConCaderaExtendida(),
          ],
        ejercicios: [
          Ejercicio.abduccionDeGluteoConBarra(),
          
          Ejercicio.abduccionesDeGluteoEnMaquina(),
          Ejercicio.abduccionDeGluteoEnMaquina(),
          Ejercicio.aduccionDeGluteoEnPolea(),
          Ejercicio.abduccionDeGluteoConGomaElastica(),
          Ejercicio.abduccionDeGluteoConGomaElasticaTumbado(),
          Ejercicio.abduccionDeGluteoConGomaElasticaDeRodillas(),
          Ejercicio.pasosLateralesConBandaElastica()

        
        ],
        
        objetivo: 'Ejercicio ligero basado en la abducción de cadera para trabajar el glúteo medio.',
         musculosTrabajados:{'Primario1':'Gluteo',},
            comentario: comentario,  
            numeroPatron: 34  
        
        );
  }
factory Patron.aduccionDeCadera(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.aduccionDeGluteoConGomaElastica(),Ejercicio.aduccionDeGluteoConPesoCorporal(),],
        ejercicios: [
          
          Ejercicio.aduccionesEnMaquina(),
          Ejercicio.aduccionDeGluteoEnPolea()

        
        ],
        
        objetivo: 'Ejercicio ligero basado en la aduccion de cadera para trabajar los aductores.',
         musculosTrabajados:{'Primario1':'Gluteo',},
            comentario: comentario,
            numeroPatron: 35    
        
        );
  }
  factory Patron.trapecio(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.remoAlMentonConBandaElastica(),
        Ejercicio.encogimientosDeTrapecioConBandaElastica()],
        ejercicios: [Ejercicio.remoAlMentonConBarraRecta(),
        Ejercicio.encogimientosDeTrapecioConBarra(),
        Ejercicio.remoAlMentonConMancuerna(),
        Ejercicio.encogimientosDeTrapecioConMancuerna(),
        Ejercicio.encogimientosDeTrapecioEnMultipower(),
        Ejercicio.remoAlMentonEnMultipower(),
        Ejercicio.remoAlMentonEnPolea(),
        Ejercicio.encogimientosDeTrapecioEnPolea()
        
        
        ],
        
        objetivo: 'Trabajo directo de los trapecios.',
         musculosTrabajados:{'Primario1':'Trapecio',},
            comentario: comentario,
            numeroPatron: 36    
        
        );
  }
  factory Patron.gemeloRodillaExtendida(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.gemeloDePieConCargaExterna(),Ejercicio.gemeloDePieConBandasElasticas(),Ejercicio.gemeloDePieConBandasElasticasAUnaPierna(),Ejercicio.gemeloSentadoConBandasElasticas()],
        ejercicios: [
          Ejercicio.gemeloDePieConBarra(),
          Ejercicio.gemeloDePieConMancuerna(),
          Ejercicio.gemeloDePieConMancuernaAUnaPierna(),
          Ejercicio.gemeloDePie(),
          Ejercicio.gemeloDePieEnMultipower(),
          Ejercicio.gemeloEnMaquina(),
          Ejercicio.gemeloEnPrensaInclinada()
        
        ],
        
        objetivo: 'Ejercicio de gemelo con la rodilla extendida para trabajar tanto el sóleo como el gastrocnemio.',
         musculosTrabajados:{'Primario1':'Gemelo',},
            comentario: comentario, 
            numeroPatron: 37   
        
        );
  }
   factory Patron.gemeloRodillaFlexionada(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        ejerciciosComodin: [Ejercicio.gemeloSentadoConCargaExterna(),Ejercicio.gemeloDePieConBandasElasticas(),Ejercicio.gemeloDePieConBandasElasticasAUnaPierna()],
        ejercicios: [
          Ejercicio.gemeloSentadoConBarra(),
          Ejercicio.gemeloSentadoConMancuernas(),
          Ejercicio.gemeloSentado(),
          Ejercicio.gemeloSentadoEnMultipower(),
          
        
        ],
        
        objetivo: 'Ejercicio de gemelo con la rodilla flexionada para enfatizar el trabajo del sóleo ya que al flexionar la rodilla desactivamos el gastrocnemio.' ,
        
         musculosTrabajados:{'Primario1':'Gemelo',},
            comentario: comentario,   
            numeroPatron: 38 
        
        );
  }

  factory Patron.flexionDeColumna(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        
        ejercicios: [
          Ejercicio.ruedaAbdominalConBarra(),
          Ejercicio.encogimientosAbdominales(),
          Ejercicio.encogimientosAbdominalesColgado(),
          Ejercicio.encogimientosAbdominalesEnFondos(),
          Ejercicio.encogimientosAbdominalesEnMaquina(),
          Ejercicio.absRoller(),
          Ejercicio.encogimientosAbdominalesEnPolea(),
          Ejercicio.ruedaAbdominal(),
          Ejercicio.planchaAbdominal()
        
        ],
        
        objetivo: 'Trabajo del recto abdominal con ejercicio de flexion de columna (o antiextensión de esta).',
         musculosTrabajados:{'Primario1':'Abs',},
            comentario: comentario,  
            numeroPatron: 39  
        
        );
  }
   factory Patron.rotacionDeTronco(Configuracion configuracion, {String comentario='No',ListaConfiguraciones listaConfiguraciones}) {
    return Patron(
         configuraciones: listaConfiguraciones,
        configuracion:configuracion,
        
        ejercicios: [
        Ejercicio.encogimientosAbdominalesColgadoConTorsion(),
        Ejercicio.encogimientosAbdominalesConTorsion(),
        Ejercicio.planchaLateral(),
        Ejercicio.pressPallof(),
        Ejercicio.lenador(),
        Ejercicio.lenadorConElasticos(),
        Ejercicio.pressPallofConBandaElastica()
        
        ],
        
        objetivo: 'Trabajo de los músculos oblicuos con ejercicio de rotación de tronco (o antirotación de este).',
         musculosTrabajados:{'Primario1':'Abs',},
            comentario: comentario,    
            numeroPatron: 40
        
        );
  } 
   factory Patron.empujeInclinadoSerieDescendente() {
    return Patron(
        configuracion: Configuracion.config1sD,
        ejercicios: [
          Ejercicio.pressInclinadoConBarraSerieDescendente(),
        
        ],
        
        objetivo:
            'Haz clavicular con ejercicio de empuje inclinado, menos enfasis en hombro frontal pero tambien.',
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}   
            
            );
  }
  factory Patron.empujeInclinadoDescansoPausa() {
    return Patron(
        configuracion: Configuracion.config1rP,
        ejercicios: [
          Ejercicio.pressInclinadoConBarraDescansoPausa(),
        
        ],
        ejercicioSeleccionado: Ejercicio.pressInclinadoConBarraDescansoPausa(),
        objetivo:
            'Haz clavicular con ejercicio de empuje inclinado, menos enfasis en hombro frontal pero tambien.',
         musculosTrabajados:{'Primario1':'Pecho','Secundario1':'Hombro Frontal','Secundario2':'Triceps'}   
            
            );
  }
  
 
  
  
 

  factory Patron.bicepsHombroExtensionTricepsHombroFlexion() {
    return Patron(
        configuracion: Configuracion.config1sA,
        ejercicios: [
          Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasSAconPressFrances()],
        ejercicioSeleccionado:
            Ejercicio.curlDeBicepsEnBancoInclinadoConMancuernasSAconPressFrances(),
        objetivo:
            'Ejercicio de biceps con el hombro en extension para trabajar cabeza larga + triceps',
            
        musculosTrabajados:{'Primario1':'Biceps','Primario2':'Triceps','Secundario1':'Espalda','Secundario3': 'Espalda','Secundario4':'Abs'}    
            );
  }
  
 



 
  
  Patron.fromJson(Map<String, dynamic> json) {
    configuracion = json['configuracion'] != null
        ? new Configuracion.fromJson(json['configuracion'])
        : null;
    if (json['ejercicios'] != null) {
      ejercicios = new List<Ejercicio>();
      json['ejercicios'].forEach((v) {
        ejercicios.add(new Ejercicio.fromJson(v));
      });
    }
    ejercicioSeleccionado = json['ejercicioSeleccionado'] != null
        ? new Ejercicio.fromJson(json['ejercicioSeleccionado'])
        : null;
    if (json['objetivo'] != null)
    objetivo = json['objetivo']; 
    if (json['musculosTrabajados'] != null)
    musculosTrabajados = json['musculosTrabajados'];
    if (json['comentario'] != null)
    comentario=json['comentario']; else comentario='No';
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.configuracion != null) {
      data['configuracion'] = this.configuracion.toJson();
    }
    // if (this.ejercicios != null) {
    //   data['ejercicios'] = this.ejercicios.map((v) => v.toJson()).toList();
    // }
    if (this.ejercicioSeleccionado != null) {
      data['ejercicioSeleccionado'] = this.ejercicioSeleccionado.toJson();
    }
    // data['objetivo'] = this.objetivo;
    // data['musculosTrabajados']= this.musculosTrabajados;
    data['comentario'] = (this.comentario!='No') ? this.comentario : null;

    return data;
  }
}
