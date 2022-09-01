import 'package:flutter/material.dart';
import 'package:renaultest/modal.dart';
import 'package:renaultest/result.dart';
import 'package:renaultest/widget/options.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 183, 0),
        title: const Text(
          "Renault  Test",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                'assets/r.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: questions.length,
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                final questione = questions[index];
                return buildQuestion(questione);
              }),
            ),
          ),
          _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Questions numéro $_questionNumber/${questions.length}',
                  style: const TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 130.0,
            margin:
                const EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                question.text,
                style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 40.0),
        primary: const Color.fromARGB(255, 255, 183, 0),
      ),
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(score: _score),
            ),
          );
        }
      },
      child: Text(_questionNumber < questions.length
          ? "Question suivantes"
          : "Voir les résultats"),
    );
  }
}
