import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class NewsTileWidgets extends StatelessWidget {
  NewsTileWidgets({super.key, required this.articalModel});
  ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              articalModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            articalModel.subtitle!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            articalModel.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(221, 148, 147, 147),
                fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
