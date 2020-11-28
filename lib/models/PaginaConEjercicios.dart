import './Ejercicio.dart';
import 'package:flutter/material.dart';



class CitiesService {
 List<Ejercicio>  listaEjercicios = [
 Ejercicio.pressBanca(),
          Ejercicio.pressPlanoConMancuernas(),
          
          Ejercicio.fondosDePechoEnBarra(),
          Ejercicio.fondosDePechoEnBarrasParalelas(),
          Ejercicio.pressVerticalEnMaquinaAgarreNeutro(),
          Ejercicio.pressVerticalEnMaquina(),
          Ejercicio.pressPlanoEnMultipower(),

];
 List<String>  listaEjerciciosString = [
 Ejercicio.pressBanca().nombre,
          Ejercicio.pressPlanoConMancuernas().nombre,
          
          Ejercicio.fondosDePechoEnBarra().nombre,
          Ejercicio.fondosDePechoEnBarrasParalelas().nombre,
          Ejercicio.pressVerticalEnMaquinaAgarreNeutro().nombre,
          Ejercicio.pressVerticalEnMaquina().nombre,
          Ejercicio.pressPlanoEnMultipower().nombre,

];




 List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(listaEjerciciosString);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}