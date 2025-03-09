import 'package:flutter/material.dart';

class AboutInfoWidget extends StatelessWidget {
  const AboutInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(right: 230),
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17), color: Colors.blue),
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'About',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
