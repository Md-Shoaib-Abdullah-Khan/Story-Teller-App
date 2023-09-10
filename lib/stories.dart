import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HareAndTortoise extends StatefulWidget {
  const HareAndTortoise({super.key});

  @override
  State<HareAndTortoise> createState() => _HareAndTortoiseState();
}

final FlutterTts flutterTts = FlutterTts();

speak(String s) async {
  await flutterTts.setLanguage("en-US");
  await flutterTts.setPitch(1.0);
  await flutterTts.setVolume(1.0);
  await flutterTts.setSpeechRate(.5);
  await flutterTts.speak(s);
}

var page = 0;

List<Image> img = [
  Image.asset('assets/1.png'),
  Image.asset('assets/2.png'),
  Image.asset('assets/3.png'),
  Image.asset('assets/4.png'),
  Image.asset('assets/5.png'),
  Image.asset('assets/6.png'),
  Image.asset('assets/7.png'),
];
List<String> str = [
  "Once there was a hare, he felt very proud because he could run very fast.",
  "One day, he saw a slow-moving tortoise. The hare laughed at the tortoise and said, “you’re moving very fast, shall we have a running race.",
  "The tortoise knew that he could not run fast like the hare. He thought, “Why not have some fun? I am not worried about failure. ” So he said, ” I am ready for the race” and accepted the challenge. The forest friends fixed a day for the race.",
  "On the fixed day, both the hare and the tortoise arrived at the starting point. They had to run up to a big banyan tree, nearly a mile away.  It was really a long distance for the tortoise. The race started. The tortoise began to move forward slowly.  The hare ran at great speed.",
  "After running for some time, the hare stopped to take a rest. The tortoise was far behind. “It will take him a long time to catch me”, thought the hare. He laid down under a shady tree and soon fell asleep. Meanwhile, the tortoise kept moving slowly and steadily. On the way, he saw the hare in deep sleep.",
  "He continued to move and finally reached the winning point.",
  "The hare woke up after some time and began to run fast. But it was too late now. When he reached the end point, he saw the tortoise waiting, with a smiling face. The hare hung his face in shame.",
  "proud",
];
var words;

class _HareAndTortoiseState extends State<HareAndTortoise> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: Text('Hare and the tortoise'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              img.elementAt(page),
              ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  enableFeedback: false,
                ),
                child: Text('Read Aloud'),
                onPressed: () => speak(
                  str.elementAt(page),
                ),
              ),
              SizedBox(
                key: UniqueKey(),
                width: 350.0,
                height: 300.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Agne',
                    //fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        str.elementAt(page),
                      ),
                    ],
                    totalRepeatCount: 1,
                    onTap: () {
                      print(str.elementAt(page).indexOf(' he '));
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      child: Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        flutterTts.stop();
                        if (page == 0) {
                          Navigator.pop(context);
                        }
                        setState(() {
                          if (page != 0) page = page - 1;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        flutterTts.stop();
                        if (page == 6) {
                          Navigator.pop(context);
                        }
                        setState(() {
                          if (page != 6)
                            page = page + 1;
                          else
                            page = 0;
                          words = str.elementAt(page).split(' ');
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
