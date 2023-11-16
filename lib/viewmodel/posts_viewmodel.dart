// import 'package:myreview/data/model/posts.dart';
// import 'package:myreview/data/repository/posts_repository.dart';
import 'package:myreview/data/api_services/api.dart';
import 'package:myreview/data/model/posts.dart';
import 'package:myreview/viewmodel/post_viewmodel.dart';

import '../data/repository/posts_repository.dart';

class PostsMV{
  String titleAppBar="Posts";
  String content="Hello User in Posts Page";
  PostsRepository? postReo;
  PostsMV({required this.postReo});
  Future<List<PostVM>> fetchposts()async{
    List<Postsmodel>list=await postReo!.getAllposts();
    return list.map((post) => PostVM(postmodel: post)).toList();
  }
}