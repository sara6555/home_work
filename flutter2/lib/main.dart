import 'package:flutter/material.dart';
import 'package:flutter2/widgets/about_info_widget.dart';
import 'package:flutter2/widgets/campground_info_card.dart';
import 'package:flutter2/widgets/image_display_widget.dart';
import 'package:flutter2/widgets/info_display_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFFe8e2f0),
          title: const Row(
            children: [
              Text('Travel Destination'),
              SizedBox(
                width: 80,
              ),
              Icon(Icons.favorite_border_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.share)
            ],
          ),
        ),
        body: ListView(children: const [
          ImageDisplayWidget(),
          CampgroundInfoCard(),
          AboutInfoWidget(),
          InfoDisplayWidget()
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xffebddff),
          child: const Icon(
            Icons.save_sharp,
            color: Color(0xff6f5e92),
          ),
        ),
      ),
    );
  }
}





  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are



 
