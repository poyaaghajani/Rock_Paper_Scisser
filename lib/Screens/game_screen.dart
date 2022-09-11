import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int left = 1;
  int right = 1;

  int leftPlayer = 0;
  int rightPlayer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'ROCK    PAPER    SCISSER',
          style: TextStyle(
            fontFamily: 'ps',
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      backgroundColor: Colors.cyanAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage('images/$left.png'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'player 1',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Text(
                            '$leftPlayer',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 50,
                            child: Divider(
                              color: Colors.amber,
                              thickness: 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('images/$right.png'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'player 2',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Text(
                            '$rightPlayer',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 50,
                            child: Divider(
                              color: Colors.amber,
                              thickness: 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 200),
              TextButton(
                style: TextButton.styleFrom(
                    minimumSize: Size(180, 40),
                    primary: Colors.amber,
                    backgroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    left = Random().nextInt(3) + 1;
                    right = Random().nextInt(3) + 1;
                    getPlayersScore();
                  });
                },
                child: Text(
                  'Start',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getPlayersScore() {
    if (left == 2 && right == 1) {
      leftPlayer++;
    } else if (left == 3 && right == 2) {
      leftPlayer++;
    } else if (left == 1 && right == 3) {
      leftPlayer++;
    } else if (right == 1 && left == 3) {
      rightPlayer++;
    } else if (right == 2 && left == 1) {
      rightPlayer++;
    } else if (right == 3 && left == 1) {
      rightPlayer++;
    } else {
      return;
    }
  }
}
