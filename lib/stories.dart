import 'package:flutter/gestures.dart';
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
String vocabulary = '';
var words;

List<RichText> txt = [];

class _HareAndTortoiseState extends State<HareAndTortoise> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown.shade900,
        appBar: AppBar(

          backgroundColor: Colors.orange.shade200,
          title: Text('Hare and the tortoise',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Agne',
            fontWeight: FontWeight.bold,
            fontSize: 25.0,

          ),),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              img.elementAt(page),
              ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange.shade200,
                  enableFeedback: false,
                ),
                child: Text('Read Aloud',
                style: TextStyle(
                  color: Colors.black,
                ),),
                onPressed: () => speak(
                  str.elementAt(page),
                ),
              ),
              if (page == 0) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text: "Once there was a ",
                        ),
                        TextSpan(
                          text: "hare",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                vocabulary =
                                    "Hare: (noun) An animal like a large rabbit that can run very fast and has long ears";
                              });
                            },
                        ),
                        TextSpan(
                          text:
                              ", he felt very proud because he could run very fast.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (page == 1) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text: "One day, he saw a slow-moving ",
                        ),
                        TextSpan(
                          text: "tortoise.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                vocabulary =
                                    "Tortoise: (noun) an animal with a thick, hard shell that it can move its head and legs into for protection. It eats plants, moves very slowly, and sleeps during the winter.";
                              });
                            },
                        ),
                        TextSpan(
                          text:
                              " The hare laughed at the tortoise and said, “you’re moving very fast, shall we have a running race.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (page == 2) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text:
                              "The tortoise knew that he could not run fast like the hare. He thought, “Why not have some fun? I am not worried about failure. ” So he said, ” I am ready for the race” and accepted the challenge. The forest friends fixed a day for the race.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (page == 3) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text:
                          "On the fixed day, both the hare and the tortoise arrived at the starting point. They had to run up to a big banyan tree, nearly a mile away.  It was really a long distance for the tortoise. The race started. The tortoise began to move forward slowly.  The hare ran at great speed.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (page == 4) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text:
                          "After running for some time, the hare stopped to take a rest. The tortoise was far behind. “It will take him a long time to catch me”, thought the hare. He laid down under a shady tree and soon fell asleep. Meanwhile, the tortoise kept moving slowly and steadily. On the way, he saw the hare in deep sleep.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (page == 5) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text:
                          "He continued to move and finally reached the winning point.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (page == 6) ...[
                SizedBox(
                  width: 350.0,
                  height: 250.0,
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Agne',
                      ),
                      children: [
                        TextSpan(
                          text:
                          "The hare woke up after some time and began to run fast. But it was too late now. When he reached the end point, he saw the tortoise waiting, with a smiling face. The hare hung his face in shame.",

                        ),
                      ],
                    ),
                  ),
                ),
              ],
              Container(
                width: 400.0,
                height: 80.0,

                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(
                    color: Colors.yellow,
                  ),
                ),
                child: Text(
                  vocabulary,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15.0,
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
                        backgroundColor: Colors.orange.shade200,
                      ),
                      child: Icon(
                        Icons.navigate_before,
                        color: Colors.black,
                        size: 35.0,
                      ),
                      onPressed: () {
                        flutterTts.stop();
                        if (page == 0) {
                          Navigator.pop(context);
                        }
                        setState(() {
                          if (page != 0) page = page - 1;
                          vocabulary = '';
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange.shade200,
                      ),
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                        size: 35.0,
                      ),
                      onPressed: () {
                        flutterTts.stop();
                        if (page == 6) {
                          Navigator.pop(context);
                        }
                        setState(() {
                          vocabulary = '';
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
