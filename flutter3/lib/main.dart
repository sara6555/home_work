import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> colors = [Colors.blue, Colors.pink, Colors.purple, Colors.yellow];
  Color? currentColor;
  int currentColorIndex = 0;
  int increment = 19;
  double fontSize = 30;
  @override
  void initState() {
    currentColor = Colors.orange;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: currentColor,
          title: Text(
            'Interactive UI Demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, currentColor!],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentColor),
                  child: Center(
                    child: Text(
                      'Odd: $increment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 100,
                  width: 230,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Counter Value',
                  style: TextStyle(color: currentColor),
                ),
                Text(
                  '$increment',
                  style: TextStyle(
                      color: currentColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        setState(() {
                          currentColorIndex =
                              (currentColorIndex + 1) % colors.length;
                          currentColor = colors[currentColorIndex];
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.color_lens,
                            color: Colors.purple,
                          ),
                          Text(
                            'Change Color',
                            style: TextStyle(color: currentColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (fontSize == 30) {
                            fontSize = 40;
                          } else {
                            fontSize = 30;
                          }
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.text_format_outlined,
                            color: Colors.purple,
                          ),
                          Text(
                            'Change Size',
                            style: TextStyle(color: currentColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      increment++;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 210,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: currentColor),
                    width: 130,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Increment',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
