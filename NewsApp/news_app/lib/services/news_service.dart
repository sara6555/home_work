import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  final dio = Dio();
  Future<List<ArticalModel>> getNews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=ab8b6676368e476bb2dfd5f5a332390d&category=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articals = jsonData['articles'];
    List<ArticalModel> articalesList = [];
    for (var artical in articals) {
      ArticalModel articalModel = ArticalModel(
          image: artical['urlToImage'],
          title: artical['title'],
          subtitle: artical['description']);

      articalesList.add(articalModel);
    }
    return articalesList;
  }
}
