import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Container(
          width: 330,
          height: 450,
          color: const Color(0xFFBBDEFA),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainer(
                    text: 'A',
                    color: Colors.red,
                    height: 40,
                    width: 70,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomContainer(
                    text: 'B',
                    color: Colors.orange,
                    height: 40,
                    width: 70,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomContainer(
                    text: 'C',
                    color: Colors.yellow,
                    height: 40,
                    width: 70,
                  ),
                ],
              ),
              Container(
                height: 170,
                width: 295,
                color: const Color(0XFFc5cae8),
                child: Column(
                  children: [
                    const Text(
                      'Fancy Section',
                      style: TextStyle(
                          color: Color(0xff4c55b1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: '1',
                          color: const Color(0xFF7e57c2),
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomContainer(
                          text: '2',
                          color: const Color(0XFFa947bc),
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomContainer(
                          text: '3',
                          color: const Color(0XFF9675ce),
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: '4',
                          color: const Color(0XFFb968c7),
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomContainer(
                          text: '5',
                          color: const Color(0XFFb39ddb),
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomContainer(
                          text: '6',
                          color: const Color(0XFFcf93d9),
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Info Cards',
                style: TextStyle(
                    color: Color(0xff3f55a9),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpecialCard(
                    firstText: '23',
                    secondText: 'Active',
                    fontSize: 15,
                    color: const Color(0XFF29a598),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SpecialCard(
                    firstText: '15',
                    secondText: 'Pending',
                    fontSize: 15,
                    color: const Color(0XFFe9b622),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SpecialCard(
                    firstText: '7',
                    secondText: 'Completed',
                    fontSize: 12,
                    color: const Color(0XFF4a974d),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class SpecialCard extends StatelessWidget {
  String firstText;
  String secondText;
  Color color;
  double fontSize;
  SpecialCard(
      {required this.firstText,
      required this.secondText,
      required this.color,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            secondText,
            style: TextStyle(color: color, fontSize: fontSize),
          ),
        ],
      ),
      height: 90,
      width: 85,
      color: Colors.white,
    );
  }
}

class CustomContainer extends StatelessWidget {
  String text;
  Color color;
  double height;
  double width;

  CustomContainer(
      {super.key,
      required this.text,
      required this.color,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      height: height,
      width: width,
      color: color,
    );
  }
}
