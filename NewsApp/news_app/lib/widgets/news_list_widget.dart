import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile_widget.dart';

class NewsListWidgets extends StatelessWidget {
  List<ArticalModel> articals;
  NewsListWidgets({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articals.length,
          (context, index) {
        return NewsTileWidgets(articalModel: articals[index]);
      }),
    );
  }
}
