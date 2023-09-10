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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
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
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

