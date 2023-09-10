import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'stories.dart';

void main() {
  runApp(
    MaterialApp(
      home: PictureStoryApp(),
    ),
  );
}

class PictureStoryApp extends StatefulWidget {
  const PictureStoryApp({super.key});

  @override
  State<PictureStoryApp> createState() => _PictureStoryAppState();
}

class _PictureStoryAppState extends State<PictureStoryApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
              child: Container(
                color: Colors.orange.shade200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HareAndTortoise()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/hareandtortoise.jpg",
                          width: 200.0,
                          height: 100.0,
                        ),
                        Text(
                          "Hare and Tortoise",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Agne',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              child: Container(
                color: Colors.orange.shade200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HareAndTortoise()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/The-Honest-Woodcutter.jpg",
                          width: 200.0,
                          height: 100.0,
                        ),
                        Text(
                          "Honest Woodcutter",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Agne',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              child: Container(
                color: Colors.orange.shade200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HareAndTortoise()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/The-lion-and-the-mouse.png",
                          width: 200.0,
                          height: 100.0,
                        ),
                        Text(
                          "The Lion and Mouse",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Agne',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
