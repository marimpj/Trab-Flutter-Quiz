import 'package:flutter/material.dart';
import 'package:quizanimais/splash.dart';
import './quiz.dart';


void main(){
  runApp(
      new MaterialApp(
        home: new Splash(),
      )
  );
}

class AnimalQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AnimalQuizState();
  }
}

class AnimalQuizState extends State<AnimalQuiz>{
  var value = " ";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("The Weird Quiz"),
        backgroundColor: Colors.blue,
      ),


      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              "imagens/logo.png"
            ),
            TextField(
              onChanged: (text) {
                value = text;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF0F2FA),
                hintText: "Insira seu nome",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            new MaterialButton(
                height: 50.0,
                color: Color(0xFF6FC1F3),
                onPressed: startQuiz,
                child: new Text("Jogar",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            )
          ],
        ),
      ),


    );
  }

  void startQuiz(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Quiz(value)));
    });
  }
}