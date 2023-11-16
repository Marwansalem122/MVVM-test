
import 'package:myreview/data/api_services/api.dart';
import 'package:myreview/data/model/posts.dart';

abstract class PostsRepository{
   Future<List<Postsmodel>> getAllposts() ;
   Future<Postsmodel> getpostById(int id) ;

}
