import 'package:final_project/governorates.dart';
import 'package:final_project/q.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,),
      body:
      Column(
        children: [

         Stack(
           children: [
             Container(
                 height: MediaQuery.of(context).size.height * 0.25,
                 decoration: BoxDecoration(
                     color:Color(0xff439BE8),
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(50),
                       bottomRight: Radius.circular(50),
                     ))),
             Container(
               padding: EdgeInsets.only(top:120),
               margin: const EdgeInsets.symmetric(horizontal: 16,),
               child:
               Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                 const Text(
                   "Check Your Health",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 _questionWidget(),
                 _answerList(),
                 _nextButton(),
               ]),
             ),
           ],
         ),
          Row(
            children: [
              SizedBox(width: 190,),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Governorate();
                }));

              },
                child: Text("Suggested doctors for you"),
                style: TextButton.styleFrom(primary: Color(0xff439be8),textStyle:
                TextStyle(fontSize: 15,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),)
              )    ],
    ),
        ],
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const SizedBox(height: 70),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color(0xFF439BE8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
      )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      padding: EdgeInsets.only(top: 5),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 58,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Color(0xFF439BE8) : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.indigo,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }
  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      padding: EdgeInsets.only(top: 5),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color(0xFF439BE8),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.4) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "You may have leukemia " : "you are okay";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.pinkAccent : Colors.cyan),
      ),
      content: ElevatedButton(
        child: const Text("Restart"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}