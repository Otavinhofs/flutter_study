import 'package:flutter/material.dart';
import 'package:flutter_study/model/exercise_model.dart';
import 'package:flutter_study/model/feeling_model.dart';

class ScreenExercise extends StatelessWidget {
  ScreenExercise({super.key});

  final ExersiceModel exersiceModel = ExersiceModel(
    id: "id",
    howToMake: "puxe a maquina para o peito",
    name: "Remada baixa",
    training: "treino A",
  );

  final List<FeelingModel> feelingModel = [
    FeelingModel(id: "", data: "2024-01-04", feeling: "pouca ativação"),
    FeelingModel(id: "", data: "2024-01-04", feeling: "pouca ativação"),
    FeelingModel(id: "", data: "2024-01-04", feeling: "pouca ativação"),
    FeelingModel(id: "", data: "2024-01-04", feeling: "pouca ativação"),
    FeelingModel(id: "", data: "2024-01-04", feeling: "pouca ativação")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("${exersiceModel.name} - ${exersiceModel.training}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print("cliclou");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Enviar foto"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "Como fazer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              exersiceModel.howToMake,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Text(
              "Como estou me sentindo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(feelingModel.length, (index) {
                FeelingModel feelingNow = feelingModel[index];
                return Text(
                  feelingNow.feeling,
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
