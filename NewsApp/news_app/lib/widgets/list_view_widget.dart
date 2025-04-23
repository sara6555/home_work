import 'package:flutter/material.dart';
import 'package:news_app/constants/assets.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/categories_widget.dart';

class ListViewWidgets extends StatelessWidget {
  ListViewWidgets({super.key});

  List<CategoriesModel> categories_model = const [
    CategoriesModel(image: Assets.imagesEntertaiment, text: 'entertainment'),
    CategoriesModel(image: Assets.imagesGeneral, text: 'general'),
    CategoriesModel(image: Assets.imagesHealth, text: 'health'),
    CategoriesModel(image: Assets.imagesScience, text: 'science'),
    CategoriesModel(image: Assets.imagesSports, text: 'sports'),
    CategoriesModel(image: Assets.imagesTechnology, text: 'technology')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          itemCount: categories_model.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoriesWidgets(categoriesModel: categories_model[index]);
          }),
    );
  }
}
