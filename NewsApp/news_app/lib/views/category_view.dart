import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_view_builder_widget.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      NewsBuilderListWidget(
        category: category,
      ),
    ]));
  }
}
