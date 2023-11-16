import 'package:myreview/data/model/posts.dart';

class PostVM{
  late Postsmodel postmodel;
  PostVM({required this.postmodel});
  get id =>postmodel.id;
  get userId=>postmodel.userId;
  get title=>postmodel.title.toUpperCase();
  get body=>postmodel.body;
}