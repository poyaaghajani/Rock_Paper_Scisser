import 'package:flutter/material.dart';
import 'package:rock_paper_scisser/Screens/game_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 230),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.content_cut,
                    size: 90,
                  ),
                  Text(
                    'ROCK  PAPER  SCISSER',
                    style: TextStyle(fontFamily: 'ps', fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 230),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  primary: Colors.amber,
                  minimumSize: Size(180, 40),
                  side: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamePage(),
                    ),
                  );
                },
                child: Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  primary: Colors.amber,
                  minimumSize: Size(180, 40),
                  side: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Exit',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
