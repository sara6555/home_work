import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoriesWidgets extends StatelessWidget {
  CategoriesWidgets({super.key, required this.categoriesModel});
  CategoriesModel categoriesModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: categoriesModel.text!,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(categoriesModel.image), fit: BoxFit.fill),
          ),
          width: 200,
          height: 150,
          child: Center(
              child: Text(
            categoriesModel.text!,
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
