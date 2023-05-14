import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_batch2/classSix.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:readmore/readmore.dart';

class Class7 extends StatefulWidget {
  const Class7({super.key});

  @override
  State<Class7> createState() => _Class7State();
}

class _Class7State extends State<Class7> {
  List<PageViewModel> pagesList = [
    PageViewModel(
        image: const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("images/login.webp"),
        ),
        titleWidget: const Text("data"),
        body:
            "Not all of the many parameters in each class are used in these examples. See Parameter Lists for the complete documentation for each class."),
    PageViewModel(
        image: const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("images/login.webp"),
        ),
        title: "Page 1",
        body:
            "Not all of the many parameters in each class are used in these examples. See Parameter Lists for the complete documentation for each class."),
    PageViewModel(
        image: const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("images/login.webp"),
        ),
        title: "Page 1",
        body:
            "Not all of the many parameters in each class are used in these examples. See Parameter Lists for the complete documentation for each class.")
  ];
  // ****************** Splash Screen *****************
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 3),
  //       () => Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const ClassSix())));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Class7"),
        ),

        // ************* Read More *************
        body: const ReadMoreText(
            trimCollapsedText: 'Expand',
            trimExpandedText: 'Show less',
            trimLines: 2,
            trimMode: TrimMode.Line,
            moreStyle: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.amber),
            lessStyle: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.amber),
            "Not all of the many parameters in each class are used in these examples. See ParametNot all of the many parameters in each class are used in these examples. See ParametvNot all of the many parameters in each class are used in these examples. See ParametNot all of the many parameters in each class are used in these examples. See ParametNot all of the many parameters in each class are used in these examples. See Paramet"));
  }
}

//  Image.asset("images/login.webp")


// ************* Introduction Screen ********************
// IntroductionScreen(
//         dotsDecorator: DotsDecorator(activeColor: Colors.purple),
//         globalBackgroundColor: Colors.amber,
//         showNextButton: false,
//         pages: pagesList,
//         done: const Text("Done"),
//         onDone: () {},
//         onSkip: () {},
//         next: const Text("Next"),
//       ),


// LEC 13:
// •	Splash screen
// •	Making introduction screen
// LEC 13:
// •	Read more 
// •	Commands
