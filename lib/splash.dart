import 'package:flutter/material.dart';
import 'package:quizanimais/main.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( //gerenciador de layout
        body: SplashScreen(
            seconds: 5,
            backgroundColor: Color(0xFF6FC1F3),
            image: Image.asset('imagens/logo.png', fit: BoxFit.fill),
            photoSize: 100.0,
            navigateAfterSeconds: AnimalQuiz()
        )
    );
  }
}