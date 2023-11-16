import 'package:dio/dio.dart';
import 'package:myreview/constant/strings.dart';
import 'package:myreview/data/model/posts.dart';
import 'package:myreview/data/repository/posts_repository.dart';

class PostsAPI extends PostsRepository {
  late Dio dio;
  
  PostsAPI() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(milliseconds: 20 * 1000),
      receiveTimeout: const Duration(milliseconds: 20 * 1000),
    );
    dio = Dio(options);
  }
  @override
  Future<List<Postsmodel>> getAllposts() async{

    late List<Postsmodel> posts;
   try {
      Response response = await dio.get("posts");
     // print(response);
      List<dynamic> responseData = response.data;
      
      posts = responseData.map((post) => Postsmodel.fromJson(post)).toList();
    } catch (e) {
      return [];
    }
    // print(posts);
      return posts;
    
  }

  @override
  Future<Postsmodel> getpostById(int id) {
    // TODO: implement getpostById
    throw UnimplementedError();
  }

}








// class PostsAPI {
//   late Dio dio;

//   PostsAPI() {
//     BaseOptions options = BaseOptions(
//       baseUrl: baseUrl,
//       receiveDataWhenStatusError: true,
//       connectTimeout: const Duration(milliseconds: 20 * 1000),
//       receiveTimeout: const Duration(milliseconds: 20 * 1000),
//     );
//     dio = Dio(options);
//   }
//   Future<List<dynamic>> getAllposts() async {
//     try {
//       Response response = await dio.get("posts");
//    //  print(response.data.toString());
//       return response.data;
//     } catch (e) {
//     //  print(e.toString());
//       return [];
//     }
//   }
// }