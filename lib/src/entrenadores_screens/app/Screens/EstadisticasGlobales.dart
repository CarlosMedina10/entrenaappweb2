import 'package:entrenaapp/blocs/B_PAGINA_PRINCIPAL/paginaprincipal_bloc.dart';
import 'package:entrenaapp/models/MesocicloEntrenamiento.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../Screens/EstadisticasGlobales/bar_chart_page.dart';
import '../Screens/EstadisticasGlobales/bar_chart_page2.dart';
import '../Screens/EstadisticasGlobales/pie_chart_page.dart';





class EstadisticasGlobales extends StatefulWidget {

  final MesocicloEntrenamiento mesocicloEntrenamiento;
  final int semanaEntrenamiento;
  EstadisticasGlobales(this.mesocicloEntrenamiento,this.semanaEntrenamiento);
  @override
  _EstadisticasGlobalesState createState() => _EstadisticasGlobalesState();
}

class _EstadisticasGlobalesState extends State<EstadisticasGlobales> {
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
          color: (page==1) ?  Color.fromRGBO(3, 9, 40,1) : Colors.grey[300],
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
    Container(child: BarChartPage(widget.mesocicloEntrenamiento, widget.semanaEntrenamiento)),
    Container(child: PieChartPage(widget.mesocicloEntrenamiento, widget.semanaEntrenamiento)),
    Container(child: BarChartPage2(widget.mesocicloEntrenamiento, widget.semanaEntrenamiento)),
  ];
    return 
    
    WillPopScope(
    onWillPop: () async {
      BlocProvider.of<PaginaprincipalBloc>(context)
                .add(UserHaAcabadoDeVisualizar(false, false, false, false));
       return false;
    }, child:
    Scaffold(
        body: Theme(
      data: Theme.of(context).copyWith(
     
     brightness: Brightness.dark,
    

      
      ),
        child: Builder(
        builder: (context) =>Stack(
          children: <Widget>[
            LiquidSwipe(
              pages: pages,
              fullTransitionValue: 300,
              
              enableLoop: true,
              positionSlideIcon: 0.9,
              slideIconWidget: Padding(
                padding: const EdgeInsets.only(right:50),
                child: Icon(Icons.arrow_back_ios,color: (page==1) ?  Color.fromRGBO(3, 9, 40,1) : Colors.grey[300] ,),
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
                    children: List<Widget>.generate(3, _buildDot),
                  ),
                ],
              ),
            ),
          ],
        ),),)
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
