import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './Question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

//void main() {
  //runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const   [
      {
        'questionText':  'Which mathematical symbol is not the name of an Ed Sheeran album?',
         'answers': [
           {'text':'+', 'score':0}, 
           {'text': 'x','score': 0}, 
           {'text': 'Divide','score': 0},
           {'text': '-','score': 1},
           ],

      },
      {
        'questionText':  'Who sings Call Me Maybe?',
         'answers': [
           {'text':'Taylor Swift', 'score':0}, 
           {'text': 'Ariana Grande','score': 0}, 
           {'text': 'Carly Rey Jepson','score': 1}, 
           {'text': 'Drake','score': 0},
           
           ],
            
      },
      {
        'questionText':  'Which Actor Starred in the movie "Drive"?',
         'answers': [
           {'text':'Leonardo Di caprio', 'score':0}, 
           {'text': 'jhonny Depp','score': 0}, 
           {'text': 'Ryan Gosling','score': 1},
           {'text': 'Ryan Reynolds','score': 0},
          {'text': 'Ashton Kutcher','score': 0},
         ],
      },
      {
        'questionText':  'Which Actress Starred in the movie "Speed"?',
         'answers': [
          {'text':'Sandra Bullock', 'score':1}, 
           {'text': 'Anne Hathway','score': 0}, 
           {'text': 'Saroise Ranon','score': 0},
           {'text': 'Natalie portman','score': 0},
           {'text': 'Katherine Hegi','score': 0}
           ],
      },
       {
        'questionText':  'What are you gonna hear Katy Perry do?',
         'answers': [
          {'text':'Roar', 'score':1}, 
           {'text': 'Shout','score': 0}, 
           {'text': 'Scream','score': 0},
           {'text': 'Yell','score': 0},
           {'text': 'Laugh','score': 0}
           ],
      },
       {
        'questionText':  'In which video does Michael Jackson play a zombie?',
         'answers': [
          {'text':'Bad', 'score':0}, 
           {'text': 'Beat it','score': 0}, 
           {'text': 'Thriller','score': 1},
           {'text': 'Speed Demon','score': 0},
           {'text': 'Heat','score': 0}
           ],
      },
       {
        'questionText':  'Which singer won ALBUM OF THE YEAR in 52nd Annual GRAMMY Awards?',
         'answers': [
           {'text':'Taylor Swift', 'score':1}, 
           {'text': 'Ariana Grande','score': 0}, 
           {'text': 'Carly Rey Jepson','score': 0}, 
           {'text': 'Drake','score': 0},
           {'text': 'Beyonce','score': 0},
           ],
      },
       {
        'questionText':  'Which of the following Legendary Musicians Had indian origins?',
         'answers': [
          {'text':'Prince', 'score':0}, 
           {'text': 'Freddie Mercury','score': 1}, 
           {'text': 'Michael Jackson','score':0},
           {'text': 'Sting','score': 0},
           {'text': 'Madonna','score': 0}
           ],
      },
   ];
       var _questionIndex=0;
       var _totalScore = 0;

       void _resetQuiz() {
         setState(() {
           _questionIndex = 0;
           _totalScore = 0;
         });
       }
 void _answerQuestion(int score){
  // var aBool = true;
   //aBool = false;

   _totalScore = _totalScore + score;
   
   setState(() {
   _questionIndex = _questionIndex+1;
});
   print(_questionIndex);
   if (_questionIndex < _questions.length) {
       print('We have moree...');
   } else {
     print('No more questions!');
   }
    }
 
  @override
  Widget build(BuildContext context) {
     
  //var dummy = const ['Hello'];
//dummy.add('Max');
//print(dummy);
//dummy = [];
//questions = [];//
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('The Quiz App'),

      ),
      body:  
        _questionIndex < _questions.length 
      ? Quiz(
        answerQuestion: _answerQuestion, 
        questionIndex: _questionIndex, 
        questions: _questions,
        )
      :Result(_totalScore,_resetQuiz),
      ),
    );
  }
}