import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_widget.dart';

class NewsBuilderListWidget extends StatefulWidget {
  final String category;
  const NewsBuilderListWidget({
    required this.category,
    super.key,
  });

  @override
  State<NewsBuilderListWidget> createState() => _NewsBuilderListWidgetState();
}

class _NewsBuilderListWidgetState extends State<NewsBuilderListWidget> {
  var future;
  List<ArticalModel> articals = [];
  @override
  void initState() {
    future = NewsService().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListWidgets(articals: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: Center(
              child: Text(
                "Error: ${snapshot.error}", // عرض رسالة الخطأ
                style: TextStyle(color: Colors.red),
              ),
            ));
          } else {
            return SliverToBoxAdapter(child: CircularProgressIndicator());
          }
        });
  }
}
