import './Ejercicio.dart';
import 'package:flutter/material.dart';



class CitiesService {
 List<Ejercicio>  listaEjercicios = [


];
 List<String>  listaEjerciciosString = [


];




 List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(listaEjerciciosString);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}