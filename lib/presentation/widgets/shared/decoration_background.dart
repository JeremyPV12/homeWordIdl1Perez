import 'package:flutter/material.dart';

decorationBackground() {
    return BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0,0.5,0.5,1],
          colors: [Colors.blue.shade900, Colors.deepPurpleAccent.shade200,  Colors.white, Colors.white]
          )
      );
  }