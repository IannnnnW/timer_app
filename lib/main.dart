import 'package:flutter/material.dart';
import 'package:timer/utils.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Timer app', home: TimerHomePage());
  }
}

void emptyMethod() {}

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;
  const TimerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Work Timer'),
          backgroundColor: Colors.blueGrey,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Column(
            children: [
              Row(
              children: [
                Padding(padding: EdgeInsets.all(defaultPadding)),
                const Expanded(
                    child: ProductivityButton(
                  color: Color(0xff009688),
                  size: 10.0,
                  text: 'Work',
                )),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                const Expanded(
                    child: ProductivityButton(
                  color: Color(0xff607d8b),
                  size: 10.0,
                  text: 'Short Break',
                )),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                const Expanded(
                    child: ProductivityButton(
                  color: Color(0xff455A64),
                  size: 10.0,
                  text: 'Long Break',
                )),
                Padding(padding: EdgeInsets.all(defaultPadding)),
              ],
            ),
            Expanded(
              child: CircularPercentIndicator(
                radius: availableWidth/2,
                lineWidth: 10.0,
                percent: 1,
                center: const Text("30:00",
                ),
                progressColor:const Color(0xff009688),
                ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(defaultPadding)),
                const Expanded(
                    child: ProductivityButton(
                  color: Color(0xff212121),
                  size: 10.0,
                  text: 'Stop',
                )),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                const Expanded(
                    child: ProductivityButton(
                  color: Color(0xff009688),
                  size: 10.0,
                  text: 'Restart',
                )),
                Padding(padding: EdgeInsets.all(defaultPadding)),
              ],
            )
            ],
          );
        }));
  }
}
