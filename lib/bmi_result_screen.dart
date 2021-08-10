

import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result;


  BmiResultScreen({@required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(10, 14, 33, 1),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(10, 14, 33, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'RESULT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(29, 30, 51, 1.0),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Text(
                            '${getBmiRange(result)}',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20.0,
                            ),
                          ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Text(
                            '$result',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                            ),
                          ),
                        ),

                        Text(
                          '${getBmiMessage(result)}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                color: Color.fromRGBO(235, 21, 85, 1.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'CALCULATE AGAIN ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  String getBmiRange(int result) {
    if(result<19)
      return 'UNDERWEIGHT';
    else if(result>=19 && result<25)
      return 'NORMAL';
    else if(result>=25 && result<30)
      return 'OVERWEIGHT';
    else
      return 'OBESE';
  }
  String getBmiMessage(int result) {
    if(result<19)
      return 'LOWER THAN NORMAL , EAT MORE';
    else if(result>=19 && result<25)
      return 'NORMAL BODY WEIGHT';
    else if(result>=25 && result<30)
      return 'HIGHER THAN NORMAL , DO MORE EXERCISES';
    else
      return 'HIGHER THAN NORMAL , DO MORE EXERCISES';
  }
}
