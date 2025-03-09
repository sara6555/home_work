import 'package:flutter/material.dart';

class ImageDisplayWidget extends StatelessWidget {
  const ImageDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 220, top: 150, bottom: 18, right: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color.fromARGB(255, 68, 83, 79)),
            child: const Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Gallery',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
