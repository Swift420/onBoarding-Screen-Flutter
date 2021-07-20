import 'package:boardingscreen/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selected = 0;

  Widget customRadioButton(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected == index) ? Colors.orange : Colors.blueGrey,
        ),
      ),
      style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(
              color: (selected == index) ? Colors.orange : Colors.blueGrey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: IntroductionScreen(
            pages: [
              PageViewModel(
                title: "Welcome",
                body: "You Miss 100% of the shots you don't take.",
                image: Image.asset("assets/images/Fitness tracker-bro.png"),
              ),
              PageViewModel(
                title: "Which sport do you prefer?",
                bodyWidget: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customRadioButton("Football", 1),
                      customRadioButton("BasketBall", 2),
                      customRadioButton("F1", 3),
                    ],
                  ),
                ),
                image:
                    Image.asset("assets/images/Fitness stats-rafiki (1).png"),
              ),
              PageViewModel(
                title: "Please Like and Sub",
                body: ":)",
                image: Image.asset("assets/images/Fitness stats-bro.png"),
              ),
            ],
            done: Text("Continue"),
            onDone: () {
              // Get.to(SecondPageRoute()); -> this will allow u to go back to the boarding screen from the second screen

              Get.off(
                  SecondPageRoute()); // This will take you to the second screen
              // but it wont allow you to go back to the boarding screen
            },
            skip: Text("Skip"),
            showSkipButton: true,
            showDoneButton: true,
            showNextButton: true,
            next: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
