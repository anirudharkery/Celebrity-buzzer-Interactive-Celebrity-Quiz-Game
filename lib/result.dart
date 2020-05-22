import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);
  
  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore == 8) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 5) {
    resultText = 'Great';
    }  else if (resultScore > 3 ) {
      resultText = 'Good';
    } else {
      resultText = 'Try Again';
    }
      return resultText;
  }

  @override
  Widget build(BuildContext context) {
      return  Center(
      child: Column(
        children: <Widget>[
                Text(
                 resultPhrase,
              style: TextStyle(fontSize: 56, fontWeight: FontWeight.w600,fontFamily: 'tahoma'),
              textAlign: TextAlign.center,
              ),
              FlatButton( child:
                 Text(
                  'Restart Quiz!',
                  ),
                
                  textColor: Colors.orange,
                onPressed: resetHandler,
         ),
        ],
      ),    
    );
  }
}
