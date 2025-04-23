import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_view_builder_widget.dart';
import 'package:news_app/widgets/list_view_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'App',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: ListViewWidgets()),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 15,
              )),
              NewsBuilderListWidget(
                category: 'general',
              )
            ],
          ),
          /*child: Column(
        children: [
          ListViewWidgets(),
          SizedBox( height: 15,),
          Expanded(child: NewsListWidgets())
        ],
       ),*/
        ));
  }
}
