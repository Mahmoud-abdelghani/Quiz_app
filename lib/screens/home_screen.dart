import 'package:flutter/material.dart';
import 'package:quiz_app/models/qustion_model.dart';
import 'package:quiz_app/widgets/answer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedAnswer = '';
  int score = 0;
  bool? trueSelection;
  int qustionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Simple QuiZ App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Question  ${qustionIndex + 1} / ${questions.length}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 105,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                      ),
                      width: 35,
                      height: 60,
                    ),
                    Text(
                      questions[qustionIndex].qTxt,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                        ),
                      ),
                      width: 35,
                      height: 60,
                    ),
                  ],
                ),
              ),

              Column(
                children: List.generate(
                  questions[qustionIndex].answers.length,
                  (index) => AnswerWidget(
                    txt: questions[qustionIndex].answers[index].answerTxt,
                    onTap: () {
                      selectedAnswer =
                          questions[qustionIndex].answers[index].answerTxt;
                      if (questions[qustionIndex].answers[index].isTrue) {
                        score++;
                        trueSelection = true;
                      } else {
                        trueSelection = false;
                      }
                      setState(() {});
                    },
                    isSelected:
                        selectedAnswer ==
                        questions[qustionIndex].answers[index].answerTxt,
                  ),
                ),
              ),

              MaterialButton(
                onPressed: () {
                  if (qustionIndex == questions.length - 1) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text('Score is $score of ${questions.length}'),
                        backgroundColor: Colors.white,
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              selectedAnswer = '';
                              qustionIndex = 0;
                              trueSelection = null;
                              score = 0;
                              Navigator.pop(context);
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              'Restart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    selectedAnswer = '';
                    trueSelection = null;
                    qustionIndex++;
                    setState(() {});
                  }
                },
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 130),

                child: Text(
                  qustionIndex == questions.length - 1 ? 'Submit' : 'N e x t',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),

          trueSelection == null
              ? SizedBox()
              : trueSelection == true
              ? Positioned(
                  top: 100,
                  left: 175,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/OIP (1).webp'),
                  ),
                )
              : Positioned(
                  top: 100,
                  left: 175,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      'assets/cross-check-symbol_875240-654.avif',
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
