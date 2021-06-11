import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart' as http;

var pontosFinais = 0;
var qNumero = 0;
var quiz = new AnimaisQuiz();

class AnimaisQuiz{
  var imagens = [
    "logo", "logo", "logo", "logo"
  ];


  var questoes = [
    "Quanto tempo dura um sonho?",
    "Quantos quilômetros você consegue escrever com um lápis?",
    "Qual animal não sente o gosto de doce?",
    "Qual a velocidade de rotação da terra?",
  ];


  var escolhas = [
    ["40 a 45 minutos", "2 a 3 minutos", "5 a 7 minutos", "2 a 3 horas"],
    ["56 km", "15 km", "83 km", "27 km"],
    ["Vaca", "Golfinho", "Gato", "Rato"],
    ["3567.7 km/h", "754.8 km/h", "1000.5 km/h", "1674.4 km/h"]
  ];


  var respostaCorreta = [
    "2 a 3 minutos", "56 km", "Gato", "1674.4 km/h"
  ];
}

class Quiz extends StatefulWidget{
  var name = " ";
  Quiz (
      this.name,
      );

  @override
  State<StatefulWidget> createState() {
    return new QuizState(name);
  }
}

class QuizState extends State<Quiz> {
  var name = " ";
  QuizState (
      this.name
      );

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new Text("Questao ${qNumero + 1} de ${quiz.questoes.length}",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),

                      new Text("Pontos: $pontosFinais",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),)
                    ],
                  ),
                ),


                //image
                new Padding(padding: EdgeInsets.all(10.0)),

                new Image.asset(
                  "imagens/${quiz.imagens[qNumero]}.png",
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text(quiz.questoes[qNumero],
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Color(0xFF2196F3),
                      onPressed: ()async{
                        if(quiz.escolhas[qNumero][0] == quiz.respostaCorreta[qNumero]){
                          debugPrint("Correto");
                          pontosFinais++;
                          var response = await http.post(Uri.parse('https://7c2bad50.us-south.apigw.appdomain.cloud/api/placar'),
                              body:{'usuario': name});

                          if(response.statusCode== 200) {
                            print(response.body);
                          } else{
                            throw Exception('Erro ao obter token!');
                          }

                        }else{
                          debugPrint("Errado");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.escolhas[qNumero][0],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                    //button 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Color(0xFF2196F3),
                      onPressed: ()async{

                        if(quiz.escolhas[qNumero][1] == quiz.respostaCorreta[qNumero]){
                          debugPrint("Correto");
                          pontosFinais++;
                          var response = await http.post(Uri.parse('https://7c2bad50.us-south.apigw.appdomain.cloud/api/placar'),
                              body:{'usuario': name});

                          if(response.statusCode== 200) {
                            print(response.body);
                          } else{
                            throw Exception('Erro ao obter token!');
                          }
                        }else{
                          debugPrint("Errado");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.escolhas[qNumero][1],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                  ],
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Color(0xFF2196F3),
                      onPressed: ()async{

                        if(quiz.escolhas[qNumero][2] == quiz.respostaCorreta[qNumero]){
                          debugPrint("Correto");
                          pontosFinais++;
                          var response = await http.post(Uri.parse('https://7c2bad50.us-south.apigw.appdomain.cloud/api/placar'),
                              body:{'usuario': name});

                          if(response.statusCode== 200) {
                            print(response.body);
                          } else{
                            throw Exception('Erro ao obter token!');
                          }
                        }else{
                          debugPrint("Errado");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.escolhas[qNumero][2],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                    //button 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Color(0xFF2196F3),
                      onPressed: ()async{

                        if(quiz.escolhas[qNumero][3] == quiz.respostaCorreta[qNumero]){
                          debugPrint("Correto");
                          pontosFinais++;
                          var response = await http.post(Uri.parse('https://7c2bad50.us-south.apigw.appdomain.cloud/api/placar'),
                              body:{'usuario': name});

                          if(response.statusCode== 200) {
                            print(response.body);
                          } else{
                            throw Exception('Erro ao obter token!');
                          }
                        }else{
                          debugPrint("Errado");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.escolhas[qNumero][3],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                  ],
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child:  new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: resetQuiz,
                        child: new Text("Sair",
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white
                          ),)
                    )
                ),




              ],
            ),
          ),

        )
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      pontosFinais = 0;
      qNumero = 0;
    });
  }



  void updateQuestion(){
    setState(() {
      if(qNumero == quiz.questoes.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Summary(score: pontosFinais,)));

      }else{
        qNumero++;
      }
    });
  }
}


class Summary extends StatelessWidget{
  final int score;
  Summary({Key? key, @required this.score = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Pontos finais: $score",
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.red,
                onPressed: (){
                  qNumero = 0;
                  pontosFinais = 0;
                  Navigator.pop(context);
                },
                child: new Text("Jogar Novamente",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)

            ],
          ),
        ),


      ),
    );
  }


}