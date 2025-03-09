import 'package:flutter/material.dart';

class InfoDisplayWidget extends StatelessWidget {
  const InfoDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffeef7fe)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sell_sharp,
                      color: Color(0xff2d6eac),
                    ),
                    Text(
                      '  1,578m above sea level',
                      style: TextStyle(color: Color(0xff2d6eac)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    '''Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a helf-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.''')
              ],
            ),
          )),
    );
  }
}
