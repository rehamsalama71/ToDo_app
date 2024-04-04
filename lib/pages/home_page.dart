import 'package:flutter/material.dart';
import 'package:tecno_notes_app/widgets/custom_app_Bar.dart';
import 'package:tecno_notes_app/widgets/custom_button.dart';
import 'package:tecno_notes_app/widgets/custom_upper_container_home.dart';
import 'package:tecno_notes_app/widgets/custom_lower_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String text = "lists";

  final double fontSize = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color(0xffF27C7A),
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              text: text,
              fontSize: fontSize,
              icon: const Icon(Icons.search),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomUpperContainer(
                icon1: const Icon(Icons.sunny),
                text1: 'My Day',
                text2: '3 tasks',
                icon2: const Icon(Icons.calendar_month),
                text3: 'Upcoming',
                text4: '5 tasks',
                icon3: const Icon(Icons.star),
                text5: 'Important',
                text6: '2 tasks'),
            const SizedBox(
              height: 20,
            ),
            CustomLowerContainer(
                text1: '02 tasks',
                text2: '02 tasks',
                text3: '02 tasks',
                text4: '02 tasks'),
            // CustomButton(
            //   text: 'Details',
            // ),
          ],
        ),
      ),
    );
  }
}
