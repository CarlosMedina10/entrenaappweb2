import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../Screens/EstadisticasIndividuales/pie_chart_page2.dart';





class EstadisticasIndividuales extends StatefulWidget {

  final MesocicloEntrenamiento mesocicloEntrenamiento;
  
  EstadisticasIndividuales(this.mesocicloEntrenamiento,);
  @override
  _EstadisticasIndividualesState createState() => _EstadisticasIndividualesState();
}

class _EstadisticasIndividualesState extends State<EstadisticasIndividuales> {
   int page = 0;

  UpdateType updateType;

  

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color:  Color.fromRGBO(3, 9, 40,1) ,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
   
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Pecho')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Espalda')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Cuadriceps')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Femoral')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Gluteo')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Biceps')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Triceps')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Hombro Lateral')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Hombro Posterior')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Hombro Frontal')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Trapecio')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Gemelo')),
    Container(child: PieChartPage2(widget.mesocicloEntrenamiento, 'Abs')),
  ];
    return 
     
     WillPopScope(
    onWillPop: () async {
      BlocProvider.of<PaginaprincipalBloc>(context)
                .add(UserHaAcabadoDeVisualizar(false, false, false, false));
       return false;
    }, child:
     
      Scaffold(
       
    body: Stack(
      children: <Widget>[
        
        LiquidSwipe(
          pages: pages,
          fullTransitionValue: 300,
         
          enableLoop: true,
          positionSlideIcon: 0.9,
          slideIconWidget: Padding(
            padding: const EdgeInsets.only(right:50),
            child: Icon(Icons.arrow_back_ios,color:  Color.fromRGBO(3, 9, 40,1) ,),
          ),
          onPageChangeCallback: pageChangeCallback,
          currentUpdateTypeCallback: updateTypeCallback,
          waveType: WaveType.liquidReveal,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(11, _buildDot),
              ),
            ],
          ),
        ),
      ],
    ),
      ));
  }
pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
    });
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
}
}
